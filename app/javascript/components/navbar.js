const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  const banner = document.querySelector('.banner');
  let revealHeigth = 0;
  if (banner) {
    const bannerHeight = parseInt(window.getComputedStyle(banner).height, 10)
    const navbarHeight = parseInt(window.getComputedStyle(navbar).height, 10)
    revealHeigth = bannerHeight - navbarHeight
  }
  if (navbar) {
    // debugger
    window.addEventListener('scroll', () => {
      if (window.scrollY >= revealHeigth) {
        navbar.classList.add('navbar-wagon-white');
      } else {
        navbar.classList.remove('navbar-wagon-white');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
