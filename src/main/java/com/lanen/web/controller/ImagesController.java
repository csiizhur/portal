package com.lanen.web.controller;

import java.io.IOException;
import java.io.OutputStream;


import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.lanen.web.util.PictureUtil;
import com.lanen.web.util.PropertyUtils;

@Controller
@RequestMapping("/image")
public class ImagesController {

	private static final Logger log = Logger.getLogger(ImagesController.class);
	
	@RequestMapping(value="/photo",method=RequestMethod.GET)
	public static void photo(HttpServletResponse rep,String imgName) throws IOException{
		byte[] imgs = PictureUtil.getBytes(PictureUtil.getFolderPath(PropertyUtils.getProperty("photo.path"),imgName)+imgName);
    	if(imgs!=null){
    		rep.setContentType("image/x-png");
    		rep.setHeader("content-disposition", "attachment; filename=" + imgName);
    		OutputStream os = rep.getOutputStream();
    		os.write(imgs);
    		os.flush();
    		os.close();
    	}
	}
	
}
