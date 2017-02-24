<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Documento sin t&iacute;tulo</title>
</head>

<body>
<form action="inicio.php" method="post">
	Nombre: <br />
    <input type="text" name="nombre" /><br />
    Apellido: <br />
    <input type="text" name="apellido" /><br />
    e-mail: <br />
    <input type="text" name="email" /><br />
    Comentarios: <br />
    <textarea name="comentarios" cols="40" rows="4"></textarea><br />
    <input type="submit" value="Insertar comentario" />   
</form>
<?php

include ('Database.php');
include ('Comentario.php');

$base = new Database("localhost","root","","visitas");
$comentario1 = new Comentario($base);

if (isset($_POST['nombre'])){	
	$comentario1->insertar_comentario($_POST['nombre'],$_POST['apellido'],$_POST['email'],$_POST['comentarios']);
	unset ($_POST);
	?>
<!--	<script type="text/javascript">
		window.location='inicio.php'
	</script>-->
<?php
}
	$comentario1->paginado(2);

?>

</body>
</html>