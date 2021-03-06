package tp.kits3.open4um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.dao.MessageDao;
import tp.kits3.open4um.daoimpl.MessageImpl;
import tp.kits3.open4um.vo.Message;

@Service
public class MessageService implements MessageDao {
	@Autowired
	private MessageImpl dao;
	public List<Message> selectAll(int id) {
	return dao.selectAll(id);
	}
	@Override
	public List<Message> selectMessage(int id) {
		return dao.selectMessage(id);
	}
	@Override
	public Message selectOne(int id) {
		return dao.selectOne(id);
	}
	@Override
	public List<Message> selectChatting(int senduserid, int receiveuserid) {
		return dao.selectChatting(senduserid,receiveuserid);
	}
	@Override
	public void insert(Message message) {
		dao.insert(message);
	}
	
}
