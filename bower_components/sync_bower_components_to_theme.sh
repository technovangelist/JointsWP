#!/bin/zsh
js=(fastclick/lib/fastclick.js foundation/js/foundation.js jquery.cookie/jquery.cookie.js jquery-placeholder/jquery.placeholder.js modernizr/modernizr.js)
for jsfile in $js
do
	rsync -av --progress bower_components/$jsfile library/js/
done

rsync -av --progress bower_components/foundation/scss/* library/scss/foundation