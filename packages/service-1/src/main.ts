import { APP } from 'app/app'
import { TEST_NOT_IMPORTED } from '@library/lib-1'

// Internal path
console.log('\n',APP);

// External import with internal path alias
console.log('\n',TEST_NOT_IMPORTED);

// Success
console.log('\n','Service 1 works');