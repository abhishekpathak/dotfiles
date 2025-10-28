# This following was probably already done when we initially setup the backend locally, but still ensure the libraries are actually installed by homebrew.
brew install cairo pango gdk-pixbuf libffi # for weasyprint html to pdf
brew install qpdf # qpdf
brew install libyaml  # vcrpy
brew install libmagic  # for mime-type detection
brew install imagemagick # for conversion to image using Wand

# Then softlink the missing libraries to a directory where they will be found.
sudo ln -s /opt/homebrew/lib/libcairo.2.dylib /usr/local/lib/
sudo ln -s /opt/homebrew/lib/libgobject-2.0.dylib /usr/local/lib/
sudo ln -s /opt/homebrew/lib/libpango-1.0.dylib /usr/local/lib/
sudo ln -s /opt/homebrew/lib/libpangocairo-1.0.dylib /usr/local/lib/
sudo ln -s /opt/homebrew/lib/libpangoft2-1.0.dylib /usr/local/lib/