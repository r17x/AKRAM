<?php

	class Database {
		protected $db_name = "mysql:host=localhost;dbname=arsip;";
		protected $username = "root";
		protected $password = "pwd";
		public $db;
		public function __construct(){
			$this->db= new PDO(
								$this->db_name,
								$this->username,
								$this->password
			);
		}
		public function getAll(){
			$data = $this->db->prepare("SELECT * FROM ?");
			$data->execute((array)$this->table);
			while ( $row = $data->fetch(PDO::FETCH_OBJ)){
				echo $row;
			}
			return $row;
		}
}	
