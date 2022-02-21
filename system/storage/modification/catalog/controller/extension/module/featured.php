<?php
class ControllerExtensionModuleFeatured extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/featured');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

                $this->load->model('tnt/tntallquery');
                $name                       = "tnttabproduct";
                $detail                     = $this->model_tnt_tntallquery->getcommonmoduledetail($name);
                $commonmoduledetail         = json_decode($detail['setting'],1);
                $language_id                = $this->config->get('config_language_id');
                $text =                       $commonmoduledetail['productfeature']['parenttext'][$language_id];
                
                $data['title'] = $text['title'];
                $data['subtitle'] = $text['subtitle'];
            

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {

                $speciallabel    = "";
                $date       = $this->model_tnt_tntallquery->getproductspecialdate($product_info['product_id']);
                $speciallabel    = $date;    
                $dt         = new DateTime();
                $newdate    = $dt->format('Y-m-d H:i:s');
                $date1      = date_create($product_info['date_available']);
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

                $hoverimage   = $this->model_catalog_product->getProductImages($product_info['product_id']);
                if(!empty(current($hoverimage))){
                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)['image'], $setting['width'], $setting['height']);
                    
                }else{
                    $hoverimage = $image;
                }
                $date = $this->model_tnt_tntallquery->getproductspecialdate($product_info['product_id']);
                        
                if(isset($date['date_end'])){
                    $date_end = $date['date_end'];
                }else{
                    $date_end = null;
                }
            
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}

					$data['products'][] = array(
						'product_id'  => $product_info['product_id'],

                'hoverimage'    => $hoverimage,
                'speciallabel'  => $salelebal,
                'newlabel'      => $new,
                'date_end'     => $date_end,
            
						'thumb'       => $image,
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
						'price'       => $price,
						'special'     => $special,
						'tax'         => $tax,
						'rating'      => $rating,
						'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
					);
				}
			}
		}

		if ($data['products']) {
			return $this->load->view('extension/module/featured', $data);
		}
	}
}