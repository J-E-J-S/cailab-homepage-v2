#!/bin/bash
# SKIP_BUILD=
# while getopts "n" arg
# do
#     case $arg in
#         n)
#             SKIP_BUILD=1
#             ;;
#     esac
# done

# if [ -z "$SKIP_BUILD" ]; then
#     cd frontend
#     yarn install
#     yarn run build
#     cd ../mobile
#     yarn install
#     yarn run build
#     cd ..
# fi
mkdir -p /shared/cailab-homepage/db
cp -n ./api-server/db/* /shared/cailab-homepage/db/
docker-compose up --build -d
