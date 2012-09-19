{include file="include/header.tpl"}

<div id="content" class="container-fluid">
	<div id="about" class="well">
		<h2>memorials</h2>
		
		<div class="row">
			<div class="span6 offset2">
	  	  <div id="memorials_carousel" class="carousel slide">
  	  	  {include 'include/carousel.tpl' images=$memorials}
    		</div>
    		<a class="carousel-control left" href="#memorials_carousel" data-slide="prev">&lsaquo;</a>
    		<a class="carousel-control right" href="#memorials_carousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
	</div>
</div>

{include file="include/footer.tpl"}

