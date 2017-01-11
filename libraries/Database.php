<?php



class Database {

    public $host = DB_HOST;
    public $username = DB_USER;
    public $password = DB_PASS;
    public $dbname = DB_NAME;
    public $link;
    public $error;

    public function __construct() {
        $this->connect();
    }

    private function connect() {

        try {
            $this->link = new mysqli($this->host, $this->username, $this->password, $this->dbname);
        } catch (Exception $exc) {
            echo $exc->getMessage();
            return false;
        }
    }

    public function select($query) {
        try {
            $result = $this->link->query($query) or die(mysqli_error());

            if ($result->num_rows > 0) {
                return $result;
            } else {
                return false;
            }
        } catch (Exception $exc) {
            echo $exc->getMesage();
        }
    }

    public function insert($query) {
        try {
            $result = $this->link->query($query);

            if ($result) {
                header("Location:index.php?msg=" . urldecode('Record Added'));
            } else {
                die($this->link->error);
            }
        } catch (Exception $exc) {
            echo $exc->getMesage();
        }
    }

    public function update($query) {
        try {
            $result = $this->link->query($query);

            if ($result) {
                header("Location:index.php?msg=" . urldecode('Record Updated'));
            } else {
                die($this->link->error);
            }
        } catch (Exception $exc) {
            echo $exc->getMesage();
        }
    }
    
        public function delete($query) {
        try {
            $result = $this->link->query($query);

            if ($result) {
                header("Location:index.php?msg=" . urldecode('Record Deleted'));
            } else {
                die($this->link->error);
            }
        } catch (Exception $exc) {
            echo $exc->getMesage();
        }
    }
}   
    
    
 
