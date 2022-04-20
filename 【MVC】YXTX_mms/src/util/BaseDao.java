package util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class BaseDao {
	private static String url;
	private static String userName;
	private static String password;
	private static String driver;
	private static Connection connection;
	private static Properties properties = new Properties();
	//静态代码块在该类第一次被使用的时候执行，static修饰的代码块只会执行一次
	static{
		try {
			properties.load(BaseDao.class.getClassLoader().
					getResourceAsStream("./database.properties"));
			//给参数赋值
			url = properties.getProperty("jdbc.url");
			userName = properties.getProperty("jdbc.username");
			password = properties.getProperty("jdbc.password");
			driver = properties.getProperty("jdbc.driver");
			Class.forName(driver);
		} catch (ClassNotFoundException | IOException e) {
			e.printStackTrace();
		}
	}
	//获取Connection连接对象
	public static Connection getConnection(){
		try {
			//判断连接对象是否为空或者连接对象被关闭
			if(connection==null||connection.isClosed()){
				connection = DriverManager.getConnection(url,userName,password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
	//关闭链接
	public static void close(Connection connection) throws Exception {
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
	}
	
	public static void init() {
		
	}
	
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
	
}
