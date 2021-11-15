<?php

namespace App\Http\Controllers;
use Symfony\Component\DomCrawler\Crawler;

use Illuminate\Http\Request;
use Goutte\Client;
use App\Post;

class ScrapingController extends Controller
{
    public function scraping(Client $client){

        for($i=1 ; $i<= 3; $i++ ){
            $crawler = $client->request('GET',"https://www.computrabajo.com.ar/trabajo-de-informatica?p=$i");
            $this->extractPosts($crawler);
        }
        return back();
    }

    public function extractPosts(Crawler $crawler){
        // Get the latest post in this category and display the titles
        $crawler->filter('article')->each(function (Crawler $node) {
            $title = $node->filter("[class='js-o-link fc_base']")->first()->text();
            $location = $node->filter("[class='fs16 fc_base mt5 mb10']")->first()->text();
            $description = $node->filter("[class='fc_aux t_word_wrap mb10 hide_m']")->first()->text();
            $url = $node->filter("[class='js-o-link fc_base']")->first()->attr('href');

            Post::create([
                'title' => $title,
                'location' => $location,
                'description' => $description,
                'url' => "https://www.computrabajo.com.ar/".$url,
            ]);
        });
    }
}
