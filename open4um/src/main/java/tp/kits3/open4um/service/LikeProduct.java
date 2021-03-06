package tp.kits3.open4um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.daoimpl.LikeDaoImpl;
import tp.kits3.open4um.dto.LikePCDto;
import tp.kits3.open4um.vo.Product;

@Service
public class LikeProduct {

	@Autowired
	private LikeDaoImpl likedaoImpl;
	public void updatelikeP(int idpro, int likeP) {
		LikePCDto likepc = new LikePCDto();
		likepc.setProid(idpro);
		likepc.setLike(likeP);
		likedaoImpl.updatelike(likepc);
		
	}
	public Product selectLikeP(int idpro) {
		Product listPro = likedaoImpl.selectLikeP(idpro);
		return listPro;
	}



}
