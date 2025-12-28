#!/bin/bash
set -e

# Build workspace dependencies first
pnpm turbo build --filter=admin^...

# Then build the admin app
cd apps/admin
pnpm build
