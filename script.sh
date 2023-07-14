#!/bin/bash

if [[ -f ./project/package.json ]]; then
    cd project
    npm install
    npm run dev
else
    # npx -y create-react-app my-app --template typescript
    npx create-next-app@latest my-app --use-npm --example "https://github.com/vercel/next-learn/tree/master/basics/typescript-final"

    cp -r my-app/. project/.
    rm -r my-app

    cd project
    chown -R node:node /project/node_modules
    chown -R node:node /project/public
    chown -R node:node /project/package.json
    chown -R node:node /project/package-lock.json
    chown -R node:node /project/tsconfig.json
    chown -R node:node /project/components
    chown -R node:node /project/global.d.ts
    chown -R node:node /project/lib
    chown -R node:node /project/next-env.d.ts
    chown -R node:node /project/pages
    chown -R node:node /project/posts
    chown -R node:node /project/styles

    npm install
    npm run dev
fi
