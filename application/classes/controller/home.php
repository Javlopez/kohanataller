<?php defined('SYSPATH') OR die('No direct script access.');

class Controller_Home extends Controller {
	
	protected $template;
	protected $content = "";
	protected $posts;
	
	public function before()
	{
		parent::before();
		$this->posts = ORM::factory("posts");	
		//$posts = new Model_Posts;
		$this->template = View::factory("template");
	}
	
	public function action_index()
	{
		$posts = $this->posts->get_posts();
		
		$this->content = View::factory("listado")->set(array(
			"posts" => $posts,
			"url"	=> Route::url("default",array(
						"controller" => "home", "action" => "detalle"
					   )),
			"add_articulo" => Route::url("default",array(
						"controller" => "home", "action" => "add"
					   )),
		));
		
		//Route::url("default",array("controller" => "home", "action" => "detalle"));
		
				
		//echo $this->posts->last_query();
		
		/*
		$posts = ORM::factory("posts")->find_all()->as_array();
		foreach($posts as $post)
		{
			echo $post["title"];
		}
		
		$postid = 5;
		$posts = ORM::factory("posts")
						->where('id','=',$postid)
						->where('status','=',"activo")
						->find()->as_array();
						
		$posts->title;
		*/

	}
	
	public function action_detalle()
	{
		$id = (int) $this->request->param("id");

		
		$post = $this->posts->get_post($id);
		$this->content = View::factory("detalle")->set(array(
			"post"	=> $post,
		));
	}
	
	public function action_add()
	{
		if($this->request->method() === Request::POST)
		{
			$post = $this->posts->new_post($_POST);
			if($post->saved())
			{
				$this->request->redirect(URL::base()."home");
			}
		}
		$this->content = View::factory("add")->set(array(
			"url_new" => Route::url("default",array(
						"controller" => "home", "action" => "add"
					   )),
		));
	}
	
	public function after()
	{
		$this->template->content = $this->content;
		$this->response->body($this->template);
		parent::after();
	}
	
	
}

