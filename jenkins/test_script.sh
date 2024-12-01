#!/bin/bash

# Backend testlerini çalıştır
echo "Running backend tests..."
cd server
npm install
npm test

# Frontend testlerini çalıştır
echo "Running frontend tests..."
cd ../client
npm install
npm test
