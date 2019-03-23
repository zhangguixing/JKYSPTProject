package com.B509.JKGLPT.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.B509.JKGLPT.pojo.Drugs;
import com.B509.JKGLPT.pojo.Drugsinfo;
import com.B509.JKGLPT.service.DrugsService;

@Controller
public class UpdateDrugsController {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DrugsService drugsService;

    /**
     * 描述：上传商品
     * 
     * @param drugsName
     * @param drugsPic
     * @param drugsPrice
     * @param sellerId
     * @param drugsCharacteristicName
     * @param drugsClassificationName
     * @return
     */
    @RequestMapping(value = "/updateDrugs", method = RequestMethod.POST)
    public String updateDrugs(String drugsName, @RequestParam("drugsPic") CommonsMultipartFile drugsPic,
            Double drugsPrice, Integer sellerId, String drugsCharacteristicName, String drugsClassificationName,
            HttpServletRequest request, String drugsInfo) {

        // 获得原始文件名
        String fileName = drugsPic.getOriginalFilename();
        // 新文件名
        String newFileName = UUID.randomUUID() + fileName;
        /*
         * //获得项目路径 ServletContext sc = request.getSession().getServletContext(); //上传位置 String path
         * = sc.getRealPath("/images") + "/";//设置图片保存目录
         */
        String path = "E://eclipseWorkSpace//newJKGLPT//JKGLPT-controller//src//main//webapp//images//";
        File f = new File(path);

        if (!f.exists()) {
            f.mkdirs();
        }
        if (!(drugsPic.isEmpty())) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(path + newFileName);
                InputStream in = drugsPic.getInputStream();
                int b = 0;
                while ((b = in.read()) != -1) {
                    fileOutputStream.write(b);
                }
                fileOutputStream.close();
                in.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        String lastPath = "/file/" + newFileName;// 上传的位置，绝对路径的位置
        logger.info("上传位置:" + path);

        Drugs drug = new Drugs();
        drug.setSellerId(sellerId);
        drug.setDrugsName(drugsName);
        drug.setDrugsPic(lastPath);
        drug.setDrugsPrice(drugsPrice);

        Drugsinfo drugsinfo2 = new Drugsinfo();
        drugsinfo2.setDrugsDesc(drugsInfo);

        String status = drugsService.save(drugsCharacteristicName, drugsClassificationName, drug, drugsinfo2);

        if ("success".equals(status)) {
            return "update";
        }
        return "error";
    }

    @RequestMapping(value = "/newUpdate")
    public String newUpdate() {
        return "update";
    }
}
