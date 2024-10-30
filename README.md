# Demonstrate importing a lib doesn't work with 2.0.1

Service imports from lib-2 which exposes 2 variables (one from index.ts, the other one imported with a path alias)

```
bazel run //packages/service:run
```

Works with 2.0.0

Throws with 2.0.1

```
Error: Cannot find module '../../../../../.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/_libraries/lib-2/src/index.ts'
Require stack:
- /home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service/run_/run.runfiles/_main/packages/service/src/main.js
    at Module._resolveFilename (node:internal/modules/cjs/loader:1145:15)
    at Module._load (node:internal/modules/cjs/loader:986:27)
    at Module.require (node:internal/modules/cjs/loader:1233:19)
    at require (node:internal/modules/helpers:179:18)
    at Object.<anonymous> (/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service/run_/run.runfiles/_main/packages/service/src/main.js:2:15)
    at Module._compile (node:internal/modules/cjs/loader:1358:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1416:10)
    at Module.load (node:internal/modules/cjs/loader:1208:32)
    at Module._load (node:internal/modules/cjs/loader:1024:12)
    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:174:12) {
  code: 'MODULE_NOT_FOUND',
  requireStack: [
    '/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service/run_/run.runfiles/_main/packages/service/src/main.js'
  ]
}
```