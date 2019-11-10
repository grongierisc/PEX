#!/bin/bash
# Usage install.sh [instanceName] [password] [namespace]

die () {
    echo >&3 "$@"
    exit 1
}

[ "$#" -eq 3 ] || die "Usage install.sh [instanceName] [password] [Namespace]"

DIR=$(dirname $0)
if [ "$DIR" = "." ]; then
DIR=$(pwd)
fi

instanceName=$1
password=$2
NameSpace=$3

# Installer source (Installer.*.cls)
ClassImportDir=$DIR/misc
# Source dir install by source installer
DirSrc=$DIR/src



iris session $instanceName -U USER <<EOF 
sys
$2
zn "USER"
do \$system.OBJ.ImportDir("$ClassImportDir","Installer.cls","cubk",.errors,1)
write "Compilation de l'installer done"
Set pVars("NAMESPACE")="$NameSpace"
Set pVars("CSPPath")="$CspPath"
Do ##class(Demo.Installer).setup(.pVars)
write "creation du namespace done"

zn "$NameSpace"
Set source="$DirSrc"
set sc = \$system.OBJ.ImportDir(source,"*.cls;*.inc;*.mac","cubk",.errors,1)
zw errors
do:(sc'=1) \$system.Process.Terminate(,1),h
write "Compilation des sources done"

halt
EOF
