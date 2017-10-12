<?php
echo "anu";
require_once(__DIR__.'/database.php');
require_once(__DIR__.'/sms_gate.php');
class Arsip extends Database{

	protected $table='karpeg';
	protected $findParam='id';
	protected $findParamD='kode = :kode';
	protected $fill = array('nip','nama','pangkat','phone');
	public $request=array();
	public function __construct($request=null){
		parent::__construct();
		$this->setRequest($request);
	}
	public function add(){
		$add = $this->db->prepare("INSERT INTO ".$this->table."(nip,nama,pangkat,phone) VALUES(:nip,:nama,:pangkat,:phone)");
		foreach ($this->fill as $key => $value) {
			if ( $value =='phone'){
				$phone = $this->request[$value];
			}
			
			$add->bindParam(":".$value, $this->request[$value],PDO::PARAM_STR);
		}
		$add->execute();
		$arsip = $add->fetch(PDO::FETCH_OBJ);
		$msg = "Berkas Anda Telah Dikirim, Terima Kasih";
		if ($add->rowCount() > 0){
			$sms = new SMS($phone, $msg);
			$sms->send();
		}
	}
	public function setRequest($request){
		$this->request=$request;
	}

	public function update(){
		$edit = $this->db->prepare("UPDATE ".$this->table." set nip=:nip, nama=:nama, pangkat=:pangkat, phone=:phone WHERE id=:oldid");
		foreach ($this->fill as $key => $value) {
			$edit->bindParam(":".$value, $this->request[$value],PDO::PARAM_STR);
		}
		$edit->bindParam(":oldid", $this->request['oldid'],PDO::PARAM_INT);
		$edit->execute();
		return $edit->fetch(PDO::FETCH_OBJ);
	}
}

