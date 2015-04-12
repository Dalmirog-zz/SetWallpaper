[CmdletBinding()]
[Alias()]
Param
(
    # path of the new wallpaper
    [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
    [string]$file
)
Begin
{
    
}
Process
{
    if (!(Test-Path $file)){
    
        throw "File $file does not exist"
    
    }
    
    Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name Wallpaper -value $file
    Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name WallpaperStyle -value 2
    
    #stupid loop to make sure the wallpaper gets set
    for ($i = 0 ; $i -lt 10; $i++){
        
        rundll32.exe user32.dll, UpdatePerUserSystemParameters  

        Start-Sleep -Seconds 2

    }

}
End
{
    
}
