load("@aspect_rules_js//js:defs.bzl", "js_binary", "js_run_binary")
load("@aspect_rules_js//npm:defs.bzl", "npm_package")
load("@aspect_rules_ts//ts:defs.bzl", "ts_config")
load("//tools/ts:ts.bzl", "ts")

def _base_config(name):
    ts_config(
        name = "tsconfig_build",
        src = "tsconfig.build.json",
        deps = [
            "//:tsconfig",
            "//:tsconfig_build",
        ],
    )

    js_run_binary(
        name = "swcrc_build",
        srcs = [
            "//:tsconfig_build",
            ":tsconfig_build",
        ],
        args = [
            "./tsconfig.build.json",
        ],
        chdir = native.package_name(),
        stdout = ".swcrc.build",
        tool = "//tools/ts:gen-swcrc",
    )

def library(name):
    _base_config(name)

    ts(
        name = "ts",
        srcs = native.glob(["src/**/*.ts"]),
        swcrc = ":swcrc_build",
        tsconfig = "//:tsconfig_build",
        deps = [
            ":tsconfig_build",
        ],
    )

    npm_package(
        name = "pkg",
        srcs = [
            "package.json",
            ":ts",
        ],
        include_runfiles = False,
        package = "@test/%s" % native.package_name().split("/").pop(),
        root_paths = [
            native.package_name() + "/src",
        ],
    )

def service(name, deps = []):
    _base_config(name)

    ts(
        name = "ts",
        srcs = native.glob(["src/**/*.ts"]),
        swcrc = ":swcrc_build",
        tsconfig = "//:tsconfig_build",
        deps = [
            ":tsconfig_build",
        ] + deps,
    )

    js_binary(
        name = "run",
        chdir = native.package_name(),
        data = [":ts"],
        entry_point = "src/main.js",
    )
