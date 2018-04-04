#!/bin/bash

echo "Setting up vscode ..."

if [ -x "$(command -v code)" ]
  then
    # Mission-critical vscode extensions
    declare -a extensions=(
      "PKief.material-icon-theme"
      "Poorchop.theme-darktooth"
      "dbaeumer.vscode-eslint"
      "duangle.scopes"
      "esbenp.prettier-vscode"
      "flowtype.flow-for-vscode"
      "jpoissonnier.vscode-styled-components"
      "mquandalle.graphql"
      "msjsdiag.debugger-for-chrome"
      "remimarsal.prettier-now"
      "shinnn.stylelint"
      "stpn.vscode-graphql"
      "vsmobile.vscode-react-native"
      "zhuangtongfa.Material-theme"
    )

    for ext in ${extensions[@]}; do 
      echo  "installing extension: ${ext}"
      # code --install-extension ext
    done

    echo "Creating Symlinks"
    DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    ln -sf $DOTFILES_DIR/settings.json ~/.config/Code/User/settings.json

  echo "Done setting up vscode"
  else
    echo "vscode is not installed. Skipping"  
fi