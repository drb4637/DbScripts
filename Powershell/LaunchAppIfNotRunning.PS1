$Prog = $args[0] 

$Run = Get-Process prog -ErrorAction SilentlyContinue

$Start = {([wmiclass]"win32_process").Create($Prog)} 

# evaluating if the program is runing
if($Run -eq $null) 

# the process is created on this line
{& $Start} 
