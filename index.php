<?php
require 'vendor/autoload.php';

use GuzzleHttp\Client;

$client = new Client();
$response = $client->get('https://pokeapi.co/api/v2/pokemon/pikachu');
$data = json_decode($response->getBody(), true);

header('Content-Type: application/json');
echo json_encode([
    'name' => $data['name'],
    'height' => $data['height'],
    'weight' => $data['weight'],
]);
