{include file="include/header.tpl"}

<div id="content" class="container-fluid">
	<div class="well">
		<h2>what's new</h2>
		<ul class="thumbnails">
  		<li class="span5">
				<div class="thumbnail">
					<div class="span1 whatsnew">
						<img src="{$IMAGES}whats_new_left.jpg" />
					</div>
					<p>
						The 2013 new items selection features pieces from the Virgin Mary collection, 
						foundatins, bird baths, animals, and more!
					</p>
					<div class="caption">
						<p class="text-info">
							<a href="#" id="new_items" class="gallery_modal">
								&bull; Click here to view 2013 New Items &bull;
							</a>
						</p>
					</div>
				</div>
      </li>
  		<li class="span5">
				<div class="thumbnail">
					<div class="span1 whatsnew">
						<img src="{$IMAGES}whats_new_right.jpg" />
					</div>
					<p>
						2013 also brings a wide collection of new finishes including environmentally friendly
						acid washes and traditional colors.
					</p>
					<div class="caption">
						<p class="text-info">
							<a href="#" id="finishes" class="gallery_modal">
								&bull; Click here to view 2013 Finishes &bull;
							</a>
						</p>
					</div>
				</div>
      </li>
    </ul>
	</div>
</div>

<div class="modal hide" id="new_items_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-body">
		<div id="new_items_carousel" class="carousel slide">
			{include 'include/carousel.tpl' images=$new_items}
		</div>
    <a class="carousel-control left" href="#new_items_carousel" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#new_items_carousel" data-slide="next">&rsaquo;</a>
	</div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>

<div class="modal hide" id="finishes_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-body">
		<div id="finishes_carousel" class="carousel slide">
			{include 'include/carousel.tpl' images=$finishes}
		</div>
    <a class="carousel-control left" href="#finishes_carousel" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#finishes_carousel" data-slide="next">&rsaquo;</a>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
</div>

{include file="include/footer.tpl"}
<script src="{$JS}whats-new.init.js"></script>
