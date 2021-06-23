#!/bin/bash

cd "$(dirname "$0")" || exit

cd cms/ || exit
composer install
cp .env.example .env
cp tests/.env.example tests/.env
cd ../

cd ../admin/ || exit
npm install
cp .env.example .env
cd ../

cd ../mysql/ || exit
cp .env.example .env
cd ../

cd ../redis/ || exit
cp .env.example .env
cd ../