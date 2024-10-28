"""
Typescript related macros
"""

load("@aspect_rules_ts//ts:defs.bzl", _ts_project = "ts_project")
load("@bazel_skylib//lib:partial.bzl", "partial")
load("@aspect_rules_swc//swc:defs.bzl", "swc")
def ts(
        name,
        swcrc,
        declaration_maps=True,
        source_maps = True,        
        **kwargs):
        
    _ts_project(
        name = name,
        transpiler = partial.make(swc, swcrc = swcrc, source_maps = True),
        declaration = True,
        declaration_map = declaration_maps,
        source_map = source_maps,
        **kwargs
    )
