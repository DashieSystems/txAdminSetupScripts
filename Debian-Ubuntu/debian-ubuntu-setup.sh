# Grab current user for root test
isRoot=$(whoami)

RELEASE=unknown

version=$( lsb_release -r | grep -oP "[0-9]+" | head -1 )
if lsb_release -d | grep -q "Debian"; then
    RELEASE=debian$version
elif lsb_release -d | grep -q "Ubuntu"; then
    RELEASE=ubuntu$version
fi

echo $RELEASE