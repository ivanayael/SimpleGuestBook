<?php
class Database{
	private $conexion;
	
	public function __construct($host,$user,$pass,$base){
		$this->conexion=mysqli_connect($host, $user, $pass,$base) 
		or exit("No se pudo establecer una conexión. Mysqli_error: ".mysqli_error($this->conexion));
	}
	
	public function ejecutar_query($query){
		$result = mysqli_query($this->conexion,$query) or exit("Error al ejecutar el query. Mysqli_error: ".mysqli_error($this->conexion));
		
		switch (strtoupper(trim(substr($query, 0, 6)))){
			case "SELECT":
				if (mysqli_num_rows($result)!=0){
					while ($row = mysqli_fetch_array($result)){
						$datos[] = $row;
					}
					return $datos;
				}else{
					return false;
				}
				break;
			case "DELETE": 
				//return ($result ? true : false);
				if ($result){
					return true;
				}else{
					return false;
				}
			case "INSERT": 
				if ($result){
					return true;
				}else{
					return false;
				}
			case "UPDATE": 
				if ($result){
					return true;
				}else{
					return false;
				}
		}
	}
}
?>