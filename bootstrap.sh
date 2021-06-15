if [[ "$SPIN" = 1 ]]
then
  # Only run nested steps in Spin + shopify/shopify workspaces.
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    cd "$SPIN_REPO_SOURCE_PATH"
    # This will always be the author of the cartridge, so for the shopify-reportify-config it will be shameelabd (do not modify this)
    # Do **NOT** replace this username with your username.
    cartridge insert shameelabd/shopify-reportify-config
    . /cartridges/shopify-reportify-config/setup.sh
﻿
    restart
  fi
fi
