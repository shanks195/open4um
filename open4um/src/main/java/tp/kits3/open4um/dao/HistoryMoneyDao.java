package tp.kits3.open4um.dao;

import java.util.List;

import tp.kits3.open4um.vo.HistoryMoney;
/**
 * 
 * @author Thong
 *
 */
public interface HistoryMoneyDao {
	public List<HistoryMoney> selectAll(int id);
	public List<HistoryMoney> selectSearch(int id, String searchInput);
	public void insert(HistoryMoney his);
}
