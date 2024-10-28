import { TEST_NOT_IMPORTED} from '@lib/lib-2' 

console.log(TEST_NOT_IMPORTED);

(async () => {
  const { TEST_IMPORTED } = await import('@lib/lib-3');
   console.log(TEST_IMPORTED);
})();

console.log('Service 2 works')