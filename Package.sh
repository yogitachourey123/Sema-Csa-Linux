function InstallPkg() {
 local packageName="$1"
# Check if the package is already installed
 if dpkg -l | grep -q "ii $package_name";
   then echo "The $package_name package is already installed."
 else
# Update package lists
   apt update
 #Install the provided package
   apt install $packageName
 fi
}
InstallPkg "$1"
