import Typed from 'typed.js';


const loadDynamicBannerText = () => {
  const userNameBox = document.getElementById("user-name-to-hide");
  if (userNameBox) {
    const user_name = userNameBox.innerText;
    new Typed('#banner-typed-text', {
      strings: [`Bienvenue ${user_name} !`, "Viens découvrir les offres de tes commerçants !", "Tu as vu tous les évènements dans ta ville ?" ],
      typeSpeed: 30,
      loop: true
    });
  };
};
export { loadDynamicBannerText };
