// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require semantic-ui
console.log("a");

$(".ui.dropdown").dropdown();
$(".message .close").on("click", function () {
  $(this).closest(".message").transition("fade");
});