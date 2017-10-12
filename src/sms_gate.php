<?php 

	require_once(__DIR__.'/../vendor/autoload.php');
	use telesign\sdk\messaging\MessagingClient;
	class SMS {
		protected $phone;
		protected $customer_id = "6F1EF683-577F-49BD-95D3-E7F0D39CB5E4";
		protected $api_key = "IxUsAryVxyipvEiylz7Z1eIxOqRx/m5UjILMmVAYZ8lR7JRLeR3rflrSypTyiVtWYLwYj8/vH5dzIuaPw4T1nQ==";	
		protected $msg_type = 'ARN';
		protected $message;
		public function __construct($phone , $message){
			$this->phone = $phone;
			$this->message = $message;
		}
		public function setPhone($phone){
			$this->phone = $phone;
		}
		public function setMessage($msg){
			$this->message = $msg;
		}
		public function setMsgType($type){
			$this->msg_type = $type;
		}
		public function send(){
			$client = new MessagingClient(
							$this->customer_id,
							$this->api_key
			);
			$res = $client->message($this->phone, $this->message, $this->msg_type);
			print_r($res);
		}
	}
