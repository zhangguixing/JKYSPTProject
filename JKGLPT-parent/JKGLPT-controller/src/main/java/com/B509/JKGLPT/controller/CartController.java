package com.B509.JKGLPT.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.runners.Parameterized.Parameter;
import org.junit.runners.Parameterized.Parameters;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.B509.JKGLPT.constant.SessionContants;
import com.B509.JKGLPT.pojo.Cart;
import com.B509.JKGLPT.pojo.Drugs;
import com.B509.JKGLPT.pojo.User;
import com.B509.JKGLPT.service.CartService;
import com.B509.JKGLPT.service.DrugsService;

@Controller
@RequestMapping("cart")
public class CartController {

    private Logger logger = LoggerFactory.getLogger(CartController.class);

    @Autowired
    private CartService cartService;

    @Autowired
    private DrugsService drugsService;

    /**
     * 获取购物车信息
     * 
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String getCartInfo(HttpSession session, Model model) {
        logger.info("进入获取购物车信息列表");
        Cart recode = new Cart();
        User user = (User) session.getAttribute(SessionContants.SESSION_USER);
        recode.setUserId(user.getId());
        List<Cart> cartList = cartService.queryListByWhere(recode);
        List<Drugs> drugsList = new ArrayList<Drugs>();
        for (Cart cart : cartList) {
            Drugs drugs = drugsService.queryById(cart.getDrugsId());
            drugsList.add(drugs);
        }

        model.addAttribute("cartList", cartList);
        model.addAttribute("drugsList", drugsList);
        logger.info("获取购物车信息列表完成");
        return "cart";
    }

    /**
     * 删除购物车商品
     * 
     * @param id
     * @param session
     * @throws IOException
     */
    @RequestMapping(method = RequestMethod.DELETE)
    public void deleteDrugsCart(Integer id, HttpSession session, HttpServletResponse response) throws IOException {
        logger.info("删除指定购物车商品");
        User user = (User) session.getAttribute(SessionContants.SESSION_USER);
        Cart record = new Cart();
        record.setDrugsId(id);
        record.setUserId(user.getId());
        Integer count = cartService.deleteByWhere(record);
        if (count > 0) {
            logger.info("删除指定购物车商品成功");
        } else {
            logger.info("删除指定购物车商品失败");
        }
    }

    /**
     * 更新购物车商品数量
     * 
     * @param id
     * @param num
     */
    @RequestMapping(value = "{id}", method = RequestMethod.PUT)
    public void updateCartNum(@PathVariable("id") Integer id,
            @RequestParam(value = "num", required = true, defaultValue = "1") Integer num) {
        Cart cart = new Cart();
        cart.setId(id);
        cart.setNum(num);
        cartService.updateSelective(cart);
    }
    /**
     * 详情页面传送到购物车
     * @param id
     * @param num
     */
    @RequestMapping(method=RequestMethod.POST)
    public String saveCartsDrugs(@RequestParam("drugsId")Integer drugsId,@RequestParam("num")Integer num,HttpSession session){
    	Cart cart = new Cart();
    	cart.setDrugsId(drugsId);
    	cart.setNum(num);
    	User user = (User) session.getAttribute(SessionContants.SESSION_USER);
    	logger.info("drugsId========="+drugsId+"   Num========"+num);
    	cart.setUserId(user.getId());
    	cartService.save(cart);
    	return "redirect:/cart";
    }
}
