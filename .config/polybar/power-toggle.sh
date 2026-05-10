current=$(tlpctl get)

if [ "$current" = "power-saver" ]; then
    sudo tlp ac
else
    sudo tlp power-saver
fi
