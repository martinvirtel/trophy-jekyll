SHELL := /bin/bash


source/tiles/% : source/images/%.jpg
	krpanotools makepano -config=source/krpano-to-marzipano.config $<


serve-marzipano:
	cd _site/marzipano/ ; python -m http.server --bind 0.0.0.0 8100  


get-marzipano-source:
	cp -uv $$(find _site/marzipano/vendor/ -type f) marzipano/vendor/ && \
	cp -uv $$(find _site/marzipano -maxdepth 1 -type f ) marzipano/
