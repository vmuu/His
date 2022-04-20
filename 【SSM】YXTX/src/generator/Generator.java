package generator;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.exception.InvalidConfigurationException;
import org.mybatis.generator.exception.XMLParserException;
import org.mybatis.generator.internal.DefaultShellCallback;

public class Generator {
	/*
	 * targetRuntime="MyBatis3Simple", 涓嶇敓鎴怑xample
	 */
	public void generateMyBatis() {
		//MBG鎵ц杩囩▼涓殑璀﹀憡淇℃伅
		List<String> warnings = new ArrayList<String>();
		//褰撶敓鎴愮殑浠ｇ爜閲嶅鏃讹紝瑕嗙洊鍘熶唬鐮�
		boolean overwrite = true ;
		//String generatorFile = "/generator/generatorConfig.xml";
		String generatorFile = "/generatorConfig.xml";
		//璇诲彇MBG閰嶇疆鏂囦欢
		InputStream is = Generator.class.getResourceAsStream(generatorFile);
		ConfigurationParser cp = new ConfigurationParser(warnings);
		Configuration config;
		try {
			config = cp.parseConfiguration(is);
			DefaultShellCallback callback = new DefaultShellCallback(overwrite);
			//鍒涘缓MBG
			MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
			//鎵ц鐢熸垚浠ｇ爜
			myBatisGenerator.generate(null);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (XMLParserException e) {
			e.printStackTrace();
		} catch (InvalidConfigurationException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		for (String warning : warnings) {
			System.out.println(warning);
		}
	}
	
	public static void main(String[] args) {
		Generator generator = new Generator();
		generator.generateMyBatis();
	}
}
