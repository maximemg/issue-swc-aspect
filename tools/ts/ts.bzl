"""
Typescript related macros
"""

load("@aspect_rules_swc//swc:defs.bzl", "swc")

def ts(
        name,
        srcs,
        swcrc,
        deps = [],
        source_maps = True,
        **kwargs):
    swc(
        name = name,
        data = deps,
        srcs = srcs,
        swcrc = swcrc,
        source_maps = source_maps,
        **kwargs
    )
