#!/bin/bash

#####################################
# load js files to dispenser docker #
#####################################


javascript_to_dispenser(){
  docker cp dist/static/js/app.js dispenser:/opt/docker/conf/javascripts/app.js;
  docker cp dist/static/js/vendor.js dispenser:/opt/docker/conf/javascripts/vendor.js;
  docker cp dist/static/js/app.js.map  dispenser:/opt/docker/conf/javascripts/app.js.map;
  docker cp dist/static/js/vendor.js.map dispenser:/opt/docker/conf/javascripts/vendor.js.map;
  docker cp dist/static/js/manifest.js dispenser:/opt/docker/conf/javascripts/manifest.js;
  docker cp dist/static/js/manifest.js.map dispenser:/opt/docker/conf/javascripts/manifest.js.map;
}

javascript_to_dispenser
