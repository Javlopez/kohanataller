<div>
	<h1>Lista de posts </h1>
	<ul>
	<?php foreach($posts as $post): ?>
		<li><a href="<?php echo $url."/".$post->id ?>"><?php echo $post->title ?></a></li>
	<?php endforeach; ?>
	
	<a href="<?php echo $add_articulo ?>">Agregar articulo</a>
	<?php /* if($a == $b): ?>
	
	<?php elseif($b==$C): ?>
	
	<?php else: ?>
	
	<?php endif;*/ ?>
	</ul>
</div>