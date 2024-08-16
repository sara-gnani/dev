#!/bin/bash
if [ "$GIT_BRANCH" = "origin/dev" ];
then
        ./build.sh
        docker login -u sara1327 -p dckr_pat_P3meXCrtcIeld4ILwzHVCysCrmI
        docker tag app:v1 sara1327/dev
        docker push sara1327/dev
elif [ "$GIT_BRANCH" = "origin/main" ];
then
        ./build.sh
        docker login -u sara1327 -p dckr_pat_P3meXCrtcIeld4ILwzHVCysCrmI
        docker tag app:v1 sara1327/prod
        docker push sara1327/prod
else
        echo "Deployment failed"
fi
