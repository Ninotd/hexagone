const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  const banner = document.querySelector('.banner');
  let revealHeigth = 0;
  if (banner) {
    const bannerHeight = parseInt(window.getComputedStyle(banner).height, 10)
    const navbarHeight = parseInt(window.getComputedStyle(navbar).height, 10)
    revealHeigth = bannerHeight - navbarHeight
    window.addEventListener('scroll', () => {
      if (window.scrollY >= revealHeigth) {
      //   console.log("banner height:")
      // console.log(bannerHeight)
      // console.log("navbar height:")
      // console.log(navbarHeight)
      // console.log("revealHeigth height:")
      // console.log(revealHeigth)
      // console.log(scrollY)
        navbar.classList.add('navbar-wagon-white');
      } else {
        navbar.classList.remove('navbar-wagon-white');
      }
    });
  } else if (navbar) {
    navbar.classList.add('navbar-wagon-white');
    // debugger
  }
};

export { initUpdateNavbarOnScroll };
