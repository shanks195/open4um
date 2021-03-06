package tp.kits3.open4um.daoimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.dao.CategoryToanDao;
import tp.kits3.open4um.vo.Category;
@Repository
public class CategoryToanImpl  implements CategoryToanDao{
	public List<Category> selectAll() {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		List<Category> list =  session.selectList("mappers.categoryMapper.selectAll");
		session.close();
		return list;
	}
}
