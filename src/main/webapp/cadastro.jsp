<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>

<%@ page language="java"
	import="br.com.inserttrescamposweb.conexao.ConexaoDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mensagem Cadastro</title>
</head>
<body>

	<%
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String idade = request.getParameter("idade");
Connection conn = ConexaoDAO.abrirConexao();
PreparedStatement ps = null;

try {
	String sql = "insert into pessoas(nome, email, idade) value (?,?,?)";

	ps = conn.prepareStatement(sql);
	System.out.println("PreparedStatement aberto");
	
	ps.setString(1, nome);
	ps.setString(2, email);
	ps.setInt(3, Integer.parseInt(idade.toString()));
			
	if (ps.executeUpdate() > 0)
		out.print("Cadastrado com sucesso.");
	else
		out.print("Erro ao cadastrar.");

	response.sendRedirect("index.jsp");
} 
catch (SQLException e) {
	out.print("Exceção SQL: " + e.getMessage());
}
catch (Exception e){
	out.print("Exceção Geral: " + e.getMessage());
}
finally {
	if (ps != null)
		try{
			ps.close();
			ps = null;
			System.out.println("PreparedStatement fechado");
		}
		catch (SQLException e) {
			out.print("Exceção SQL: " + e.getMessage());
		}
		catch (Exception e){
			out.print("Exceção Geral: " + e.getMessage());
		}
	
	if (conn!= null && !conn.isClosed()){
        if (!conn.getAutoCommit()) {
            conn.commit();
            conn.setAutoCommit(true);
        }
        
		ConexaoDAO.fecharConexao(conn);
	}
}

// https://stackoverflow-com.translate.goog/questions/2363785/which-should-i-close-first-the-preparedstatement-or-the-connection?_x_tr_sl=en&_x_tr_tl=pt&_x_tr_hl=pt-BR&_x_tr_pto=sc
%>

</body>
</html>