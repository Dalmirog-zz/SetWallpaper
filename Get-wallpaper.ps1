$startOfDay = (Get-Date).Date #getting start of the day

$currentTime = Get-Date

#$currentTime = [datetime]"16:00:00"
#$currentTime = [datetime]"01:00:00"

$WallpaperSource = "$PSScriptRoot\Wallpapers"

switch ($currentTime)
{
    {($currentTime -ge $startOfDay) -and ($currentTime -le $startOfDay.AddHours(6))} {return (Join-Path $WallpaperSource "8.jpg")}
    {($currentTime -ge $startOfDay.AddHours(6)) -and ($currentTime -le $startOfDay.AddHours(9))} {return (Join-Path $WallpaperSource "1.jpg")}
    {($currentTime -ge $startOfDay.AddHours(9)) -and ($currentTime -le $startOfDay.AddHours(11))} {return (Join-Path $WallpaperSource "2.jpg")}
    {($currentTime -ge $startOfDay.AddHours(11)) -and ($currentTime -le $startOfDay.AddHours(16))} {return (Join-Path $WallpaperSource "3.jpg")}
    {($currentTime -ge $startOfDay.AddHours(16)) -and ($currentTime -le $startOfDay.AddHours(18))} {return (Join-Path $WallpaperSource "4.jpg")}
    {($currentTime -ge $startOfDay.AddHours(18)) -and ($currentTime -le $startOfDay.AddHours(19))} {return (Join-Path $WallpaperSource "5.jpg")}
    {($currentTime -ge $startOfDay.AddHours(20)) -and ($currentTime -le $startOfDay.AddHours(21))} {return (Join-Path $WallpaperSource "6.jpg")}
    {($currentTime -ge $startOfDay.AddHours(21)) -and ($currentTime -le $startOfDay.AddHours(23.9))} {return (Join-Path $WallpaperSource "7.jpg")}
    Default {throw "Some error, dunno"}
}




