#!/usr/bin/env bash

SRCDIR="$(dirname "$BASH_SOURCE")"
INSTALLDIR="$HOME/.docker-shortcuts"

# Copy files
mkdir -p "$INSTALLDIR"
cp -R "$SRCDIR/bin" "$INSTALLDIR/"
cp -R "$SRCDIR/lib" "$INSTALLDIR/"
chmod -R 755 "$INSTALLDIR/bin"

echo "Installed in $INSTALLDIR"

# Add line to .profile or .bash_profile
if [[ ! -s "$HOME/.bash_profile" && -s "$HOME/.profile" ]] ; then
  profile_file="$HOME/.profile"
else
  profile_file="$HOME/.bash_profile"
fi

if ! grep -q 'export PATH=$HOME/.docker-shortcuts/bin:$PATH' "${profile_file}" ; then
  echo 'export PATH=$HOME/.docker-shortcuts/bin:$PATH' >> "${profile_file}"
  echo "$HOME/.docker-shortcuts/bin added to PATH. Please restart terminal or run 'source ${profile_file}'"
fi
