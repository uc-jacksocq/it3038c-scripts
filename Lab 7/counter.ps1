$Machines = ‘localhost’
Foreach ($machine in $Machines)
$logfiles= "C:\logs\counterdata.log"
{
{#$Rcounters = Get-Counter -ListSet * -ComputerName $machine
#“There are {0} counters on {1}” -f $RCounters.count, ($machine)

 $pt = (get-counter -counter "\processor(_Total\% Processor Time" -sampleleinterval 1 -MaxSample 5).CounterSample.Cookedvalue
 $sample = 1
 foreach ($p in $pt) {
    "Sample {2}: CPU is at {0}% on {1}" -f $p. $machine, $sample | out-File -Append $logfiles
    $sample++
 }
}