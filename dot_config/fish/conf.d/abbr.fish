# Abbreviations ported from oh-my-zsh plugins (flutter, npm, vscode).
# Git shortcuts come from the jhillyerd/plugin-git fisher plugin.
status is-interactive; or return

# flutter
abbr -a fl flutter
abbr -a fla flutter analyze
abbr -a flattach flutter attach
abbr -a flb flutter build
abbr -a flc flutter clean
abbr -a flchnl flutter channel
abbr -a fldoc flutter doctor
abbr -a fldvcs flutter devices
abbr -a flget flutter pub get
abbr -a fll flutter logs
abbr -a flpu flutter pub upgrade
abbr -a flpub flutter pub
abbr -a flr flutter run
abbr -a flrd flutter run --debug
abbr -a flrp flutter run --profile
abbr -a flrr flutter run --release
abbr -a flt flutter test
abbr -a flupgrd flutter upgrade

# npm (npmE skipped: node_modules/.bin is already on PATH in config.fish)
abbr -a npmg npm i -g
abbr -a npmS npm i -S
abbr -a npmD npm i -D
abbr -a npmF npm i -f
abbr -a npmO npm outdated
abbr -a npmU npm update
abbr -a npmV npm -v
abbr -a npmL npm list
abbr -a npmL0 npm ls --depth=0
abbr -a npmst npm start
abbr -a npmt npm test
abbr -a npmR npm run
abbr -a npmP npm publish
abbr -a npmI npm init
abbr -a npmi npm info
abbr -a npmSe npm search
abbr -a npmrd npm run dev
abbr -a npmrb npm run build

# vscode
abbr -a vsc code .
abbr -a vsca code --add
abbr -a vscd code --diff
abbr -a vscg code --goto
abbr -a vscn code --new-window
abbr -a vscr code --reuse-window
abbr -a vscw code --wait
abbr -a vscu code --user-data-dir
abbr -a vscp code --profile
abbr -a vsced code --extensions-dir
abbr -a vscie code --install-extension
abbr -a vscue code --uninstall-extension
abbr -a vscv code --verbose
abbr -a vscl code --log
abbr -a vscde code --disable-extensions
