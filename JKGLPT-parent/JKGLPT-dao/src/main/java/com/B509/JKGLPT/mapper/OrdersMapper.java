package com.B509.JKGLPT.mapper;

import java.util.List;

import com.B509.JKGLPT.Vo.OrdersVO;
import com.B509.JKGLPT.pojo.Orders;
import com.github.abel533.mapper.Mapper;

public interface OrdersMapper extends Mapper<Orders> {

    /**
     * 根据用户id查询订单列表
     * 
     * @param id
     * @return
     */
    List<OrdersVO> findOrdersVOByUserId(Integer id);

    /**
     * 更新订单状态
     * 
     * @param orders
     * @return
     */
    Integer upateOrdersStatus(Orders orders);

}