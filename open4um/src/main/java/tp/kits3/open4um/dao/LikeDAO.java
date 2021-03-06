package tp.kits3.open4um.dao;

import java.util.List;

import tp.kits3.open4um.dto.LikePCDto;
import tp.kits3.open4um.vo.Product;

public interface LikeDAO {
	public void updatelike(LikePCDto likepc);
	public Product selectLikeP(int idpro);
}
