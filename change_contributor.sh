git filter-branch --env-filter '
OLD_NAME="x-yue"
OLD_EMAIL="yue@bookabank.com"
NEW_NAME="punkachu"
NEW_EMAIL="ovila.lugard@gmail.com"

if [ "$GIT_AUTHOR_NAME" = "$OLD_NAME" ] || [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]; then
    export GIT_AUTHOR_NAME="$NEW_NAME"
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
    export GIT_COMMITTER_NAME="$NEW_NAME"
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
