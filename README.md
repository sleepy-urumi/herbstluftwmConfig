# My HerbstluftWM Config

This is my HerbstluftWM Repository, this config Files are only tested on Arch Linux and may need some additional modification to be usable on other Linux Distros. 
>[!DISCLAIMER]
>This repo is still in the development phase, so I dont recommend using it. When using anything on this repo provided goes wrong I am not accountable, using it is at your own risk!

## HerbstluftWM

To setup and lern about HerbstluftWM itself, please visit their Website: https://herbstluftwm.org/

## How to clone my repo
git clone https://github.com ~/herbstluftwmConfig

## Dependencies

* `reversal-icon-theme-git`
* `fastfetch`
* `polybar`
* `picom`
* `rofi`
* `pywal`
* `feh`
* `kitty`
* `firefox`
* `thunar`
* `khal`
* `xorg-xsetroot`
* `xorg-setxkbmap`
* `xorg-xrandr`
* `arandr`
* `brightnessctl`
* `pamixer`
* `udiskie`
* `gnome-keyring`
* `ttf-dejavu`
* `betterlockscreen`
* `i3lock-color`

### Laptop exclusiv dependencies

* `tlp`
* `tlp-rdw`

### AUR Helper (Yay)
To install some dependencies you gotta need an Package Manager like Yay(Paru is also an option).
Visit the Yay-Githubpage via this link: https://github.com/jguer/yay

or install Yay with this command:
```
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
```

### Installation of the Dependencies
You can use the following command to install all the dependencies(Yay is required for this step):
```
yay -S reversal-icon-theme-git fastfetch polybar picom rofi python-pywal feh kitty firefox thunar khal xorg-xsetroot xorg-setxkmap xorg-xrandr arandr brightnessctl pamixer udiskie gnome-keyring ttf-dejavu betterlockscreen i3lock-color
```
Activate everything:
```
systemctl --user enable --now gnome-keyring.service
mkdir -p ~/.config/kitty
echo "allow_remote_control yes" >> ~/.config/kitty/kitty.conf
echo "listen_on unix:/tmp/mykitty" >> ~/.config/kitty/kitty.conf
sudo systemctl enable betterlockscreen@$USER.service
cd ~/herbstluftwmConfig
chmod +x setWallpaperScript.sh
./setWallpaperScript.sh wallpaper.png
cd ~
```

If you are on an Laptop u should additionally install the "Laptop exclusive" dependencies with this command:
```
yay -S tlp tlp-rdw
sudo systemctl enable --now tlp
```

## Wallpaper
The wallpaper included in this repo is from wallhaven.cc. All rights belong to the original artist. Here you can find the original: https://whvn.cc/e8xyjo

## Keybinds

The default Modifier key is `Mod4` (Super/Windows Key).

### General
* `Mod` + `Return` — Open Terminal (kitty)
* `Mod` + `d` — Open App Launcher (Rofi)
* `Mod` + `b` — Open Firefox
* `Mod` + `e` — Open File Manager (Thunar)
* `Mod` + `i` — Open Calendar (khal)
* `Mod` + `q` — Close focused window
* `Mod` + `Shift` + `r` — Reload HerbstluftWM
* `Mod` + `Shift` + `q` — Quit HerbstluftWM

### Navigation & Layout
* `Mod` + `Arrows` or `h`/`j`/`k`/`l` — Focus window in that direction
* `Mod` + `Shift` + `Arrows` or `h`/`j`/`k`/`l` — Move window in that direction
* `Mod` + `u` — Split frame horizontally (bottom)
* `Mod` + `o` — Split frame vertically (right)
* `Mod` + `f` — Toggle Fullscreen
* `Mod` + `s` — Toggle Floating mode
* `Mod` + `space` — Cycle through layouts

### Workspaces (Tags)
* `Mod` + `1-9` — Switch to tag 1-9
* `Mod` + `Shift` + `1-9` — Move window to tag 1-9
* `Mod` + `.` / `,` — Cycle through tags

### System Control
* `Mod` + `n` / `m` — Increase/Decrease Keyboard Backlight
* `Mod` + `y` — Toggle Keyboard Backlight (50%)
* `F-Keys` — Control Brightness and Volume (via `brightnessctl` and `pamixer`)

### Mouse
* `Mod` + `Left Click` — Move window
* `Mod` + `Right Click` — Resize window
* `Mod` + `Middle Click` — Zoom window

## Credits
A big thanks to the creators of the tools and configs I use:

* **Rofi Theme (Default)** by yuky2020; Link: https://github.com/yuky2020/rofi-themes

