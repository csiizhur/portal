package page;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.pagehelper.PageInfo;
import com.lanen.web.pojo.Article;
import com.lanen.web.service.impl.BaseServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/spring/spring.xml")
public class PageTest {

	@Resource
	private BaseServiceImpl baseService;

	@Test
	public void queryByPageTest() {
		PageInfo<Article> page = baseService.queryByPage(null, 2, null);
		System.out.println(page.getList().size() + "长度");
		List<?> ll = page.getList();
		long t1, t2;

		//第一种遍历
		t1 = System.currentTimeMillis();
		for (int i = 0; i < ll.size(); i++) {
			System.out.println(ll.get(i));
		}
		t2 = System.currentTimeMillis();
		System.out.println("遍历时间：" + (t2 - t1));
		
		
		//第二种遍历
		Iterator<String> iter = (Iterator<String>) ll.iterator();  
        
        t1=System.currentTimeMillis();  
        while(iter.hasNext())  
        {  
            iter.next();  
            //System.out.println(iter.next());  
        }  
        t2=System.currentTimeMillis();  
        System.out.println("Run Time:" + (t2 -t1) + "(ms)");
        
        //第三种
        t1=System.currentTimeMillis();  
        for(Object tmp:ll)  
        {  
            //System.out.println(tmp);  
        }  
        t2=System.currentTimeMillis();  
        System.out.println("Run Time:" + (t2 -t1) + "(ms)");
	}
}
