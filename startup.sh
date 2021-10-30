#! /bin/bash
printenv
npx db-migrate up
npm start