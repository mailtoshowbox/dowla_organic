<?php

class ControllerCommonHeader extends Controller {

	public function index() {
		error_reporting(E_ALL);
        ini_set('display_errors', 1);
		// Analytics

		$this->load->model('setting/extension');



		$data['analytics'] = array();



		$analytics = $this->model_setting_extension->getExtensions('analytics');



		foreach ($analytics as $analytic) {

			if ($this->config->get('analytics_' . $analytic['code'] . '_status')) {

				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get('analytics_' . $analytic['code'] . '_status'));

			}

		}



		if ($this->request->server['HTTPS']) {

			$server = $this->config->get('config_ssl');

		} else {

			$server = $this->config->get('config_url');

		}



		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {

			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');

		}



		$data['title'] = $this->document->getTitle();



		$data['base'] = $server;

                $data['callno'] = $this->config->get('config_telephone');
                $data['email'] = $this->config->get('config_email');
                $data['contactus'] = "Contact us";
                $data['callnotext'] = "QUESTIONS? CALL :";
            
                if (!isset($this->request->get['route']) || $this->request->get['route'] == 'common/home'){
                    $data['page'] = "home";
                    }else{
                        $data['page'] = "not";
                    }
                        if(empty($_SERVER['QUERY_STRING']) || $_SERVER['QUERY_STRING'] == "route=common/home"){
                    $data['badclassname'] = "badindex";
                }else{
                    $data['badclassname'] = "";
                }
                    $data['loaderimage'] = HTTP_SERVER ."image/catalog/themefactory/loader/3.gif";
                    $data['loadingimage'] = HTTPS_SERVER."/image/catalog/themefactory/loader/loader.gif";
                       
                       /*$data['themeoption'] = $this->load->controller('common/tntthemeoption');*/
            if(empty($_SERVER['QUERY_STRING']) || $_SERVER['QUERY_STRING'] == "route=common/home"){
                $data['badclassname'] = "badindex";
            }else{
                $data['badclassname'] = "";
            }
                
            

		$data['description'] = $this->document->getDescription();

		$data['keywords'] = $this->document->getKeywords();

		$data['links'] = $this->document->getLinks();

		$data['styles'] = $this->document->getStyles();

		$data['scripts'] = $this->document->getScripts('header');

		$data['lang'] = $this->language->get('code');

		$data['direction'] = $this->language->get('direction');



		$data['name'] = $this->config->get('config_name');



		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {

			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');

		} else {

			$data['logo'] = '';

		}



		$this->load->language('common/header');



		// Wishlist

		if ($this->customer->isLogged()) {

			$this->load->model('account/wishlist');



			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());

		} else {

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));

		}



		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		

		$data['home'] = $this->url->link('common/home');

		$data['wishlist'] = $this->url->link('account/wishlist', '', true);

		$data['logged'] = $this->customer->isLogged();

		$data['account'] = $this->url->link('account/account', '', true);

		$data['register'] = $this->url->link('account/register', '', true);

		$data['login'] = $this->url->link('account/login', '', true);

		$data['order'] = $this->url->link('account/order', '', true);

		$data['transaction'] = $this->url->link('account/transaction', '', true);

		$data['download'] = $this->url->link('account/download', '', true);

		$data['logout'] = $this->url->link('account/logout', '', true);

		$data['shopping_cart'] = $this->url->link('checkout/cart');

		$data['checkout'] = $this->url->link('checkout/checkout', '', true);

		$data['contact'] = $this->url->link('information/contact');

		$data['telephone'] = $this->config->get('config_telephone');

		

		$data['language'] = $this->load->controller('common/language');

		$data['currency'] = $this->load->controller('common/currency');

		$data['search'] = $this->load->controller('common/search');

		$data['cart'] = $this->load->controller('common/cart');

		$data['menu'] = $this->load->controller('common/menu');



		if(empty($_SERVER['QUERY_STRING']) || $_SERVER['QUERY_STRING'] == "route=common/home"){

			$data['badclassname'] = "badindex";

		}else{

			$data['badclassname'] = "";

		}

		                  // echo "<pre>"; print_r($_SERVER);die;



		return $this->load->view('common/header', $data);

	}

}

