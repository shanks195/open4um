package tp.kits3.open4um.dao;

/**
 * @Author: Huu Nghia
 */
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.vo.Category;

@Repository
public class CategoryDAO {
	
	
	public List<Category> selectCategoryName() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Category> list =  session.selectList("mappers.categoryMapper.selectCategoryname");
		session.close();
		return list;
	}

	public List<Category> selectOneC(int idC) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Category> list =  session.selectList("mappers.categoryMapper.selectOne", idC);
		session.commit();
		session.close();
		return list;
	}
	
	//Chi upload
	public List<Category> selectCategoryBySource() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Category> list =  session.selectList("mappers.categoryMapper.selectCategoryBySource");
		session.close();
		return list;
	}

	public List<Category> selectAllC() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Category> listc =  session.selectList("mappers.categoryMapper.selectAllC");
		session.close();
		return listc;
	}
	
	
	

}
