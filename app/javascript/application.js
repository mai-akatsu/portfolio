// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
'use strict';
import "@hotwired/turbo-rails"
import "controllers"
import jquery from "jquery"
window.$ = jquery
import "chartkick"

$(function () {
    $('.js-btn').on('click', function () {        // js-btnクラスをクリックすると、
        $('.header-menus , .btn-line').toggleClass('open'); // メニューとバーガーの線にopenクラスをつけ外しする
    })
});
