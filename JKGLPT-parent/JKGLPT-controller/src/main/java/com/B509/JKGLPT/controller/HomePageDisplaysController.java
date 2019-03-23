package com.B509.JKGLPT.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.B509.JKGLPT.Vo.ShowDrugsVo;
import com.B509.JKGLPT.pojo.Characteristic;
import com.B509.JKGLPT.pojo.Classification;
import com.B509.JKGLPT.pojo.Drugs;
import com.B509.JKGLPT.service.CharacteristicService;
import com.B509.JKGLPT.service.ClassificationService;
import com.B509.JKGLPT.service.DrugsService;

/**
 * 首页显示，包括所有显示地方
 * 
 * @author 27161
 *
 */
@RequestMapping("fontPageDisplay")
@Controller
public class HomePageDisplaysController {
    private Logger logger = LoggerFactory.getLogger(HomePageDisplaysController.class);

    @Autowired
    private CharacteristicService characteristicService;

    @Autowired
    private ClassificationService classificationService;

    @Autowired
    private DrugsService drugsService;

    /**
     * 首页显示
     * 
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String showCharacteristic(Model model) {
        logger.info("进入首页展示！");
        List<Characteristic> characteristic = characteristicService.queryAll();
        model.addAttribute("characteristicList", characteristic);

        List<Classification> classifications = classificationService.queryAll();
        model.addAttribute("classificationsList", classifications);

        ArrayList<ShowDrugsVo> list = new ArrayList<ShowDrugsVo>();
        Drugs drugs = new Drugs();
        for (Classification classification : classifications) {
            ArrayList<Drugs> drugsList1 = new ArrayList<Drugs>();
            ShowDrugsVo showDrugsUtils = new ShowDrugsVo();
            drugs.setDrugsClassificationId(classification.getDrugsClassificationId());
            List<Drugs> drugsList = drugsService.queryListByWhere(drugs);
            showDrugsUtils.setClassification(classification);
            for (Drugs drugs1 : drugsList) {
                drugsList1.add(drugs1);
            }
            showDrugsUtils.setDrugs(drugsList1);
            list.add(showDrugsUtils);
        }
        logger.info("首页展示完毕！");
        model.addAttribute("list", list);
        return "index";
    }

}
