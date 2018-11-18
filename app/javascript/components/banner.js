import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Life needs cocktails", "Get the best here."],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
