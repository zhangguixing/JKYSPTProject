package com.B509.JKGLPT.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.B509.JKGLPT.pojo.AutumnEssay;
import com.B509.JKGLPT.pojo.SeasonsEssay;
import com.B509.JKGLPT.pojo.SpringEssay;
import com.B509.JKGLPT.pojo.SummerEssay;
import com.B509.JKGLPT.pojo.WinterEssay;
import com.B509.JKGLPT.service.AutumnEssayService;
import com.B509.JKGLPT.service.EssayRelaService;
import com.B509.JKGLPT.service.PrescriptionService;
import com.B509.JKGLPT.service.SeasonsEssayService;
import com.B509.JKGLPT.service.SpringEssayService;
import com.B509.JKGLPT.service.SummerEssayService;
import com.B509.JKGLPT.service.WinterEssayService;
import com.github.pagehelper.PageInfo;

/**
 * 四季养生的各个页面的显示
 * 
 * @author 27161
 *
 */

@Controller
@RequestMapping("seasons")
public class SeasonsController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AutumnEssayService autumnEssayService;

    @Autowired
    private EssayRelaService essayRelaService;

    @Autowired
    private PrescriptionService prescriptionService;

    @Autowired
    private SeasonsEssayService seasonsEssayService;

    @Autowired
    private SpringEssayService springEssayService;

    @Autowired
    private SummerEssayService summerEssayService;

    @Autowired
    private WinterEssayService winterEssayService;

    /**
     * 首页
     * 
     * @return
     */
    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index(Model modle) {
        return "seasonIndex";
    }

    /**
     * 四季文章
     * 
     * @return
     */
    @RequestMapping(value = "season", method = RequestMethod.GET)
    public String seasons(Model model, Integer pageNow) {
        model.addAttribute("flag", "season");
        if (pageNow == null) {
            pageNow = 1;
        }
        PageInfo<SeasonsEssay> pageInfo = seasonsEssayService.queryPageListByWhere(null, pageNow, 10);
        List<SeasonsEssay> allEssays = seasonsEssayService.queryAll();
        List<SpringEssay> springEssay = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay = autumnEssayService.queryAll();

        logger.info("allEssays======" + pageInfo);

        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("allEssays", allEssays);
        model.addAttribute("springEssays", springEssay);
        model.addAttribute("autumnEssays", autumnEssay);

        return "seasons";
    }

    /**
     * 春文章
     * 
     * @return
     */
    @RequestMapping(value = "spring", method = RequestMethod.GET)
    public String spring(Model model) {
        return "allSeasons";
    }

    /**
     * 夏文章
     * 
     * @return
     */
    @RequestMapping(value = "summer", method = RequestMethod.GET)
    public String summer(Model model) {
        return "allSeasons";
    }

    /**
     * 秋文章
     * 
     * @return
     */
    @RequestMapping(value = "autumn", method = RequestMethod.GET)
    public String autumn(Model model) {
        return "allSeasons";
    }

    /**
     * 冬文章
     * 
     * @return
     */
    @RequestMapping(value = "winter", method = RequestMethod.GET)
    public String winter(Model model) {
        return "allSeasons";
    }

    /**
     * 夏季养生食谱
     * 
     * @return
     */
    @RequestMapping(value = "summerRecipes", method = RequestMethod.GET)
    public String summerRecipes(Model model) {
        model.addAttribute("flag", "summerRecipes");
        SummerEssay summerEssay = new SummerEssay();
        summerEssay.setClassify("夏季养生食谱");

        List<SummerEssay> essay = summerEssayService.queryListByWhere(summerEssay);
        List<SpringEssay> springEssay = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay = autumnEssayService.queryAll();

        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay);
        model.addAttribute("autumnEssays", autumnEssay);
        return "seasons";
    }

    /**
     * 夏季养生汤
     * 
     * @return
     */
    @RequestMapping(value = "summerSoup", method = RequestMethod.GET)
    public String summerSoup(Model model) {
        model.addAttribute("flag", "summerSoup");
        SummerEssay summerEssay = new SummerEssay();
        summerEssay.setClassify("夏季养生汤");
        List<SummerEssay> essay = summerEssayService.queryListByWhere(summerEssay);
        List<SpringEssay> springEssay = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay = autumnEssayService.queryAll();
        model.addAttribute("springEssays", springEssay);
        model.addAttribute("autumnEssays", autumnEssay);
        model.addAttribute("allEssays", essay);
        return "seasons";
    }

    /**
     * 夏季养生知识
     * 
     * @return
     */
    @RequestMapping(value = "summerKnowledge", method = RequestMethod.GET)
    public String summerKnowledge(Model model) {
        model.addAttribute("flag", "summerKnowledge");
        SummerEssay summerEssay = new SummerEssay();
        summerEssay.setClassify("夏季养生知识");
        List<SummerEssay> essay = summerEssayService.queryListByWhere(summerEssay);
        List<SpringEssay> springEssay = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay = autumnEssayService.queryAll();
        model.addAttribute("allEssay", essay);
        model.addAttribute("springEssays", springEssay);
        model.addAttribute("autumnEssays", autumnEssay);
        return "seasons";
    }

    /**
     * 春季养生食谱
     * 
     * @return
     */
    @RequestMapping(value = "springRecipes", method = RequestMethod.GET)
    public String springRecipes(Model model) {
        model.addAttribute("flag", "springRecipes");
        SpringEssay springEssay = new SpringEssay();
        springEssay.setClassify("春季养生食谱");
        List<SpringEssay> essay = springEssayService.queryListByWhere(springEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay);
        return "seasons";
    }

    /**
     * 春季养生汤
     * 
     * @return
     */
    @RequestMapping(value = "springSoup", method = RequestMethod.GET)
    public String springSoup(Model model) {
        model.addAttribute("flag", "springSoup");
        SpringEssay springEssay = new SpringEssay();
        springEssay.setClassify("春季养生汤");
        // springEssayService.queryPageListByWhere(springEssay, pageNum, 10);

        List<SpringEssay> essay = springEssayService.queryListByWhere(springEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay);
        return "seasons";
    }

    /**
     * 春季养生知识
     * 
     * @return
     */
    @RequestMapping(value = "springKnowledge", method = RequestMethod.GET)
    public String springKnowledge(Model model) {
        model.addAttribute("flag", "springKnowledge");
        SpringEssay springEssay = new SpringEssay();
        springEssay.setClassify("春季养生知识");
        List<SpringEssay> essay = springEssayService.queryListByWhere(springEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay1 = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay1);
        return "seasons";
    }

    /**
     * 秋季养生食谱
     * 
     * @return
     */
    @RequestMapping(value = "autumnRecipes", method = RequestMethod.GET)
    public String autumnRecipes(Model model) {
        model.addAttribute("flag", "autumnRecipes");
        AutumnEssay autumnEssay = new AutumnEssay();
        autumnEssay.setClassify("秋季养生食谱");

        List<AutumnEssay> essay = autumnEssayService.queryListByWhere(autumnEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay1 = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay1);
        return "seasons";
    }

    /**
     * 秋季养生汤
     * 
     * @return
     */
    @RequestMapping(value = "autumnSoup", method = RequestMethod.GET)
    public String autumnSoup(Model model) {
        model.addAttribute("flag", "autumnSoup");
        AutumnEssay autumnEssay = new AutumnEssay();
        autumnEssay.setClassify("秋季养生汤");
        List<AutumnEssay> essay = autumnEssayService.queryListByWhere(autumnEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay1 = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay1);
        return "seasons";
    }

    /**
     * 秋季养生知识
     * 
     * @return
     */
    @RequestMapping(value = "autumnKnowledge", method = RequestMethod.GET)
    public String autumnKnowledge(Model model) {
        model.addAttribute("flag", "autumnKnowledge");
        AutumnEssay autumnEssay = new AutumnEssay();
        autumnEssay.setClassify("秋季养生知识");
        List<AutumnEssay> essay = autumnEssayService.queryListByWhere(autumnEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay1 = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay1);
        return "seasons";
    }

    /**
     * 冬季养生食谱
     * 
     * @return
     */
    @RequestMapping(value = "winterRecipes", method = RequestMethod.GET)
    public String winterRecipes(Model model) {
        model.addAttribute("flag", "winterRecipes");
        WinterEssay winterEssay = new WinterEssay();
        winterEssay.setClassify("冬季养生食谱");
        List<WinterEssay> essay = winterEssayService.queryListByWhere(winterEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay1 = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay1);
        return "seasons";
    }

    /**
     * 冬季养生汤
     * 
     * @return
     */
    @RequestMapping(value = "winterSoup", method = RequestMethod.GET)
    public String winterSoup(Model model) {
        model.addAttribute("flag", "winterSoup");
        WinterEssay winterEssay = new WinterEssay();
        winterEssay.setClassify("冬季养生食谱");
        List<WinterEssay> essay = winterEssayService.queryListByWhere(winterEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay1 = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay1);
        return "seasons";
    }

    /**
     * 冬季养生知识
     * 
     * @return
     */
    @RequestMapping(value = "winterKnowledge", method = RequestMethod.GET)
    public String winterKnowledge(Model model) {
        model.addAttribute("flag", "winterKnowledge");
        WinterEssay winterEssay = new WinterEssay();
        winterEssay.setClassify("冬季养生知识");
        List<WinterEssay> essay = winterEssayService.queryListByWhere(winterEssay);
        List<SpringEssay> springEssay1 = springEssayService.queryAll();
        List<AutumnEssay> autumnEssay1 = autumnEssayService.queryAll();
        model.addAttribute("allEssays", essay);
        model.addAttribute("springEssays", springEssay1);
        model.addAttribute("autumnEssays", autumnEssay1);
        return "seasons";
    }
}
