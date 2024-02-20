#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$MY_SECRETS_KEY" \
--output $HOME/secrets/secrets.properties secrets.properties.gpg
# end