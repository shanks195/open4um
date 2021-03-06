package tp.kits3.open4um.dao;


import java.util.List;

import tp.kits3.open4um.dto.PostDto;
import tp.kits3.open4um.dto.PostUserDto;
import tp.kits3.open4um.dto.PostsDto;

/**
 * @author 응이아
 */

import tp.kits3.open4um.dto.UploadProductDto;
import tp.kits3.open4um.vo.Product;

public interface CommunitiDAO {

	public void insertPosts(Product product);
	public List<PostUserDto> selectAll(int ctgid);
}
