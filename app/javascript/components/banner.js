import Typed from 'typed.js';


const loadDynamicBannerText = () => {
  const userNameBox = document.getElementById("user-name-to-hide");
  if (userNameBox) {
    const user_name = userNameBox.innerText;
    new Typed('#banner-typed-text', {
      strings: [`Bienvenue ${user_name} !`, "Tu as vu tous les évènements dans ta ville ?", "Viens découvrir les offres de tes commerçants !"],
      typeSpeed: 50,
      loop: true
    });
  };
};
export { loadDynamicBannerText };
