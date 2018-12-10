import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Bienvenue ${current_user.first_name}"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
