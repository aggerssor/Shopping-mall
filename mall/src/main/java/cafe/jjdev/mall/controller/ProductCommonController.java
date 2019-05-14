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
	public String getProductCommonListByCategoryNo(Model model,@RequestParam(value = "categoryNo", defaultValue = "1")	
												   int categoryNo, int currentPage) {
		
		List<ProductCommon> list = productCommonService.getProductCommonListByCategoryNo(categoryNo, currentPage);

		System.out.println("");
		System.out.println("list" + list.toString());
		System.out.println("");
		model.addAttribute("list", list);
		
		
		/*
		 model.addAttribute("list", List.get("list")); 
		 model.addAttribute("lastPage", List.get("lastPage")); 
		 model.addAttribute("boardCount", List.get("boardCount")); 
		 model.addAttribute("currentPage", currentPage);
		*/
		
		
		return "/product/getProductListByCategory";
	}
	
	
	
	
	
}
