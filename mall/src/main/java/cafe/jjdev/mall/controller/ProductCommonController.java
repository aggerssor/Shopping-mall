package cafe.jjdev.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cafe.jjdev.mall.service.ProductCommonService;
import cafe.jjdev.mall.vo.ProductCommon;

@Controller
public class ProductCommonController {
	
	@Autowired
	private ProductCommonService productCommonService;
	
	@GetMapping("/product/getProductListByCategory")
	public String getProductCommonListByCategoryNo(Model model,
			@RequestParam(value="categoryNo") int categoryNo
			,@RequestParam(value="currentPage" ,defaultValue = "1") int currentPage
			,@RequestParam(value="searchWord", defaultValue="") String searchWord) {
		
		List<ProductCommon> list = productCommonService.getProductCommonListByCategoryNo(categoryNo, currentPage, searchWord);

		System.out.println("");
		System.out.println("list" + list.toString());
		System.out.println("");
		model.addAttribute("list", list);
		
		
		
		return "/product/getProductListByCategory";
	}
	
}
