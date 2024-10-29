import { APP } from './app/app'
import { TEST_EXTERNALLY_IMPORTED } from '@library/lib-3'

// Internal path
console.log(APP);

// External import with internal path alias
console.log(TEST_EXTERNALLY_IMPORTED);

// Success
console.log('Service 3 works');
