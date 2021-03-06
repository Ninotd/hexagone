import 'mapbox-gl/dist/mapbox-gl.css'
import "bootstrap";
import { activeTabs } from '../components/calendar_tabs';

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

import { initSlick, initSlick2} from '../plugins/slick';
initSlick();
initSlick2();


import { shopShowEventCard } from '../plugins/shopShowEventCard';
shopShowEventCard();

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import { initMapbox } from '../plugins/init_mapbox.js'
initMapbox();

import { initGallery} from '../components/gallery-shop'
initGallery();

import { initShopChat} from '../plugins/action_cable'
initShopChat();

import { scrollButtonHomepage} from '../components/scroll_homepage'
scrollButtonHomepage();


initUpdateNavbarOnScroll();
initAutocomplete();
new activeTabs();

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

