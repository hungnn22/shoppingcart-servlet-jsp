package poly.controller.site;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.commons.beanutils.BeanUtils;

import poly.dao.UserDAO;
import poly.domain.LoginForm;
import poly.entity.User;
import poly.util.CookieUtil;
import poly.util.HashUtil;
import poly.util.PageInfo;
import poly.util.PageType;
import poly.util.SessionUtil;

/**
 * Servlet implementation class SiteLoginController
 */
@WebServlet(urlPatterns = {"/login", "/regis", "forgot_password"})
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		userDAO = new UserDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/sites/users/login.jsp").forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user1 = request.getParameter("username");
		System.out.println(user1);
		LoginForm form = new LoginForm();
		try {
			BeanUtils.populate(form, request.getParameterMap());
			User user = userDAO.findById(form.getUsername());

			if (user != null && HashUtil.verify(form.getPassword(), user.getPassword())) {
				SessionUtil.add(request, "username", user.getUsername());
				request.getSession().setAttribute("userLogined", user);
				CookieUtil.add("username", user.getUsername(), form.isRem() ? 24 : 0, response);
				if (user.getAdmin() == 1) {
					response.sendRedirect(request.getContextPath() + "/admin/users");
				} else {
					request.getRequestDispatcher("/sites/home").forward(request, response);
				}
			} else {
				request.setAttribute("user", user);
				request.setAttribute("error", "Invalid Username or Password");
				request.getRequestDispatcher("/sites/users/login.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
