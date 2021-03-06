package tp.kits3.open4um.dao;

import java.util.List;

import tp.kits3.open4um.vo.Rating;

public interface RatingDao {
	public Rating avgStart(int sourceid);
	public List<Rating> countSumStart(int sourceid);
	public int uploadRating(Rating rating);
}
