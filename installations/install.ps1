if (Test-Path $HOME\.lapis) 
{
    Remove-Item -Path "$HOME\.lapis" -Recurse -Force
}

git clone --depth 1 https://github.com/tm-ahad/lapis-deps.git $HOME\.lapis
Remove-Item -Path "$HOME\.lapis\.git\" -Recurse -Force
