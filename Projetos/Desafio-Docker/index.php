<html>
 <head>
	<title>Exemplo PHP</title>
 </head>
   <body>

	<?php
	ini_set("display_errors", 1);
	header('Content-Type: text/html; charset=iso-8859-1');


	echo 'Versão do PHP: ' . phpversion() . '<br>';

	$servername = "00.000.000.00";
	$username = "root";
	$password = "Senha.123";
	$database = "meubanco";

	// Criar conexão


	$link = new mysqli($servername, $username, $password, $database);

	/* check connection */
	if (mysqli_connect_errno()) {
	    printf("Connect failed: %s\n", mysqli_connect_error());
	    exit();
	}

	$valor_rand1 =  rand(1,999);
	$valor_rand2 = strtoupper(substr(bin2hex(random_bytes(4)), 1));
	$host_name = gethostname();


	$query = "INSERT INTO 
			dados (id, nome, sobrenome, endereco, cidade, host) 
		  VALUES 
		  	('$valor_rand1', '$valor_rand2', '$valor_rand2', '$valor_rand2', '$valor_rand2', '$host_name')
		  ";


	if ($link->query($query) === TRUE) {
	  echo "New record created successfully";
	} else {
	  echo "Error: " . $link->error;
	}

	?>
   </body>
</html>
