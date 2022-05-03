<?php
$directory = getcwd()."";

$files1 = scandir($directory);

$num_files = count($files1) - 2;

echo $num_files . " files<br>";

for($i=0; $i<count($files1);$i++){
	echo $files1[$i]." ";
}

?>