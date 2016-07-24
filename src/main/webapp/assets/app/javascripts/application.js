var $ = require('jquery');
/*---------twitter/bootstrap----------*/
require('bootstrap/js/transition');
require('bootstrap/js/alert');
require('bootstrap/js/modal');
require('bootstrap/js/dropdown');
// require('bootstrap/js/scrollspy');
require('bootstrap/js/tab');
require('bootstrap/js/tooltip');
require('bootstrap/js/popover');
require('bootstrap/js/button');
// require('bootstrap/js/collapse');
// require('bootstrap/js/carousel');
// require('bootstrap/js/affix');
/*------------------------------------*/

var app = require('javascripts/app');

$(document).ready(function () {
    app.mobile_toggle();
    app.init_menu_tree();
    app.init_toggle_nav();
});
$(document).ajaxSend(app.startSpinner);
$(document).ajaxComplete(app.stopSpinner);
