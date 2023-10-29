// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require semantic-ui

let scroll_bottom = function () {
  if ($("#messages").length > 0) {
    $("#messages").scrollTop($("#messages")[0].scrollHeight);
  }
};

let check_enter = function () {
  $("#message_body").on("keydown", function (e) {
    if (e.keyCode === 13) {
      $("button").click();
      e.target.value = "";
    }
  });
};

$(document).on("ready turbolinks:load", function () {
  console.log("a");
  $(".ui.dropdown").dropdown();
  $(".message .close").on("click", function () {
    $(this).closest(".message").transition("fade");
  });
  check_enter();
  scroll_bottom();
});
import "channels";

