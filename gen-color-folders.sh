#!/bin/bash

path="./src/fullcolor"

if [ ! -d "$path" ]; then
  mkdir $path -p
fi

# Adwaita Default
maindefault="ded4ca"
darkdefault="c9b8a7"
symbdefault="b9a593"
strkdefault="a08f7f"

colorsList=(amber blue blueGrey brown cyan deepOrange deepPurple green grey indigo lightBlue lightGreen lime orange pink purple red rikka teal yellow)
mainColors=(ffc107 2196f3 607d8b 795548 00bcd4 ff5722 673ab7 4caf50 9e9e9e 3f51b5 03a9f4 8bc34a cddc39 ff9800 e91e63 9c27b0 f44336 4f6479 009688 ffeb3b)
darkColors=(ffa000 1976d2 455a64 5d4037 0097a7 e64a19 512da8 388e3c 616161 303f9f 0288d1 689f38 afb42b ef6c00 c2185b 7b1fa2 d32f2f 244b6f 00796b fbc02d)
strkColors=(d69800 006dca 375462 502C1F 0093AB D62E00 3E118E 238627 757575 16288C 0080cb 629A21 A4B310 D66F00 C0003A 730087 CB1A0D 263B50 006D5F D6C212)

for i in "${!colorsList[@]}"; do
  cp folders.svg $path/folders-${colorsList[$i]}.svg
  sed -i -e "s/$maindefault/${mainColors[$i]}/g" $path/folders-${colorsList[$i]}.svg
  sed -i -e "s/$darkdefault/${darkColors[$i]}/g" $path/folders-${colorsList[$i]}.svg
  sed -i -e "s/$symbdefault/${darkColors[$i]}/g" $path/folders-${colorsList[$i]}.svg
  sed -i -e "s/$strkdefault/${strkColors[$i]}/g" $path/folders-${colorsList[$i]}.svg
  sed -i -e "s/folder/folder-${colorsList[$i]}/g" $path/folders-${colorsList[$i]}.svg
  sed -i -e "s/user/user-${colorsList[$i]}/g" $path/folders-${colorsList[$i]}.svg; done
