sudo wifi-menu 
setxkbmap de
lsmod
sudo modprobe usbhid
sudo modprobe usb-storage
sudo modprobe xhci-hcd
sudo modprobe ehci-hcd
sudo modprobe ehci-pci
setxkbmap de
sudo wifi-menu
yaourt dictd
dict obitrusive
dictd obtrusive
dict obtrusive
yaourt stumpwm
yaourt stump
sbcl
yaourt sbcl
sbcl 
cd Downloads/
sbcl --load quicklisp.lisp 
mkdir SRC
cd SRC/
git clone https://github.com/stumpwm/stumpwm.git
cd stumpwm/
autoconf 
./configure 
make
sudo make install
pkill xinit 
yaourt xbindkeys
yaourt ttf-droid
cd /usr/share/fonts/
yaourt tree
tree .
ls TTF/
sudo pacman -Rnsc xfce4 xfce4-goodies
sudo pacman -Rnsc xfce4 xfce4-goodies ttf-dejavu
sudo pacman -S lm_sensors
sudo pacman -S mpd
sudo pacman -Syy
sudo pacman -S mpd
cd /usr/share/fonts
cd TTF/
sudo pacman -Rns ttf-vera
yaourt lx-appe
yaourt lx-appq
yaourt lx-app
yaourt lxapp
lxappearance 
yaourt adwaita
yaourt gnome-theme
lxappearance 
fc-cache
cd /etc/fonts/
fc-cache
pkill xinit
cd /etc/fonts/
ls conf.d/
cd conf.d/
65-nonlatin.conf@cd
ks
cd .co 
cd .config/
rm -R menus/
rm -R xfce4/
rm -R Thunar/
mkdir fontconfig
cd fontconfig/
mv /home/sireseog/.fonts.conf font.conf
startxfce4 
emacs --daemon
emacsclient 
emacsclient -t
ls SRC/
emacsclient .xinitrc 
vi .xinitrc 
startx
emacs 
startx
install_prelude () {     printf " Cloning the Prelude's GitHub repository...\n$RESET";     if [ x$PRELUDE_VERBOSE != x ];     then         /usr/bin/env git clone $PRELUDE_URL "$PRELUDE_INSTALL_DIR";     else         /usr/bin/env git clone $PRELUDE_URL "$PRELUDE_INSTALL_DIR" > /dev/null;     fi;     if ! [ $? -eq 0 ];     then         printf "$RED A fatal error occurred during Prelude's installation. Aborting...";         exit 1;     fi; }
make_prelude_dirs () {     printf " Making the required directories.\n$RESET";     mkdir -p "$PRELUDE_INSTALL_DIR/savefile"; }
colors_ () {     case "$SHELL" in     *zsh)         autoload colors && colors;         eval RESET='$reset_color';         for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE;         do             eval $COLOR='$fg_no_bold[${(L)COLOR}]';             eval B$COLOR='$fg_bold[${(L)COLOR}]';         done;         ;;     *)         RESET='\e[0m'           # Reset;         RED='\e[0;31m'          # Red;         GREEN='\e[0;32m'        # Green;         YELLOW='\e[0;33m'       # Yellow;         BLUE='\e[0;34m'         # Blue;         PURPLE='\e[0;35m'       # Magenta;         CYAN='\e[0;36m'         # Cyan;         WHITE='\e[0;37m'        # White;         BRED='\e[1;31m'         # Bold Red;         BGREEN='\e[1;32m'       # Bold Green;         BYELLOW='\e[1;33m'      # Bold Yellow;         BBLUE='\e[1;34m'        # Bold Blue;         BPURPLE='\e[1;35m'      # Bold Magenta;         BCYAN='\e[1;36m'        # Bold Cyan;         BWHITE='\e[1;37m'       # Bold White;         ;;     esac; }
# Commandline args:
# -d/--directory [dir]
#   Install prelude into the specified directory. If 'dir' is a relative path prefix it with $HOME.
#   Defaults to '$HOME/.emacs.d'
# -c/--colors
#   Enable colors
# -s/--source [url]
#   Clone prelude from 'url'.
#   Defaults to 'https://github.com/bbatsov/prelude.git'
# -i/--into
#   If one exists, install into the existing config
# -n/--no-bytecompile
#   Skip the compilation of the prelude files.
# -h/--help
#   Print help
# -v/--verbose
#   Verbose output, for debugging
usage() {     printf "Usage: $0 [OPTION]\n";     printf "  -c, --colors \t \t \t Enable colors.\n";     printf "  -d, --directory [dir] \t Install prelude into the specified directory.\n";     printf "  \t \t \t \t If 'dir' is a relative path prefix with $HOME.\n";     printf "  \t \t \t \t Defaults to $HOME/.emacs.d\n";     printf "  -s, --source [url] \t \t Clone prelude from 'url'.\n";     printf "  \t \t \t \t Defaults to 'https://github.com/bbatsov/prelude.git'.\n";     printf "  -n, --no-bytecompile \t \t Skip the bytecompilation step of prelude.\n";     printf "  -i, --into \t \t \t Install Prelude into a subdirectory in the existing configuration\n";     printf "  \t \t \t \t The default behavious is to install prelude into the existing\n";     printf "  \t \t \t \t emacs configuration.\n";     printf "  -h, --help \t \t \t Display this help and exit\n";     printf "  -v, --verbose \t \t Display verbose information\n";     printf "\n"; }
### Parse cli
while [ $# -gt 0 ]; do     case $1 in         -d | --directory)             PRELUDE_INSTALL_DIR=$2;             shift 2;             ;;         -c | --colors)             colors_;             shift 1;             ;;         -s | --source)             PRELUDE_URL=$2;             shift 2;             ;;         -i | --into)             PRELUDE_INTO='true';             shift 1;             ;;         -n | --no-bytecompile)             PRELUDE_SKIP_BC='true';             shift 1;             ;;         -h | --help)             usage;             exit 0;             ;;         -v | --verbose)             PRELUDE_VERBOSE='true';             shift 1;             ;;         *)             printf "Unkown option: $1\n";             shift 1;             ;;     esac; done
VERBOSE_COLOR=$BBLUE
[ -z "$PRELUDE_URL" ] && PRELUDE_URL="https://github.com/bbatsov/prelude.git"
[ -z "$PRELUDE_INSTALL_DIR" ] && PRELUDE_INSTALL_DIR="$HOME/.emacs.d"
if [ x$PRELUDE_VERBOSE != x ]; then     printf "$VERBOSE_COLOR";     printf "PRELUDE_VERBOSE = $PRELUDE_VERBOSE\n";     printf "INSTALL_DIR = $PRELUDE_INSTALL_DIR\n";     printf "SOURCE_URL  = $PRELUDE_URL\n";     printf "$RESET";     if [ -n "$PRELUDE_SKIP_BC" ];     then         printf "Skipping bytecompilation.\n";     fi;     if [ -n "$PRELUDE_INTO" ];     then         printf "Replacing existing config (if one exists).\n";     fi;     printf "$RESET"; fi
# If prelude is already installed
if [ -f "$PRELUDE_INSTALL_DIR/core/prelude-core.el" ]; then     printf "\n\n$BRED";     printf "You already have Prelude installed.$RESET\nYou'll need to remove $PRELUDE_INSTALL_DIR/prelude if you want to install Prelude again.\n";     printf "If you want to update your copy of prelude, run 'git pull origin master' from your prelude directory\n\n";     exit 1; fi
### Check dependencies
printf  "$CYAN Checking to see if git is installed... $RESET"
if hash git 2>&-; then     printf "$GREEN found.$RESET\n"; else     printf "$RED not found. Aborting installationelseRESET\n";     exit 1; fi;
printf  "$CYAN Checking to see if aspell is installed... "
if hash aspell 2>&-; then     printf "$GREEN found.$RESET\n"; else     printf "$RED not found. Install aspell to benefit from flyspell-modeelseRESET\n"; fi
### Check emacs version
if [ $(emacs --version 2>/dev/null | sed -n 's/.*[^0-9.]\([0-9]*\.[0-9.]*\).*/\1/p;q' | sed 's/\..*//g') -lt 24 ]; then fi
if [ -d "$PRELUDE_INSTALL_DIR" ] || [ -f "$PRELUDE_INSTALL_DIR" ]; then     printf " Backing up the existing config to $PRELUDE_INSTALL_DIR.pre-prelude.tar.\n";     tar -cf "$PRELUDE_INSTALL_DIR.pre-prelude.tar" "$PRELUDE_INSTALL_DIR" > /dev/null 2>&1;     PRELUDE_INSTALL_DIR_ORIG="$PRELUDE_INSTALL_DIR"     [ -n "$PRELUDE_INTO" ] && PRELUDE_INSTALL_DIR="$PRELUDE_INSTALL_DIR/prelude"     rm -fr "$PRELUDE_INSTALL_DIR";     mkdir "$PRELUDE_INSTALL_DIR"     install_prelude;     make_prelude_dirs     tar --skip-old-files -xf "$PRELUDE_INSTALL_DIR_ORIG.pre-prelude.tar" "$PRELUDE_INSTALL_DIR" > /dev/null 2>&1;     [ -n "$PRELUDE_INTO" ] && cp "$PRELUDE_INSTALL_DIR/sample/prelude-modules.el" "$PRELUDE_INSTALL_DIR"; elif [ -e "$PRELUDE_INSTALL_DIR" ]; then     printf "$BRED $PRELUDE_INSTALL_DIR exist but isn't a file or directory.\n";     printf "$BRED please remove this file or install prelude in a different directory";     printf "$BRED (-d flag)\n$RESET";     exit 1; else     install_prelude;     make_prelude_dirs;     cp "$PRELUDE_INSTALL_DIR/sample/prelude-modules.el" "$PRELUDE_INSTALL_DIR"; fi
if [ -z "$PRELUDE_SKIP_BC" ]; then     if which emacs > /dev/null 2>&1;     then         printf " Bytecompiling Prelude.\n";         if [ x$PRELUDE_VERBOSE != x ];         then             emacs -batch -f batch-byte-compile "$PRELUDE_INSTALL_DIR/core"/*.el;         else             emacs -batch -f batch-byte-compile "$PRELUDE_INSTALL_DIR/core"/*.el > /dev/null 2>&1;         fi;     else         printf "$YELLOW Emacs not found.$RESET Skipping bytecompilation.\n";     fi; else     printf "Skipping bytecompilation.\n"; fi
printf "\n"
printf "$BBLUE  ____           _           _       \n"
printf "$BBLUE |  _ \ _ __ ___| |_   _  __| | ___  \n"
printf "$BBLUE | |_) |  __/ _ \ | | | |/ _  |/ _ \ \n"
printf "$BBLUE |  __/| | |  __/ | |_| | (_| |  __/ \n"
printf "$BBLUE |_|   |_|  \___|_|\__,_|\__,_|\___| \n\n"
printf "$GREEN ... is now installed and ready to do thy bidding, Master $USER"$BBLUE |_|   |_|  \___|_|\__,_|\__,_|\___| \n\n"RESET\n"
printf "$GREEN Don't forget to adjust the modules you want to use in $PRELUDE_INSTALL_DIR/prelude-modules.el\n\n"RESET\n"RESET\n"
exec env ENV='' HISTFILE=/dev/null PROMPT_COMMAND='' PS1=\#\$\  PS2='' PS3='' /bin/sh 
exec env ENV='' HISTFILE=/dev/null PROMPT_COMMAND='' PS1=\#\$\  PS2='' PS3='' /bin/sh 
chromium &
ssh-agent 
ssh-add .ssh/id_rsa
eval $(ssh-agent)
ssh-add .ssh/id_rsa
sudo pacman -S xclip
xclip -sel clip < .ssh/id_rsa.pub 
ssh -T git@github.com
cd Public/
cd /usr/lib/systemd/user/sockets.target.wants/
cd ..
cd system
cd ../user
sudo emacs /etc/issue 
startx
ip addr
ping google.com
sudo su
ip addr
startx
sudo emacsclient -t /etc/issue
sudo emacsclient /etc/issue
sudo emacsclient
emacs
sudo emacs /etc/issue
sudo su
startx
reboot 
startx
sudo su
startx
sudo wifi-menu
sudo wifi-menu 
wpa_passphrase AndroidAP
man wpa_passphrase

sudo emacsclient /etc/issue
startx
ip addr
sudo su
cd /etc/wpa_supplicant/networks/
rm laaraki 
sudo rm laaraki 
sudo su
startx
cd /etc/systemd/
cd network/
cd ..
cd wpa_supplicant/
cd networks/
sudo iw dev wlo1 scan
cat /usr/lib/systemd/system/connect.service 
sudo ip link set dev wlo1 up
sudo iw dev wlo1 scan | grep -e SSID
wpa_passphrase Fleurs_Snack maroc1985
wpa_passphrase Fleurs_Snack maroc1985 > Fleurs_Snack
sudo wpa_passphrase Fleurs_Snack maroc1985 > Fleurs_Snack
sudo wpa_passphrase Fleurs_Snack maroc1985 
sudo wpa_passphrase Fleurs_Snack maroc1985 > ff
sudo su
startx
sudo wifi-menu
exit 
sudo su
startx
sudo wifi-menu
ssh root@192.168.1.110
