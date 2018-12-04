import 'mapbox-gl/dist/mapbox-gl.css'

import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox.js'

initUpdateNavbarOnScroll();
initAutocomplete();
initMapbox();

