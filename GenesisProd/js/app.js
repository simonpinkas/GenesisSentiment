var $container = $('.container');
var p5node = $container[0]
new p5(sketch, p5node);


$('.filters-button-group').on('change ', '.checkbox ', function () {
  var filterValue = $(this).attr('data-filter');
  var elementsToToggle = $container.find('.' + filterValue);
  elementsToToggle.toggle();
});


// change is-checked class on buttons
$('.button-group').each(function (i, buttonGroup) {
  var $buttonGroup = $(buttonGroup);
  $buttonGroup.on('click', 'button', function () {
    $buttonGroup.find('.is-checked').removeClass('is-checked');
    $(this).addClass('is-checked');
  });
});
