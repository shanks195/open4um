package tp.kits3.open4um.service;
/**
 * @author Thong
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.dao.HistoryMoneyDao;
import tp.kits3.open4um.daoimpl.HistoryMoneyImpl;
import tp.kits3.open4um.vo.HistoryMoney;

@Service
public class HistoryMoneyService implements HistoryMoneyDao {
	@Autowired
	private HistoryMoneyImpl dao;
	public List<HistoryMoney> selectAll(int id){
		return dao.selectAll(id);
	}
	public List<HistoryMoney> selectSearch(int id, String searchInput) {
		return dao.selectSearch(id, searchInput);
	}
	public void delete(int id) {
		dao.delete(id);
	}
	@Override
	public void insert(HistoryMoney his) {
		dao.insert(his);
	}
}

