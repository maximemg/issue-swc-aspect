import { APP } from 'app/app'
import { TEST_IMPORTED } from '@library/lib-1'

// Internal path
console.log(APP);

// External import with internal path alias
console.log(TEST_IMPORTED);

// Success
console.log('Service 1 works');