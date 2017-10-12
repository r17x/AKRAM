<?php 
  /**
  * 
  */
  session_start();
  require_once('models/database.php');
  class Login extends Database
  {
    protected $username;
    protected $password;
    protected $request;
    protected $table='users';
    public function __construct($request)
    {
        parent::__construct();
        $this->request = $this->setUser($request);
        $this->setUser($request);
    }
    public function setUser($request){
      if ($request['username'] && $request['password']) {
        $this->username = $request['username'];
        $this->password = $request['password'];
        return array(
        'username' => $request['username'],
        'password' => md5($request['password']));
      }
    }
    public function checkUser(){
      $user = $this->db->prepare("SELECT * FROM ".$this->table." WHERE username=:username AND password=:password");
      $user->execute($this->request);
      if ($user->rowCount() > 0) {
        $this->makeSession();
        header('location:admin.php');
      }
      else echo "<script>alert('Login Gagal');</script>";
    }

    public function makeSession(){
      foreach ($this->request as $key => $value) {
          $_SESSION[$key] = $value;
      }
      $_SESSION['user_auth'] = true;
    }

  }


  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $auth = new Login($_REQUEST);
    $auth->checkUser();
  }
  if ($_SESSION['user_auth']) {
    header('location:index.php');  
  }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <form class="form-signin" method="post" name="login">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputusername" class="sr-only">Username</label>
        <input type="username" id="inputusername" class="form-control" placeholder="username" name="username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
