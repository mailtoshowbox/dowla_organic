<?php
class ControllerExtensionModuleSpecial extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/special');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

                $this->load->model('tnt/tntallquery');
                $name                       = "tnttabproduct";
                $detail                     = $this->model_tnt_tntallquery->getcommonmoduledetail($name);
                $commonmoduledetail         = json_decode($detail['setting'],1);
                $language_id                = $this->config->get('config_language_id');
                $text =                       $commonmoduledetail['productspecial']['parenttext'][$language_id];
                
                $data['title'] = $text['title'];
                $data['subtitle'] = $text['subtitle'];
                
            

		$data['products'] = array();

		$filter_data = array(
			'sort'  => 'pd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => $setting['limit']
		);
		
		$results = $this->model_catalog_product->getProductSpecials($filter_data);
		
		if ($results) {
			foreach ($results as $result) {

                $speciallabel    = "";
                $date       = $this->model_tnt_tntallquery->getproductspecialdate($result['product_id']);
                $speciallabel    = $date;    
                $dt         = new DateTime();
                $newdate    = $dt->format('Y-m-d H:i:s');
                $date1      = date_create($result['date_available']);
                $date2      = date_create($newdate);
                $diff       = date_diff($date1,$date2);
                $days       = $diff->days;
                if($days < 20){
                    $new = "New";
                }else{
                    $new = "";
                }
                if(!empty($speciallabel)){
                    $salelebal = "Sale";
                }else{
                    $salelebal = "";
                }

                $hoverimage   = $this->model_catalog_product->getProductImages($result['product_id']);
                if(!empty(current($hoverimage))){
                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)['image'], $setting['width'], $setting['height']);
                    
                }else{
                    $hoverimage = $image;
                }

                $date = $this->model_tnt_tntallquery->getproductspecialdate($result['product_id']);
                        
                if(isset($date['date_end'])){
                    $date_end = $date['date_end'];
                }else{
                    $date_end = null;
                }
            
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],

                'hoverimage'    => $hoverimage,
                'speciallabel'  => $salelebal,
                'newlabel'      => $new,
                'date_end'      => $date_end,
            
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(trim(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'))), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}
			

			return $this->load->view('extension/module/special', $data);
		}
	}
}