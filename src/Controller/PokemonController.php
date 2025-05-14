<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Attribute\Route;

final class PokemonController extends AbstractController
{
    #[Route('/pokemon', name: 'app_pokemon')]
    public function index(): JsonResponse
    {
        return $this->json([
            'message' => 'Hola mundo!',
            'path' => 'src/Controller/PokemonController.php',
        ]);
    }
}
