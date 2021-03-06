package tp.kits3.open4um.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.dao.OrderHistoryDAO;
import tp.kits3.open4um.daoimpl.OrderHistoryImpl;
import tp.kits3.open4um.vo.OrderHistory;

@Service
public class OrderHistoryService implements OrderHistoryDAO{
	@Autowired
	private OrderHistoryImpl impl;
	

	public List<OrderHistory> selectOrderHistoryName() {
		List<OrderHistory> list3 = impl.selectOrderHistoryName();
		// TODO Auto-generated method stub
		return list3;
	}


	@Override
	public OrderHistory selectHistory(HashMap<String, Integer> map) {
		return impl.selectHistory(map);
	}


	@Override
	public void insert(OrderHistory order) {
		impl.insert(order);
	}

}
