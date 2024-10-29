# SWC Aspect Bazel Issue

This repo is a minimal reproduction of a SWC aspect bazel issue.

# Build

These work fine

```
bazel build //packages/service-1:ts
```

```
bazel build //packages/service-2:ts
```

# Run

These do not work

in app path not resolved
```
bazel run //packages/service-1:run
```

lib path not resolved
```
bazel run //packages/service-2:run
```