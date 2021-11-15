<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Goutte\Client;

class ScrapingController extends Controller
{
    public function scraping(Client $client){
        $crawler = $client->request('GET', 'https://www.computrabajo.com.ar/trabajo-de-informatica?q=informatica');
    }
}
