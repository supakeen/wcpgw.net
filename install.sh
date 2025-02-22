echo \" <<'POWERSHELL_SCRIPT' >/dev/null # " | Out-Null
if !(([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    echo "what are you doing?"
} else {
    echo "what the FUCK are you doing?"
}
<#
POWERSHELL_SCRIPT

set +o histexpand 2>/dev/null
if [ "$EUID" -ne 0 ]; then
    echo "what are you doing?"
else
    echo "what the FUCK are you doing?"
fi
case $- in *"i"*) cat /dev/stdin >/dev/null ;; esac
exit
#>
