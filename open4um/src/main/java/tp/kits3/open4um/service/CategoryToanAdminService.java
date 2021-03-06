package tp.kits3.open4um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.dao.CategoryDAO;
import tp.kits3.open4um.daoimpl.CategoryToanImpl;
import tp.kits3.open4um.vo.Category;
@Service
public class CategoryToanAdminService {
	@Autowired
	private CategoryToanImpl impl;
	public List<Category> selectAll() {
		List<Category> list = impl.selectAll();
		return list;
	}
}
