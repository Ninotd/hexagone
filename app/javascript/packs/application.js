import 'mapbox-gl/dist/mapbox-gl.css'

import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initAutocomplete } from '../plugins/init_autocomplete';

import { initSlick } from '../plugins/slick';

initUpdateNavbarOnScroll();
initAutocomplete();
initSlick();

import { initMapbox } from '../plugins/init_mapbox.js'
import { initGallery} from '../components/gallery-shop'
import { initShopChat} from '../plugins/action_cable'
import { scrollLastMessageIntoView} from '../plugins/scroll'

initUpdateNavbarOnScroll();
initAutocomplete();
initMapbox();
initGallery();
initShopChat();
scrollLastMessageIntoView();



