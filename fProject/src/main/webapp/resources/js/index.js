$(function () {
  const x = $(".slide");
  const slideleft = -1000;

  setInterval(function () {
    x.animate({ left: slideleft }, function () {
      const firstImage = x.find("img:first");
      x.css("left", 0);
      x.append(firstImage);
    });
  }, 3000);
});
