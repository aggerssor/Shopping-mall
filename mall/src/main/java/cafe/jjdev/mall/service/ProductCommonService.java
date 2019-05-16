package cafe.jjdev.mall.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cafe.jjdev.mall.mapper.ProductCommonMapper;
import cafe.jjdev.mall.vo.ProductCommon;

@Service
@Transactional
public class ProductCommonService {
	@Autowired
	private ProductCommonMapper productCommonMapper;
	
	//접근지정자  리턴데이터타입	             메소드명						                  입력데이터타입     매개변수
	public List<ProductCommon> getProductCommonListByCategoryNo(int categoryNo, int currentPage,String searchWord) {
		System.out.println("프로덕트 서비스 시작");
		//맵을 사용한다  입력데이터값을 넣는다
		Map<String, Object> map = new HashMap<String, Object>();
		//받아온값 카테고리 넘버를 맵에 넣는다
		map.put("categoryNo", categoryNo);
		System.out.println("categoryNo : " + categoryNo);
		//페이징에 사용할 변수를 만든다 ROW_PER_PAGE: 보여줄 데이터 개수
		final int ROW_PER_PAGE = 10;
		System.out.println("ROW_PER_PAGE : " + ROW_PER_PAGE);
		//페이징에 사용할 변수 startRow:몇번째데이터 부터 보여줄지를 정함
		int startRow = (currentPage-1)*ROW_PER_PAGE;
		System.out.println("startRow : " + startRow);
		map.put("currentPage", currentPage);
		map.put("startRow", startRow);
		map.put("rowPerPage", ROW_PER_PAGE); 
		System.out.println("currentPage"+currentPage);
		
		return productCommonMapper.selectProductCommonList(map);
	}
	
}
