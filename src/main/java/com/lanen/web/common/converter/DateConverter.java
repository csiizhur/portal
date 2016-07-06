package com.lanen.web.common.converter;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class DateConverter implements Converter<Date, String> {

	@Override
	public String convert(Date source) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		return sdf.format(source);
	}


}
