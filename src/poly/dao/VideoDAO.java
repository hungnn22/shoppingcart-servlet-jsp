package poly.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import poly.entity.Video;

public class VideoDAO extends BaseDAO<Video, String> {

	@Override
	public boolean create(Video entity) {
		// TODO Auto-generated method stub
		return super.create(entity);
	}

	@Override
	public boolean update(Video entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}

	@Override
	public boolean delete(Video entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}

	@Override
	public List<Video> getAll(String name) {
		// TODO Auto-generated method stub
		return super.getAll(name);
	}

	@Override
	public Video findById(String id) {
		// TODO Auto-generated method stub
		return this.session.get(Video.class, id);
	}
	
	public List<Video> getActiveVideo() {
		String sql = "from Video v where v.active = 1";
		TypedQuery<Video> query = this.session.createQuery(sql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}

}
