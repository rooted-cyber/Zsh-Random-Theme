ban() {
    clear
    printf '\033[1;36m'
    printf '╔══════════════════════════════════╗\n'
    printf '║       ZSH RANDOM THEME           ║\n'
    printf '║          INSTALLER               ║\n'
    printf '╚══════════════════════════════════╝\n'
    printf '\033[0m\n'
}
tt() {
cd ~
mkdir .Rootedcyber
cd .Rootedcyber
msg cloning zsh-autosuggestions
msg
git clone https://github.com/zsh-users/zsh-autosuggestions
msg cloning zsh-syntax-highlighting
msg
git clone https://github.com/zsh-users/zsh-syntax-highlighting
#cp -rf * ~
msg cloning oh-my-zsh
msg
git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh
cp ~/Zsh*e/ .zsh* ~
}

menu() {
ban
msg -n "Install Zsh-Random-Theme y|n "
read g
case $g in
y|Y)tt ;;
esac
}
if command -v msg;then
menu
else
echo -n "Setup (y) "
read l
case $l in
y|Y)bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/ce6248bd681844d35a12bd210989eb89/raw/install)" ;;
esac
fi