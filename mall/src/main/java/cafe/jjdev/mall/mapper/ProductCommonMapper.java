package cafe.jjdev.mall.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import cafe.jjdev.mall.vo.ProductCommon;

@Mapper
public interface ProductCommonMapper {
	
	
	public List<ProductCommon> selectProductCommonList(Map<String, Object> map); //1 리스트
	
	public ProductCommon selectProductCommonByCategory(int categoryCommonNo); //2 리스트에서 상세보기하고난다음

	
}
