package tp.kits3.open4um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.daoimpl.SourceToanAdminImpl;
import tp.kits3.open4um.vo.Source;

@Service
public class SourceToanAdminService {
	//<!--Author:Toan-->
		@Autowired
		private SourceToanAdminImpl impl;

		public List<Source> selectsourceName() {
			List<Source> list1 = impl.selectSourceName();
			return list1;
		}
	

}
