let old_pwd = (pwd)

try {
cd $env.LOCALAPPDATA
cd nvim
ls dot_* | each { |d| mv $d.name ($d.name | str replace 'dot_' '.') }
cd $old_pwd
} catch { |err| $err.msg }
