import $ from 'jquery'

const scrollButtonHomepage = () => {
  $(function() {
    $('#section08').on('click', function(e) {
      e.preventDefault();
      $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 500, 'linear');
    });
  });
}

export { scrollButtonHomepage };

