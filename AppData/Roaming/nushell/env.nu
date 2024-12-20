# An alternate way to add entries to $env.Path is to use the custom command `path add`
# which is built into the nushell stdlib:
# - append
use std "path add"
$env.Path = ($env.Path | split row (char esep))
# path add C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\Llvm\bin

$env.Path = ($env.Path | uniq)
