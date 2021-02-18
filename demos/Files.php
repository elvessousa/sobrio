<?php

require_once "FileOperations.php";
require_once "helpers/FilesHelper.php";
require_once "helpers/FileIO.php";

class Files implements FileOperations {
  use FileIO;

  private $files;
  private $txtfile;
  private $logfile;
  private $date;
  private $random;

  function __construct() {
    $this->files = scandir(".");
    $this->txtfile = 'file.txt';
    $this->logfile = 'files.log';
    $this->date = date('D d-M-Y H:i:s');
    $this->random = rand(10,100);
  }

  // Display
  function showFiles() {
    // Remove . and .. directories
    $files = array_diff($this->files, ['.', '..']);
    $phpfiles = glob('*.php');
  
    echo "\nListing current directory contents: \n";
    foreach ($files as $node) {
      # Check for directory
      print is_dir($node) ? "+ $node/\n" : "- $node\n";
    }
    return $this;
  }

  // Dealing with file without file_get_contents()
  function writeTextFile() {
    if (file_exists($this->txtfile) && is_file($this->txtfile)) { 
      echo "\n[1] Writing inside the $this->txtfile: \n";

      # Read file
      $content = $this->readFile($this->txtfile);
      echo "\nContent before: \n$content\n";

      # Write file
      $text = "This is a random number: $this->random. \nGood luck.";
      $this->writeFile($this->txtfile, $text);
      $content = $this->readFile($this->txtfile);

      echo "\nContent after: \n$content\n";
    } else {
      echo "\n[1] No $txtfile found. \n";
    }
    return $this;
  }

  // Makes a directory
  function createFolder() {
    if (!file_exists('directory')) {
      echo "\n[2] Making a directory/ folder.\n";
      mkdir('directory');
    } else {
      echo "\n[2] Directory directory/ already exists.\n";
    }
    return $this;
  }

  // Copies a file
  function copyFile() {
    if (file_exists('directory') && !file_exists('./directory/copied-file.txt')) {
      echo "\n[3] Folder directory/ found. \n";
      echo "\tCopying file to directory/ folder. \n";
      copy('file.txt', './directory/copied-file.txt');
    } else {
      echo "\n[3] Directory directory/ not found or copied file already exists.\n";
    }
    return $this;
  }

  // Creates and append lines to a log file.
  function __destruct() {
    $logHandler = fopen($this->logfile, 'w');
    fwrite($logHandler, "Run at $this->date with success.");
    fclose($logHandler);
    echo "\nDone. \n";
  }
}

$files = new Files();
$files->showFiles()->writeTextFile()->createFolder()->copyFile();

if (FilesHelper::hasContent("file.txt")) {
  echo "\nThe file has a content.\n";
  echo "\nThis verification was made by an static method.\n";
}