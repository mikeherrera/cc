      <!-- Carousel items -->
      <div class="carousel-inner">
				{foreach $images as $k=>$image}
					{if $k eq 0}
						<div class="active item">
					{else}
						<div class="item">
					{/if}
						<img src="{$image}" />
					</div>
				{/foreach}
      </div>
