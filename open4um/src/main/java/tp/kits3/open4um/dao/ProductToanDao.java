package tp.kits3.open4um.dao;

import java.util.List;

import tp.kits3.open4um.dto.ProductRoleDto;

public interface ProductToanDao {
	
	public List<ProductRoleDto> selectdanhsachbaiviet();
	public List<ProductRoleDto> selectduyet();
	public List<ProductRoleDto> selectchuaduyet();
	public List<ProductRoleDto> selectaccountchuaduyet();
	public List<ProductRoleDto> selectaccountduyet();
	public List<ProductRoleDto> selectaccountdanhsachbaiviet();
}
