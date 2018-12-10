import Typed from 'typed.js';

const user_name = document.getElementById("user-name-to-hide").innerText

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: [`Bienvenue ${user_name} !`],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
