# Homebrew on Apple Silicon seems to put the files in /opt/homebrew instead of /usr/local. 
# Some apps like Wand try to look at the legacy location, find nothing and give an error. 
# To fix, explicitly point MAGICK_HOME to the correct location.
export MAGICK_HOME=/opt/homebrew/opt/imagemagick
export PATH=$MAGICK_HOME/bin:$PATH