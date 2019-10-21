// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

require("bootstrap/dist/js/bootstrap");

//= require jquery3
//= require popper
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// Dynamic Header on Scroll
$(window).scroll(function() {
  if ($(document).scrollTop() == 0) {
    $("#header-nav").removeClass("tiny");
    $("#logo-container").fadeIn("slow");
  } else {
    $("#header-nav").addClass("tiny");
    $("#logo-container").fadeOut();
  }
});

// trigger adjusts .main-body beneath .header based off header height currently using fixed margin 200px for this
// $(document).ready(function() {
//     var contentPlacement = $('.header').position().top + $('.header').height();
//     $('.main-body').css('margin-top', contentPlacement);
//     console.log(contentPlacement)
// })

require("trix")
require("@rails/actiontext")