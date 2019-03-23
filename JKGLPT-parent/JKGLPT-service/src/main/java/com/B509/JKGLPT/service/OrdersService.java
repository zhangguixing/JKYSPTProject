package com.B509.JKGLPT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.B509.JKGLPT.Vo.OrdersVO;
import com.B509.JKGLPT.mapper.OrdersMapper;
import com.B509.JKGLPT.pojo.Orders;
import com.B509.JKGLPT.pojo.Receiver;

@Service
public class OrdersService extends BaseService<Orders> {

    @Autowired
    private OrdersMapper ordersMapper;

    @Autowired
    private ReceiverService receiverService;

    /**
     * 保存订单数组
     * 
     * @param ordersArray
     */
    public void saveOrdersArray(Orders[] ordersArray) {
        for (Orders orders : ordersArray) {
            this.save(orders);
        }
    }

    /**
     * 根据用户id查询订单
     * 
     * @param id
     * @return
     */
    public List<OrdersVO> findOrdersVOByUserId(Integer id) {
        return ordersMapper.findOrdersVOByUserId(id);
    }

    /**
     * 保存收货人并更新货物信息
     * 
     * @param receiver
     * @param id
     */
    public void saveReceiverAndOrders(Receiver receiver, Integer id) {
        receiverService.save(receiver);
        Orders orders = new Orders();
        orders.setUserId(id);
        orders.setReceiverId(receiver.getId());
        ordersMapper.upateOrdersStatus(orders);
    }

}
