<?php
require_once "base58/ServiceInterface.php";
require_once "base58/GMPService.php";
require_once "base58/Base58.php";

class NSA_SSH
{
    private $connection = null;
    private $connected = false;
    private $authenticated = false;
    
    function __construct()
    {
        
    }
    
    function __destruct()
    {
        $this->disconnect();
    }
    
    function connect($serverName, $serverPort, $methods = null, $callbacks = null)
    {
        $this->connection = ssh2_connect($serverName, $serverPort, $methods, $callbacks);
        if($this->connection)
        {
            $this->connected = true;
        }
        return $this->connection;
    }
    
    function disconnect()
    {
        if($this->connected)
        {
            if($this->authenticated)
            {
                $this->exec("exit");
            }
            $this->authenticated = false;
            $this->connection = null;
            $this->connected = false;
        }
    }
    
    function fingerprint($flags)
    {
        return ssh2_fingerprint($this->connection, $flags);
    }
    
    function authPass($username, $password)
    {
        $ret = ssh2_auth_password($this->connection, $username, $password);
        if($ret)
        {
            $this->authenticated = true;
        }else
        {
            $this->authenticated = false;
        }
        return $ret;
    }
    
    function authKey($username, $pubKeyFile, $privKeyFile, $passPhrase = null)
    {
        $ret = ssh2_auth_pubkey_file($this->connection, $username, $pubKeyFile, $privKeyFile, $passPhrase);
        if($ret)
        {
            $this->authenticated = true;
        }else
        {
            $this->authenticated = false;
        }
        return $ret;
    }
        
    function exec($cmd)
    {
        if($this->connected)
        {
            return ssh2_exec($this->connection, $cmd." && echo __NSA_EXEC_DONE__");
        }
        return null;
    }
    
    function readStream($stream, $timeOut = 1800)
    {
        if(!$stream) 
        {
            return null;
        }
        $timeStart = time();
        stream_set_blocking($stream, true);
        $data = "";
        while (true)
        {
            if(!$stream) break;
            $tmp = fread($stream, 4096);
            //if(!$tmp) break;
            
            $data .= $tmp;
            
			$end = strrpos($data, "__NSA_EXEC_DONE__");
            if ($end !== false)
            {
                $data = substr($data, 0, $end);
                break;
            }
            if ((time()-$timeStart) > $timeOut )
            {
                echo "Fail: timeout of $timeOut seconds has been reached.".PHP_EOL;
                break;
            }
        }        
        fclose($stream);
        return $data;
    }
}
?>