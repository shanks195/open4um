package tp.kits3.open4um.dao;

import java.util.List;

import tp.kits3.open4um.dto.ProductRoleDto;
import tp.kits3.open4um.vo.Product;

public interface ProductToanAdminDao {
	public List<ProductRoleDto> selectdanhsachBaiViet() ;
	public List<ProductRoleDto> selectduyet();
	public List<ProductRoleDto> selectchuaduyet();
	public List<ProductRoleDto> insertbaiviet();
	public ProductRoleDto postDetails(int idPost);
	public void updatePostDetails(ProductRoleDto productRoleDto);
	public void insertPro(Product product);
	public void deletePro(int idPost);
	ProductRoleDto selecttungbaiviet(int id);
	public List<ProductRoleDto> selecttheotieude(String ctgname);
	
}
