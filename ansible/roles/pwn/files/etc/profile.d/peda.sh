export PYTHON_EGG_CACHE=/tmp/eggs-$USER
if [[ "$ARCH" == "armv7l" ]]; then
    alias gdb-peda='/usr/bin/gdb -x /opt/tools/peda-arm/peda-arm.py -q '
else
    alias gdb-peda='/usr/bin/gdb -x /opt/tools/peda/peda.py -q '
fi
alias peda="gdb-peda"

