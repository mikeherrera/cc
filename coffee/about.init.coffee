$ ->
	images = [
		"http://www.continentalstudiosinc.com/assets/images/about/new1-small.jpeg",
		"http://www.continentalstudiosinc.com/assets/images/about/new2.jpeg",
		"http://www.continentalstudiosinc.com/assets/images/about/small-glen.jpeg",
		"http://www.continentalstudiosinc.com/assets/images/about/small-salran.jpeg",
		"http://www.continentalstudiosinc.com/assets/images/about/small-toni.jpeg",
		"http://www.continentalstudiosinc.com/assets/images/about/small-whole.jpeg"
	];
	imgTarget = '#rotate'
	rotateTime = 3000
	
	$(imgTarget).attr 'src', images[0]
	index = 1
	cycle = ->
		setTimeout(  ->
			if index < images.length
				$(imgTarget).attr 'src', images[index]
				index++
				cycle()
			else
				$(imgTarget).attr 'src', images[0]
				index = 1
				cycle()
		, rotateTime)
	cycle()
