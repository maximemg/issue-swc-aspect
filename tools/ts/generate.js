const { convert } = require('tsconfig-to-swcconfig');

const [args] = process.argv.slice(2);

const base_config = convert(args)

const config = {
    ...base_config,
    module: {
        ...base_config.module,
        noInterop: false,
        ignoreDynamic: false
    },
    jsc: {
        ...base_config.jsc,
        ...{
            parser: {
                syntax: "typescript",
                tsx: false,
                decorators: true,
                dynamicImport: false
            },
            target: "es2022",
            keepClassNames: true
        }
    },
};

console.log(JSON.stringify(config, undefined, 2));