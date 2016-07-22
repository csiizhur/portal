package com.lanen.web.common.db.config;

import java.util.Properties;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;

import com.alibaba.druid.util.DruidPasswordCallback;
import com.lanen.web.admin.util.DESPlus;

/**
 * 
 * @Description db密码回调解密
 * @ClassName DBPasswordCallback.java
 * @author Administrator-zhur
 * @date 2016年7月22日上午9:06:47
 */
@SuppressWarnings("serial")
public class DBPasswordCallback extends DruidPasswordCallback {

	private static Logger log=Logger.getLogger(DBPasswordCallback.class);
	public void setProperties(Properties p) {
		super.setProperties(p);
		String pwd = p.getProperty("password");
		try {
			if (StringUtils.isNotBlank(pwd)) {
				String decrypt_pwd = new DESPlus().decrypt(pwd);
				setPassword(decrypt_pwd.toCharArray());
			}
			log.info(getPassword()+"this is dbpassword");
		} catch (Exception e) {
			setPassword(pwd.toCharArray());
			e.printStackTrace();
		}
	}

}
