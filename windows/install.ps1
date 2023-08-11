function Add-Scoop-Buckets {
    scoop bucket add extras
    scoop bucket add java
    scoop bucket add dorado https://github.com/chawyehsu/dorado
}

# install scoop packages
function Install-Scoop-Packages {
    scoop install aria2
    scoop install sudo
    scoop install curl
    scoop install wget
    scoop install 7zip
    scoop install cmake
    scoop install grep
    scoop install fzf
    scoop install gnuplot
    scoop install lazygit
    scoop install neovim
    scoop install pwsh
    scoop install starship
    scoop install zoxide
    scoop install bat
    # Programming Languages
    scoop install go
    scoop install julia
    scoop install llvm-mingw
    scoop install openjdk8-redhat
    scoop install openjdk20
    scoop install python
    scoop install zig
    scoop install rustup
    # GUI Applications
    scoop install everything
    scoop install slack
    scoop install vscode
    scoop install powertoys
    scoop install tailscale
    scoop install discord
    scoop install vcxsrv
    scoop install googlechrome
    scoop install windows-terminal
}

# install scoop
if (Get-Command scoop -ErrorAction SilentlyContinue) {
    Write-Host "scoop already installed"
} else {
    # install dir
    $env:SCOOP = 'C:\Scoop'
    [environment]::setEnvironmentVariable('SCOOP', $env:SCOOP, 'User')

    Write-Host "installing scoop ..."
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

# install git
if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "git already installed"
} else {
    Write-Host "installing git ..."
    scoop install git
}

# install packages
if (Get-Command scoop -ErrorAction SilentlyContinue) {
    Write-Host "installing packages ..."
    Add-Scoop-Buckets
}