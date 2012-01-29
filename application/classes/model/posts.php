<?php defined('SYSPATH') or die('No direct access allowed.');

class Model_Posts extends ORM {

	protected $_table_names_plural = FALSE;
	
	public function get_posts()
	{
		return ORM::factory("posts")->find_all();
	}
	
	public function get_post($id = 0 )
	{
		return ORM::factory("posts")->where('id','=',$id)->find();
	}
	
	public function new_post($data)
	{
		$post = ORM::factory("posts");
		$post->title = $data["title"];
		$post->content = $data["content"];
		$post->save();
		return $post;
	}
}