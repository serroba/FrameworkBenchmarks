<?php
//
// ORM Database Test
//

// create_product.php
require_once "bootstrap.php";


$world = $entityManager->find('World', mt_rand(1, 10000));

var_dump($world);die;
// Create an array with the response string.
$arr = array();

// For each query, store the result set values in the response array
for ($i = 0; $i < $query_count; $i++) {
  // Choose a random row
  // http://www.php.net/mt_rand
  $id = mt_rand(1, 10000);

  $world = World::find_by_id($id);

  // Store result in array.
  $arr[] = $world->to_json();
}

// Use the PHP standard JSON encoder.
// http://www.php.net/manual/en/function.json-encode.php
echo json_encode($arr);
?>
