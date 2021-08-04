$penny = .01

for ($day = 1; $day -le 30; $day++) {
    $value = $penny * 2
    Write-host 'Day'$day '$' $penny
    $penny = $value
}
