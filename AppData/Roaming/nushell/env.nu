# An alternate way to add entries to $env.Path is to use the custom command `path add`
# which is built into the nushell stdlib:


# HACK: Opened a developer prompt to get all this. Should be verified after each update.
# - prepend
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\\x86')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\\x86')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files (x86)\Windows Kits\10\bin\\x86')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Windows\Microsoft.NET\Framework\v4.0.30319')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files\Microsoft Visual Studio\2022\Community\\MSBuild\Current\Bin\amd64')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.36.32532\bin\HostX86\x86')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\VC\VCPackages')
$env.Path = ($env.Path | split row (char esep) | prepend 'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer')

# - append
use std "path add"
$env.Path = ($env.Path | split row (char esep))
path add C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\Llvm\bin
path add C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin
path add C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja

$env.Path = ($env.Path | uniq)
