$buckets = @(
    'extras'
    'versions'
    'nerd-fonts'
)
$packages = @(
    'extras/neofetch'
    'main/7zip'
    'main/eza'
    'main/fd'
    'main/ffmpeg'
    'main/fzf'
    'main/gh'
    'main/git'
    'main/go'
    'main/hurl'
    'main/jq'
    'main/just'
    'main/lazydocker'
    'main/lazygit'
    'main/luarocks'
    'main/nodejs-lts'
    'main/pipx'
    'main/ripgrep'
    'main/starship'
    'main/stylua'
    'main/tree-sitter'
    'main/vim'
    'main/xz'
    'nerd-fonts/VictorMono-NF-Mono'
    'versions/python311'
)
$buckets.foreach({ scoop bucket add $PSItem })
$packages.foreach({ scoop install $PSItem })
