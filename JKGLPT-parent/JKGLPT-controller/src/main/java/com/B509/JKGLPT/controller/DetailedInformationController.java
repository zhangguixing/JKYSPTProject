package com.B509.JKGLPT.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.B509.JKGLPT.Vo.ShowDiscussionVO;
import com.B509.JKGLPT.pojo.Characteristic;
import com.B509.JKGLPT.pojo.Drugs;
import com.B509.JKGLPT.pojo.Drugsinfo;
import com.B509.JKGLPT.service.CharacteristicService;
import com.B509.JKGLPT.service.DisscussionService;
import com.B509.JKGLPT.service.DrugsService;
import com.B509.JKGLPT.service.DrugsinfoService;
import com.B509.JKGLPT.service.ShowDiscussionService;

/**
 * 进入商品详情页面显示商品信息
 * 
 * @author 27161
 *
 */

@RequestMapping("introduction")
@Controller
public class DetailedInformationController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private DrugsService drugsSerivce;
	@Autowired
	private DrugsinfoService drugsinfoService;
	@Autowired
	private CharacteristicService characteristicService;
	@Autowired
	private DisscussionService discussionService;
	@Autowired
	private ShowDiscussionService showDiscussionService;
	@RequestMapping(method = RequestMethod.GET, value = "{id}")
	public String introduction(Model model, @PathVariable("id") String id) {
		logger.info("进入商品展示页面");
		Drugs drugs = new Drugs();
		drugs.setDrugsId(Integer.parseInt(id));
		Drugs drug = drugsSerivce.queryListByWhere(drugs).get(0);
		Drugsinfo drugsinfo = new Drugsinfo();
		drugsinfo.setDrugsId(Integer.parseInt(id));
		Drugsinfo drugsinfos = drugsinfoService.queryListByWhere(drugsinfo).get(0);

		List<Characteristic> characteristic = characteristicService.queryAll();
		
		Drugs drugsClass = new Drugs();
		drugsClass.setDrugsCharacteristicId(drugsClass.getDrugsClassificationId());
		List<Drugs> sameClass = drugsSerivce.queryListByWhere(drugsClass);
		
		model.addAttribute("sameClass",sameClass);
		model.addAttribute("characteristicList", characteristic);
		model.addAttribute("drug", drug);
		model.addAttribute("drugsinfos", drugsinfos);
		logger.info("商品展示完毕");
		return "introduction";
	}
	@RequestMapping(value="/intro",method=RequestMethod.GET)
	@ResponseBody
	public Drugsinfo intro(Integer id){
		Drugsinfo drugs = new Drugsinfo();
		drugs.setDrugsId(id);
		Drugsinfo drugsinfos = drugsinfoService.queryOne(drugs);
		return drugsinfos;
	}
	
	@RequestMapping(value="disscu",method=RequestMethod.GET)
	@ResponseBody
	public List<ShowDiscussionVO> disscu(Integer id){
		
		List<ShowDiscussionVO> queryDiscussionVO = showDiscussionService.queryDisscussionVO(id);
		return queryDiscussionVO;
	}
}
