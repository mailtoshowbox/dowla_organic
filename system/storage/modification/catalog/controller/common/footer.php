<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['tracking'] = $this->url->link('information/tracking');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', true);
		$data['affiliate'] = $this->url->link('affiliate/login', '', true);
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		 $this->load->language('extension/module/mrfcustomtext');
        	$language_id            = $this->config->get('config_language_id');
        	$data['storeemail']     = $this->config->get('config_email');
        	$data['storetelephone'] = $this->config->get('config_telephone');
        	$data['storeaddress']   = nl2br($this->config->get('config_address'));
        	$sqlquery               = $this->db->query("SELECT * FROM " . DB_PREFIX . "country WHERE country_id              = '" . $this->config->get('config_country_id') . "' ");
        	$data['countriesname']  = $sqlquery->row['name'];
        	$data['socialicon']     = $this->load->controller('common/tntsocialicon');
        	$data['payemtnicon']    = $this->load->controller('common/tntpaymenticon');
        	
        	
        	$data['copyright']      = $this->config->get('tntthemesetting_footer')['language'][$language_id]['copyrighttext'];
        	$data['copyrightlink']  = $this->config->get('tntthemesetting_footer')['language'][$language_id]['copyrightlink'];
                    


            
            $language_id            = $this->config->get('config_language_id');
            $data['storeemail']     = $this->config->get('config_email');
            $data['storetelephone'] = $this->config->get('config_telephone');
            $data['storeaddress']   = nl2br($this->config->get('config_address'));
            $sqlquery               = $this->db->query("SELECT * FROM " . DB_PREFIX . "country WHERE country_id              = '" . $this->config->get('config_country_id') . "' ");
            $data['countriesname']  = $sqlquery->row['name'];
            $data['socialicon']     = $this->load->controller('common/tntsocialicon');
            $data['payemtnicon']    = $this->load->controller('common/tntpaymenticon');
            $data['footerlogo']    = $this->load->controller('common/tntfooterlogo');
            
            $data['copyright']      = $this->config->get('tntthemesetting_footer')['language'][$language_id]['copyrighttext'];
            $data['copyrightlink']  = $this->config->get('tntthemesetting_footer')['language'][$language_id]['copyrightlink'];
                    
                   
                    $data['newsletterdata']       = $this->load->controller('common/tntnewsletter');
                    $data['blog'] = $this->load->controller('common/tntblog');
                    
                    $customtext             = $this->config->get('tntthemesetting_footer')['language'][$language_id];
                    $data['copyright']      = $customtext['copyrighttext'];
                    $data['copyrightlink']  = $customtext['copyrightlink'];
               
            
		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = ($this->request->server['HTTPS'] ? 'https://' : 'http://') . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		$data['scripts'] = $this->document->getScripts('footer');
		
		return $this->load->view('common/footer', $data);
	}
}
