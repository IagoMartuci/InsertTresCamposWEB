package br.com.inserttrescamposweb.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {

	public static Connection abrirConexao() throws SQLException {

		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// ETEC
			// String url = "jdbc:mysql://localhost:3307/iago";
			// final String USER = "root";
			// final String PASS = "*123456HAS*";

			// Casa
			String url = "jdbc:mysql://localhost:3306/iago";
			final String USER = "root";
			final String PASS = "123456";

			conn = DriverManager.getConnection(url, USER, PASS);
			System.out.println("Conexão aberta");
		} catch (ClassNotFoundException e) {
			System.out.println("Erro no envio dos dados: " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Erro no envio dos dados: " + e.getMessage());
		}
		return conn;
	}

	public static void fecharConexao(Connection conn) {
		try {
			conn.close();
			System.out.println("Conexão fechada");
		} catch (SQLException e) {
			System.out.println("Erro para fechar: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("Erro para fechar: " + e.getMessage());
		}
	}
}
