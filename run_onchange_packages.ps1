$buckets = @(
    'extras'
    'nerd-fonts'
    'nonportable'
    'versions'
)
$packages = @(
    'extras/kdeconnect'
    'extras/keepassxc'
    'extras/lazygit'
    'extras/powertoys'
    'extras/vcredist2022'
    'extras/zoom'
    'main/7zip'
    'main/bat'
    'main/btop'
    'main/composer'
    'main/eza'
    'main/fd'
    'main/ffmpeg'
    'main/fzf'
    'main/gdu'
    'main/gh'
    'main/git'
    'main/go'
    'main/hurl'
    'main/innounp'
    'main/jq'
    'main/just'
    'main/lazydocker'
    'main/luarocks'
    'main/neofetch'
    'main/nodejs-lts'
    'main/php'
    'main/pipx'
    'main/qemu'
    'main/ripgrep'
    'main/starship'
    'main/stylua'
    'main/tree-sitter'
    'main/vim'
    'main/xz'
    'main/zig'
    'nerd-fonts/VictorMono-NF-Mono'
    'nonportable/virtualbox-np'
    'versions/python311'
)
$buckets.foreach({ scoop bucket add $PSItem })
$packages.foreach({ scoop install $PSItem })
