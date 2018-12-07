import 'mapbox-gl/dist/mapbox-gl.css'

import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initAutocomplete } from '../plugins/init_autocomplete';

import { initSlick } from '../plugins/slick';
import { shopShowEventCard } from '../plugins/shopShowEventCard';

initUpdateNavbarOnScroll();
initAutocomplete();
initSlick();
shopShowEventCard();

import { initMapbox } from '../plugins/init_mapbox.js'
import { initGallery} from '../components/gallery-shop'
import { initShopChat} from '../plugins/action_cable'


initUpdateNavbarOnScroll();
initAutocomplete();
initMapbox();
initGallery();
initShopChat();




