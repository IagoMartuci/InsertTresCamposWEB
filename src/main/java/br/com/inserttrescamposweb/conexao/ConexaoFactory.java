package br.com.inserttrescamposweb.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoFactory {

	public static void main(String[] args) throws SQLException, InterruptedException {

		// ETEC
		// String url = "jdbc:mysql://localhost:3307/iago";
		// final String USER = "root";
		// final String PASS = "*123456HAS*";
		
		// Casa
		String url = "jdbc:mysql://localhost:3306/iago";
		final String USER = "root";
		final String PASS = "123456";
		Connection conexaoTest = DriverManager.getConnection(url, USER, PASS);
		System.out.println("Abriu a conexão teste: " + conexaoTest);
		
		Thread.sleep(1000);
		System.out.println("3");
		Thread.sleep(1000);
		System.out.println("2");
		Thread.sleep(1000);
		System.out.println("1");
		Thread.sleep(1000);
		conexaoTest.close();
		System.out.println("Fechou a conexão teste: " + conexaoTest);
		
	}

}
