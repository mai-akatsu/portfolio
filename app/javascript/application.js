// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
'use strict';
import "@hotwired/turbo-rails"
import "controllers"
import jquery from "jquery"
window.$ = jquery
import "chartkick"

$("#onclick").click(function () {
    alert("いいね😆！");
})
