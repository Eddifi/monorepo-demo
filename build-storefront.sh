#!/bin/bash
set -e

# Build workspace dependencies first
pnpm turbo build --filter=storefront^...

# Then build the storefront app
cd apps/storefront
pnpm build
