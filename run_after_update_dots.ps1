# Maybe, I should just copy to a new location
cd $env:LOCALAPPDATA\nvim
Get-ChildItem -Filter dot_* | Rename-Item -NewName { $_.Name -replace 'dot_(.*)','.$1' }
