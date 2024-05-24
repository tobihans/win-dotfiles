cd $env:LOCALAPPDATA\nvim

Get-ChildItem -Filter dot_* | Copy-Item -Force -Path { $_.Name } -Destination { $_.Name -replace 'dot_(.*)','.$1' }
