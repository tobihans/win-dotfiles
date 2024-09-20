let old_pwd = (pwd)

cd $env.LOCALAPPDATA
cd nvim
ls dot_* | each { |d| mv $d.name ($d.name | str replace 'dot_' '.') }
cd $old_pwd
