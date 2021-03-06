package tp.kits3.open4um.daoimpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.kits3.open4um.config.ConnectionFactory;
import tp.kits3.open4um.dao.ReportDAO;
import tp.kits3.open4um.vo.Report;

@Repository
public class ReportImpl implements ReportDAO{

	@Override
	public void insert(Report rp) {
		SqlSession session = ConnectionFactory.getInstance().openSession();
		session.insert("mappers.reportMapper.insert", rp);
		session.commit();
		session.close();
	}

}
