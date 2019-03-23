package com.B509.JKGLPT.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
 * 显示分类页
 * 
 * @author 27161
 *
 */
@RequestMapping("categories")
@Controller
public class CategoriesController {
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private DrugsService drugsService;

    @Autowired
    private ClassificationService classificationService;

    @Autowired
    private CharacteristicService characteristicService;

    /**
     * 通过分类进入分类页面
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "/classification/{id}", method = RequestMethod.GET)
    public String categoriesByClassification(Model model, @PathVariable("id") String id) {
        logger.info("进入分类页面");
        List<Classification> classifications = classificationService.queryAll();
        List<Characteristic> characteristics = characteristicService.queryAll();
        ArrayList<ShowDrugsVo> list = new ArrayList<ShowDrugsVo>();
        for (Classification classification : classifications) {
            Drugs drugs = new Drugs();
            ShowDrugsVo showDrugsVo = new ShowDrugsVo();
            drugs.setDrugsClassificationId(classification.getDrugsClassificationId());
            ArrayList<Drugs> drug = (ArrayList<Drugs>) drugsService.queryListByWhere(drugs);
            showDrugsVo.setClassification(classification);
            showDrugsVo.setDrugs(drug);
            list.add(showDrugsVo);
        }
        Drugs drugs = new Drugs();
        drugs.setDrugsClassificationId(Integer.parseInt(id));
        List<Drugs> drugsss = drugsService.queryListByWhere(drugs);

        model.addAttribute("drugsss", drugsss);
        model.addAttribute("list", list);
        model.addAttribute("characteristics", characteristics);
        logger.info("分类页面展示完毕");
        return "categories";
    }

    /**
     * 通过特色进入分类页面
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "/characteristic/{id}", method = RequestMethod.GET)
    public String categoriesByCharacter(Model model, @PathVariable("id") String id) {
        logger.info("进入特色分类页面" + id);
        List<Classification> classifications = classificationService.queryAll();
        List<Characteristic> characteristics = characteristicService.queryAll();
        ArrayList<ShowDrugsVo> list = new ArrayList<ShowDrugsVo>();
        for (Classification classification : classifications) {
            Drugs drugs = new Drugs();
            ShowDrugsVo showDrugsVo = new ShowDrugsVo();
            drugs.setDrugsClassificationId(classification.getDrugsClassificationId());
            ArrayList<Drugs> drug = (ArrayList<Drugs>) drugsService.queryListByWhere(drugs);
            showDrugsVo.setClassification(classification);
            showDrugsVo.setDrugs(drug);
            list.add(showDrugsVo);
        }

        Drugs drugs = new Drugs();
        drugs.setDrugsCharacteristicId(Integer.parseInt(id));
        List<Drugs> drugsss = drugsService.queryListByWhere(drugs);
        model.addAttribute("list", list);
        model.addAttribute("drugsss", drugsss);
        model.addAttribute("characteristics", characteristics);
        logger.info("特色分类页面展示完毕");
        return "categories";
    }
}
