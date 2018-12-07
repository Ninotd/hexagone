import $ from 'jquery'
import slick from 'slick-carousel'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'

const initSlick = () => {
  $(document).ready(function(){
    $('.events-with-slick').slick({
      centerMode: true,
      centerPadding: '0px',
      slidesToShow: 3,
      infinite: true,
      // autoplay: true,
      // autoplaySpeed: 2000,
      responsive: [
        {
          breakpoint: 768,
          settings: {
            arrows: false,
            centerMode: true,
            centerPadding: '40px',
            slidesToShow: 3
          }
        },
        {
          breakpoint: 480,
          settings: {
            arrows: false,
            centerMode: true,
            centerPadding: '40px',
            slidesToShow: 1
          }
        }
      ]
    });
  });
}

export { initSlick }
