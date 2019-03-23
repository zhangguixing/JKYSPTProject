package com.B509.JKGLPT.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.B509.JKGLPT.Vo.OrdersVO;
import com.B509.JKGLPT.constant.SessionContants;
import com.B509.JKGLPT.pojo.Orders;
import com.B509.JKGLPT.pojo.Receiver;
import com.B509.JKGLPT.pojo.User;
import com.B509.JKGLPT.service.OrdersService;

@Controller
@RequestMapping("orders")
public class OrdersController {

    private Logger logger = LoggerFactory.getLogger(OrdersController.class);

    @Autowired
    private OrdersService ordersService;

    /**
     * 保存用户订单信息
     * 
     * @param ordersArray
     * @return
     * @throws IOException
     */
    @RequestMapping(method = RequestMethod.POST)
    public void saveOrders(@RequestParam("drugsId[]") Integer[] drugsIds, @RequestParam("num[]") Integer[] nums,
            HttpSession session, HttpServletResponse response) throws IOException {
        logger.info("保存用户订单信息");

        User user = (User) session.getAttribute(SessionContants.SESSION_USER);
        Orders[] ordersArray = new Orders[nums.length];
        for (int i = 0; i < nums.length; i++) {
            ordersArray[i] = new Orders(null, user.getId(), false, nums[i], drugsIds[i], null);
        }
        ordersService.saveOrdersArray(ordersArray);
        response.getWriter().print(true);

        logger.info("保存用户订单信息完成");
    }

    /**
     * 获取订单列表
     * 
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String getMyOrders(HttpSession session, Model model) {
        logger.info("获取订单详情！");

        User user = (User) session.getAttribute(SessionContants.SESSION_USER);
        List<OrdersVO> ordersVOs = ordersService.findOrdersVOByUserId(user.getId());
        model.addAttribute("ordersVOs", ordersVOs);

        logger.info("获取订单详情完成！");
        return "redirect:fontPageDisplay";
    }

    /**
     * 移除订单
     * 
     * @param id
     */
    @RequestMapping(method = RequestMethod.DELETE)
    public void deleteOrders(Integer id) {
        logger.info("删除订单！");
        ordersService.deleteById(id);
        logger.info("删除订单完成！");
    }

    /**
     * 保存收货人并更新订单信息
     * 
     * @param receiver
     * @param session
     * @return
     */
    @RequestMapping(value = "receiver", method = RequestMethod.POST)
    public String saveReceiver(Receiver receiver, HttpSession session) {
        User user = (User) session.getAttribute(SessionContants.SESSION_USER);
        ordersService.saveReceiverAndOrders(receiver, user.getId());
        return "clearing";
    }

    @RequestMapping(value = "receiver", method = RequestMethod.GET)
    public String saveReceiver() {
        return "redirect:fontPageDisplay";
    }
}
