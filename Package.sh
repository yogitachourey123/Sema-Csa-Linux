function InstallPkg() {
local packageName="$1"
# Check if the package is already installed
if [ dpkg -s "$packageName" >/dev/null 2>&1 && ]; then
    echo "$packageName is already installed."
else
#Install the provided package
  sudo apt-get install $packageName -
fi
}
InstallPkg "$1"
