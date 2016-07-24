var $ = require('jquery');
var app = {
    LEFT_NAV_VISIBLE_KEY: 'side_bar_visible',
    mobile_toggle: function () {//Mobile Phone view Toggle function
        $('[data-toggle="offcanvas"]').click(function () {
            $('.row-offcanvas').toggleClass('active')
        });
    },
    init_menu_tree: function () {// INITIALIZE LEFT MENU TREE
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
    },
    modal_show_handler: function (event) {
        if (event.namespace === 'bs.modal') {
            var zIndex = 1040 + (10 * $('.modal:visible').length);
            $(this).css('z-index', zIndex);
            setTimeout(function () {
                $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
            }, 0);
        }
    },
    modal_hidden_handler: function (event) {
        if (event.namespace === 'bs.modal') {
            // restore the modal-open class to the body element, so that scrolling works
            // properly after de-stacking a modal.
            $('.modal:visible').length && $(document.body).addClass('modal-open');
            //remove the modal div
            var modal_div = $(this);
            setTimeout(function () {
                modal_div.remove();
            }, 0);
        }
    },
    startSpinner: function () {
        $('#loading-indicator').show();
    },
    stopSpinner: function () {
        $('#loading-indicator').hide();
    },
    get_topmost_element: function (selector) {
        var element = $(selector);
        var top_most_element = null;
        if (element.length === 1) {
            top_most_element = element;
        } else if (element.length > 1) {
            var max_z_index = 0;
            element.each(function () {
                var parents_with_zIndex = $(this).parents().filter(function () {
                    var z_index = $(this).css('z-index');
                    return z_index !== 'auto' && z_index !== '0';
                });
                var zIndex = 0;
                if (parents_with_zIndex.length !== 0) {
                    zIndex = parseInt(parents_with_zIndex.first().css('z-index'));
                }
                if (zIndex > max_z_index) {
                    max_z_index = zIndex;
                    top_most_element = $(this);
                }
            });
        }
        return top_most_element;
    },
    find_element: function (parent_id, selector) {
        var element = null;
        if (parent_id !== null) {
            element = $('#' + parent_id).find(selector);
        } else {
            element = $(selector);
        }
        return element;
    },
    window_has_v_scroll_bar: function () {
        return ($(document).height() > $(window).height());
    },
    window_has_h_scroll_bar: function () {
        return $(document).width() > $(window).width();
    },
    init_table_fixed_header: function () {
        var table = $('.table-fixed-header');
        if (table.length === 1) {
            var parent_div = table.parent()[0];
            var hasHorizontalScrollbar = parent_div.scrollWidth > parent_div.clientWidth;
            $('thead.header-copy').remove();
            if (!hasHorizontalScrollbar && $(window).width() >= 768) {
                table.fixedHeader();
            }
        }
    },
    init_toggle_nav: function () {
        var toggle_nav_div = $('#toggle_nav_div');
        if (window.localStorage) {
            var side_bar = $('.sidebar');
            var main_div = $('#main_content_div');
            var side_bar_visible = function () {
                var store_value = localStorage.getItem(app.LEFT_NAV_VISIBLE_KEY);
                return store_value == 'true' || store_value == null;
            };
            var hide_nav_menu = function () {
                side_bar.hide();
                main_div.attr("class", "col-sm-12");
            };
            var show_nav_menu = function () {
                side_bar.show();
                main_div.attr("class", "col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2");
            };
            side_bar_visible() ? show_nav_menu() : hide_nav_menu();
            toggle_nav_div.click(function () {
                if (side_bar_visible()) {
                    hide_nav_menu();
                    localStorage.setItem(app.LEFT_NAV_VISIBLE_KEY, false);
                } else {
                    show_nav_menu();
                    localStorage.setItem(app.LEFT_NAV_VISIBLE_KEY, true);
                }
                app.init_table_fixed_header();
            });
        } else {
            toggle_nav_div.hide();
        }
    },
    isEmpty: function (str) {
        return (!str || 0 === str.length);
    },
    set_default_field_for_search_form: function (search_field) {
        var query_name_sel = $("#q_c_0_a_0_name");
        if (query_name_sel.val() == '') {
            query_name_sel
                .find("option[value=" + search_field + "]")
                .attr("selected", "selected");
            $("#q_c_0_p").find("option[value=cont]").attr("selected", "selected");
        }
    },
    init_popover: function () {
        var pop_overs = $("[data-toggle=popover]");
        pop_overs.popover(
            {
                html: true,
                container: "body",
                placement: "bottom",
                trigger: "focus"
            }
        );
    },
    init_popover_in_modal: function (div_id) {
        var pop_overs = $("[data-toggle=popover]");
        pop_overs.popover(
            {
                html: true,
                container: $('#' + div_id).closest('.modal'),
                placement: "bottom",
                trigger: "focus"
            }
        );
    }
};
module.exports = app;