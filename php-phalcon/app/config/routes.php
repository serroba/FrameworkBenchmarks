<?php

$router = new Phalcon\Mvc\Router(false);

$router->add('/json', array(
    'controller' => 'bench',
    'action' => 'json',
));

$router->add('/db', array(
    'controller' => 'bench',
    'action' => 'db',
));

$router->add('/queries', array(
    'controller' => 'bench',
    'action' => 'queries',
));

$router->add('/fortunes', array(
    'controller' => 'bench',
    'action' => 'fortunes',
));

$router->add('/update', array(
    'controller' => 'bench',
    'action' => 'update',
));

$router->add('/plaintext', array(
    'controller' => 'bench',
    'action' => 'plaintext',
));

$router->add('/mongodb/db', array(
    'controller' => 'mongobench',
    'action' => 'db',
));

$router->add('/mongodb/queries', array(
    'controller' => 'mongobench',
    'action' => 'queries',
));

$router->add('/mongodb/fortunes', array(
    'controller' => 'mongobench',
    'action' => 'fortunes',
));

$router->add('/pg/db', array(
    'controller' => 'bench-pg',
    'action' => 'db',
));

$router->add('/pg/queries', array(
    'controller' => 'bench-pg',
    'action' => 'queries',
));

return $router;
