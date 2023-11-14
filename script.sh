#!/bin/bash

if [[ -f ./project/package.json ]]; then
    cd project
    npm install
    npm run dev
else
    npx create-next-app my-app --ts --eslint --tailwind --src-dir --app --import-alias "@/*" --use-npm

    cp -r my-app/. project/.
    rm -r my-app

    cd project
    chown -R node:node /project/node_modules
    chown -R node:node /project/public
    chown -R node:node /project/package.json
    chown -R node:node /project/package-lock.json
    chown -R node:node /project/.gitignore
    chown -R node:node /project/tsconfig.json
    chown -R node:node /project/src
    chown -R node:node /project/next.config.js
    chown -R node:node /project/postcss.config.js
    chown -R node:node /project/tailwind.config.ts
    chown -R node:node /project/.eslintrc.json
    chown -R node:node /project/.next
    chown -R node:node /project/next-env.d.ts

    npm install
    npm run dev
fi
