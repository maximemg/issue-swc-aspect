import { DATA } from 'lib/stuff'
import { TEST_NOT_IMPORTED as LIB_1_TEST_NOT_IMPORTED } from '@library/lib-1'

export const TEST_NOT_IMPORTED = 'LIB_2_TEST_NOT_IMPORTED';
export const TEST_IMPORTED = DATA
export const TEST_IMPORTED_FROM_LIB_1 = LIB_1_TEST_NOT_IMPORTED