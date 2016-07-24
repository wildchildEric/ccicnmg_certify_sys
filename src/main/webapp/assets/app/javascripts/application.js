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

$(document).ready(function () {
    if (!null) {
        $('nav ul').jarvismenu({
            accordion: true,
            speed: 0,
            closedSign: '<em class="fa fa-plus-square-o"></em>',
            openedSign: '<em class="fa fa-minus-square-o"></em>'
        });
    } else {
        alert("Error - menu anchor does not exist");
    }
});
