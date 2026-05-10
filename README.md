# My HerbstluftWM Config

This is my HerbstluftWM Repository, this config Files are only tested on Arch Linux and may need some additional modification to be usable on other Linux Distros. 
>[!DISCLAIMER]
>This repo is still in the development phase, so I dont recommend using it. When using anything on this repo provided goes wrong I am not accountable, using it is at your own risk!

## HerbstluftWM

To setup and lern about HerbstluftWM please visit their Website: https://herbstluftwm.org/

## Dependencies

* `reversal-icon-theme-git`
* `fastfetch`
* `polybar`
* `rofi`

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
yay -S reversal-icon-theme-git fastfetch polybar rofi
```

## Credits
A big thanks to the creators of the tools and configs I use:

* **Rofi Theme (Default)** by yuky2020; Link: https://github.com/yuky2020/rofi-themes

