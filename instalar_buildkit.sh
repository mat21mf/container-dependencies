#!/usr/bin/env bash

curl https://objects.githubusercontent.com/github-production-release-asset-2e65be/92969352/6ef0eab6-fcdd-416f-bcf7-b85e275687a5?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231011T151738Z&X-Amz-Expires=300&X-Amz-Signature=d3224aafb215af5e70eab8773a595f4046c3a980622b03950d732668ef32563f&X-Amz-SignedHeaders=host&actor_id=5187038&key_id=0&repo_id=92969352&response-content-disposition=attachment%3B%20filename%3Dbuildkit-v0.12.2.linux-amd64.tar.gz&response-content-type=application%2Foctet-stream --output buildkit-v0.12.2.linux-amd64.tar.gz -C -

sudo tar zxvf buildkit-v0.12.2.linux-amd64.tar.gz -C /usr/local
