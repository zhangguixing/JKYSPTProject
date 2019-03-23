package com.B509.JKGLPT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.github.abel533.entity.Example;
import com.github.abel533.mapper.Mapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 实现业务层通用的增删改查 继承本类需要填写泛型
 * 
 * @author 兴跃神话
 * 
 *         操作的表--》类
 * @param <T>
 */
public abstract class BaseService<T> {

    // 通用mapper -spring4.x新增特性 支持泛型注入
    @Autowired
    protected Mapper<T> mapper;

    /**
     * 根据主键id查询
     * 
     * @param id
     * @return
     */
    public T queryById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    /**
     * 查询所有
     * 
     * @return
     */
    public List<T> queryAll() {
        // 设置条件为空
        return mapper.select(null);
    }

    /**
     * 根据条件查询一条记录，多条则报错
     * 
     * @param record
     * @return
     */
    public T queryOne(T record) {
        return mapper.selectOne(record);
    }

    /**
     * 根据条件查出多条数据
     * 
     * @param recode
     * @return
     */
    public List<T> queryListByWhere(T recode) {
        return mapper.select(recode);
    }

    /**
     * 根据条件分页查询数据
     * 
     * @param record 查询条件 null时查询所有
     * @param pageNum 当前页数
     * @param pageSize 一页显示的记录数
     * @return
     */
    public PageInfo<T> queryPageListByWhere(T record, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<T> list = mapper.select(record);
        return new PageInfo<T>(list);
    }

    /**
     * 保存数据
     * 
     * @param t
     * @return
     */
    public Integer save(T t) {
        return mapper.insert(t);
    }

    /**
     * 选择不为null的字段 插入数据库中
     * 
     * @param t
     * @return
     */
    public Integer saveSelective(T t) {
        return mapper.insertSelective(t);
    }

    /**
     * 更新数据
     * 
     * @param t
     * @return
     */
    public Integer update(T t) {
        return mapper.updateByPrimaryKey(t);
    }

    /**
     * 选择不为null的字段更新数据库中的数据
     * 
     * @param t
     * @return
     */
    public Integer updateSelective(T t) {
        return mapper.updateByPrimaryKeySelective(t);
    }

    /**
     * 根据主键删除数据
     * 
     * @param id
     * @return
     */
    public Integer deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    /**
     * 根据条件删除
     * 
     * @param record
     * @return
     */
    public Integer deleteByWhere(T record) {
        return mapper.delete(record);
    }

    /**
     * 根据条件批量删除
     * 
     * @param ids 批量删除的id
     * @param clazz 删除表对应的类
     * @param property 删除表对应类的字段（条件）
     * @return 删除记录数
     */
    public Integer deleteByIds(List<Object> ids, Class<T> clazz, String property) {
        Example example = new Example(clazz); // 根据类创建对应的实体
        example.createCriteria().andIn(property, ids); // 设置条件
        return mapper.deleteByExample(example);
    }
}
