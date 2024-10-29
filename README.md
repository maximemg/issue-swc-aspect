# Services

## Service 1

- imports 'lib-1' which does not have an internal path alias.
- has an internal path alias to 'app/'.

`bazel run //packages/service-1:run`

## Service 2

- imports 'lib-2' which has an internal path alias.
- no internal path alias to 'app/'.

`bazel run //packages/service-2:run`

## Service 3

- imports 'lib-3' which imports lib 2 which has an internal path alias.
- no internal path alias to 'app/'.

`bazel run //packages/service-3:run`

# Results :

## 2.0.0

### Service 1

OK

### Service 2
OK

### Service 3

KO

```
Error: Cannot find module '../../../../../../.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/sandbox/linux-sandbox/39/execroot/_main/lib-2/src/index'
Require stack:
- /home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-3/run_/run.runfiles/_main/packages/_libraries/lib-3/src/index.js
- /home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-3/run_/run.runfiles/_main/packages/service-3/src/main.js
    at Module._resolveFilename (node:internal/modules/cjs/loader:1145:15)
    at Module._load (node:internal/modules/cjs/loader:986:27)
    at Module.require (node:internal/modules/cjs/loader:1233:19)
    at require (node:internal/modules/helpers:179:18)
    at Object.<anonymous> (/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-3/run_/run.runfiles/_main/packages/_libraries/lib-3/src/index.js:20:15)
```


## 2.0.1

### Service 1
KO 

```
Error: Cannot find module '../../../../../.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-1/src/app/app'
Require stack:
- /home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-1/run_/run.runfiles/_main/packages/service-1/src/main.js
    at Module._resolveFilename (node:internal/modules/cjs/loader:1145:15)
    at Module._load (node:internal/modules/cjs/loader:986:27)
    at Module.require (node:internal/modules/cjs/loader:1233:19)
    at require (node:internal/modules/helpers:179:18)
    at Object.<anonymous> (/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-1/run_/run.runfiles/_main/packages/service-1/src/main.js:2:14)
    at Module._compile (node:internal/modules/cjs/loader:1358:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1416:10)
    at Module.load (node:internal/modules/cjs/loader:1208:32)
    at Module._load (node:internal/modules/cjs/loader:1024:12)
    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:174:12) {
  code: 'MODULE_NOT_FOUND',
  requireStack: [
    '/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-1/run_/run.runfiles/_main/packages/service-1/src/main.js'
  ]
}
```

### Service 2
KO 

```
Error: Cannot find module '../../../../../.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/_libraries/lib-2/src/index.ts'
Require stack:
- /home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-2/run_/run.runfiles/_main/packages/service-2/src/main.js
    at Module._resolveFilename (node:internal/modules/cjs/loader:1145:15)
    at Module._load (node:internal/modules/cjs/loader:986:27)
    at Module.require (node:internal/modules/cjs/loader:1233:19)
    at require (node:internal/modules/helpers:179:18)
    at Object.<anonymous> (/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-2/run_/run.runfiles/_main/packages/service-2/src/main.js:2:15)
    at Module._compile (node:internal/modules/cjs/loader:1358:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1416:10)
    at Module.load (node:internal/modules/cjs/loader:1208:32)
    at Module._load (node:internal/modules/cjs/loader:1024:12)
    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:174:12) {
  code: 'MODULE_NOT_FOUND',
  requireStack: [
    '/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-2/run_/run.runfiles/_main/packages/service-2/src/main.js'
  ]
}
```

### Service 3
KO 

```
Error: Cannot find module '../../../../../.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/_libraries/lib-3/src/index.ts'
Require stack:
- /home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-3/run_/run.runfiles/_main/packages/service-3/src/main.js
    at Module._resolveFilename (node:internal/modules/cjs/loader:1145:15)
    at Module._load (node:internal/modules/cjs/loader:986:27)
    at Module.require (node:internal/modules/cjs/loader:1233:19)
    at require (node:internal/modules/helpers:179:18)
    at Object.<anonymous> (/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-3/run_/run.runfiles/_main/packages/service-3/src/main.js:2:15)
    at Module._compile (node:internal/modules/cjs/loader:1358:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1416:10)
    at Module.load (node:internal/modules/cjs/loader:1208:32)
    at Module._load (node:internal/modules/cjs/loader:1024:12)
    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:174:12) {
  code: 'MODULE_NOT_FOUND',
  requireStack: [
    '/home/max/.cache/bazel/_bazel_max/007863a2efd1f6b69163ed0ea9d79e23/execroot/_main/bazel-out/k8-fastbuild/bin/packages/service-3/run_/run.runfiles/_main/packages/service-3/src/main.js'
  ]
}
```