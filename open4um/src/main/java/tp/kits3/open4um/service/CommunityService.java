package tp.kits3.open4um.service;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author 응이아
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.kits3.open4um.daoimpl.CommunitiDaoImpl;
import tp.kits3.open4um.dto.PostDto;
import tp.kits3.open4um.dto.PostUserDto;
import tp.kits3.open4um.dto.PostsDto;
import tp.kits3.open4um.dto.UploadProductDto;
import tp.kits3.open4um.vo.Product;

@Service
public class CommunityService {

	@Autowired
	private CommunitiDaoImpl communitidaoimpl;
	public void insertPosts(int ctg, Timestamp datetime, String content, String images, int userid, int stateid) {
		Product product = new Product();
		int n = 30;
		int like = 0;
		int Views = 1;
		int dislike = 0;
		String titlePost = content.substring(0, Math.min(content.length(), n)) + "...";
		System.out.println(titlePost);
		product.setTitle(titlePost);
		product.setCtgid(ctg);
		product.setLike(like);
		product.setViews(Views);
		product.setDatepost(datetime);
		product.setContent(content);
		product.setImage(images);
		product.setUserid(userid);
		product.setStateid(stateid);
		product.setDislikes(dislike);
		communitidaoimpl.insertPosts(product);
		
	}

	public List<PostUserDto> selectAll(int ctgid) {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		long time = timestamp.getTime(); 
		
		List<PostUserDto> List = communitidaoimpl.selectAll(ctgid);
		for (PostUserDto item : List) {
			long s = (time - item.getDatepost().getTime());
			long ngay = (s / 60 / 60 / 24 / 1000) ;
			if(ngay > 1) {
				String newNgay = (s / 60 / 60 / 24 / 1000) + " Ngày trước";
				 
				item.setTime(newNgay);
			}else {
				long Gio = (s / 60 / 60 / 1000);
				if(Gio >= 1) {
					String newGio = (s / 60 / 60 / 1000) + " Giờ trước";
					item.setTime(newGio);
				}else {
					String newPhut = (s / 60  / 1000) + " Phút trước";
					 
					item.setTime(newPhut);
				}
				
			}
			
		}
		return List;

	}

}
