$LAPIS = "$HOME\.lapis"

if (Test-Path $HOME\.lapis) 
{
    Remove-Item -Path $LAPIS-Recurse -Force
}

git clone --depth 1 https://github.com/tm-ahad/lapis-deps.git $HOME\.lapis
Remove-Item -Path "$LAPIS\.git\" -Recurse -Force

Remove-Item -Path "$LAPIS/installations/bin/assembler/linux" -Force
Remove-Item -Path "$LAPIS/installations/bin/compiler/linux" -Force
Rename-Item -Path "$LAPIS/installations/bin/compiler/windows" -NewName "lapis" -Force
