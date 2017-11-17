gitlab_mr() {
# TODO check if branch was pushed before attempting this, because gitlab-cli doesn't.
# TODO ssh support
    docker run -v $(pwd):/opt/project \
     -e GITLAB_URL=$GITLAB_URL \
     -e GITLAB_TOKEN=$GITLAB_TOKEN \
     -e GIT_WORK_TREE=/opt/project \
     -e GIT_DIR=/opt/project/.git \
     -it node9_gitlab_cli \
     gitlab-cli create-merge-request --base origin/$1 --target $2 -m $3 -v
}

