import { DATA } from 'lib/stuff'
import { TEST_NOT_IMPORTED as TEST_EXTERNALLY_IMPORTED_IMPORT } from '@library/lib-2'

export const TEST_NOT_IMPORTED = 'LIB_3_TEST_NOT_IMPORTED';
export const TEST_INTERNALLY_IMPORTED = DATA;
export const TEST_EXTERNALLY_IMPORTED = TEST_EXTERNALLY_IMPORTED_IMPORT;