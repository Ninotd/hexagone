import $ from 'jquery'
import slick from 'slick-carousel'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'

const initSlick = () => {
  $(document).ready(function(){
    $('.events-with-slick').slick({
      centerMode: true,
      centerPadding: '100px',
      slidesToShow: 3,
      swipeToSlide: true,
      infinite: true,
      // autoplay: true,
      // autoplaySpeed: 3000,
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

const initSlick2 = () => {
  $(document).ready(function(){
    console.log("lol")
    $('.modal-slick').slick();
  });
}

export { initSlick, initSlick2}
