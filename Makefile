SHELL := /bin/bash


source/tiles/% : source/images/%.jpg
	krpanotools makepano -config=source/krpano-to-marzipano.config $<
