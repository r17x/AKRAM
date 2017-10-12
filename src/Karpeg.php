<?php
error_reporting(1);
echo 1;
	require_once('database.php');
	class Karpeg extends Database{
		protected $table = "karpeg";
		protected $fill = ['nip','pangkat','phone','nama'];

		public function __construct($request){
			$this->request = $request;
			parent::construct();
		}

		public function add(){
			$d = $this->db->prepare("
					INSERT INTO $this->table(nama,nip,pangkat,phone)
					VALUES(:nama,:nip,:pangkat,:phone)
				");

			foreach($this->fill as $v){
				$d->bindParam(':'.$v , $this->request[$v], PDO::PARAM_STR);
			}

			$d->execute();
			return $d->fetch(PDO::FETCH_OBJ);
		}
	}

	$c = new Karpeg($_REQUEST);
	echo var_dump($c);


