import 'mapbox-gl/dist/mapbox-gl.css'

import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox.js'
import { initGallery} from '../components/gallery-shop'

initUpdateNavbarOnScroll();
initAutocomplete();
initMapbox();
initGallery();

