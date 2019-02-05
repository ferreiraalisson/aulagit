
<?php
//pegar dados da tela
	
	$login = $_POST["login"];
	$senha = md5($_POST["senha"]);
	
//abrir a conexão com o banco

	include_once 'conexao.php';

//montar a instrução da consulta, verifico se existe o login e a senha no banco.

	$sql = "select * from usuario where login = '".$login."' and senha = '".$senha."'";

	$result = mysqli_query($con,$sql);

	if(mysqli_num_rows($result) == 1){

		echo"Logado.";
		//header("location:painel.php")
	}else{
		echo"Login/Senha Inválido.";
		//$msg = "Login/Senha Inválido.";
		//header("location:index.html"); //redireciona para a pagina html
	}

?>