package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Product;
import ua.lv.service.ProductService;

@Controller
public class productController {
    @Autowired
    ProductService productService;


//    @RequestMapping(value = "/products",method = RequestMethod.GET)
//    public String productList(Model model){
//        model.addAttribute("emptyProduct", new Product());
//        model.addAttribute("productlist",productService.productList());
//        return "products";
//    }
//    @RequestMapping(value = "/products/add",method = RequestMethod.POST)
//    public String addproduct(@ModelAttribute("emptyProduct")Product product){
//        productService.addProduct(product);
//        return "redirect:/products";
//    }
//    @RequestMapping(value = "removeProduct/{id}")
//    public String removeProduct(@PathVariable("id") int id){
//        productService.removeProduct(id);
//        return "redirect:/products";
//    }
//    @RequestMapping(value = "editProduct/{id}")
//    public String editProduct(@PathVariable("id") int id,Model model){
//        model.addAttribute("emptyProduct",productService.gedProductById(id));
//        model.addAttribute("productlist", productService.productList());
//        return "products";
//    }
//    @RequestMapping(value = "productData")
//    public String productData(@PathVariable("id") int id, Model model){
//        model.addAttribute("emptyProduct",productService.gedProductById(id));
//        return "/productData";
//    }

    @RequestMapping(value = "products",method = RequestMethod.GET)
    public String listPriduct(Model model){
        model.addAttribute("emptyProduct",new Product());
        model.addAttribute("productlist", productService.productList());
        return "products";
    }
    @RequestMapping(value = "products/add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("emptyProduct") Product  product){
        productService.addProduct(product);
        return "redirect:/products";
    }
    @RequestMapping("productsRemove/{id}")
    public String removeProduct(@PathVariable("id") int id){
        productService.removeProduct(id);
        return "redirect:/products";
    }
    @RequestMapping("productsEdit/{id}")
    public String editProducts(@PathVariable("id")int id, Model model){
        model.addAttribute("emptyProduct", productService.gedProductById(id));
        model.addAttribute("productlist",productService.productList());
        return "products";
    }
    @RequestMapping("productData/{id}")
    public String productdata(Model model, @PathVariable("id") int id){
        model.addAttribute("emptyProduct", productService.gedProductById(id));
        return "productData";
    }


}
