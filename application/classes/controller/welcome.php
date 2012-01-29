<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Welcome extends Controller {

	public function before()
	{
		parent::before();
		///logeado
		//dsds
	}
	
	public function action_index()
	{
		$vista = View::factory("template");
		$this->response->body($vista);
	}

	
	
	public function after()
	{
		//dsds
		//dsdsds
		parent::after();
	}
} // End Welcome
