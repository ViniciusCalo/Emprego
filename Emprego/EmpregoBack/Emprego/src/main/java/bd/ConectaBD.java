package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectaBD {
	private static String usuario = "root";
	//SENHA DO BANCO DE DADOS MYSQL
	private static String senha = "root";
	private static Connection conexao;
	private static String url = "jdbc:mysql://localhost/empregos";
	
	public static Connection getConnection() {
		//CARREGA A CLASSE DE CONEXÃO NA MEMÓRIA
		try {
			Class.forName("com.mysql.jdbc.Driver");
			if(conexao == null || conexao.isClosed()) {
				conexao = DriverManager.getConnection(url, usuario, senha);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conexao;
	}
	
}
