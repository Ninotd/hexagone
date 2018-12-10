import 'mapbox-gl/dist/mapbox-gl.css'
import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

import { initSlick } from '../plugins/slick';
initSlick();

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


initUpdateNavbarOnScroll();
initAutocomplete();


$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
