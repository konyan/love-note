open_modal = function () {
  $(".ui.modal").modal("show");
};

close_modal = function () {
  $(".ui.modal").modal("hide");
};

$(document).ready(function () {
  $(".login_btn").on("click", function () {
    console.log("HEHE");
    $(".ui.modal").modal("show");
  });
});
