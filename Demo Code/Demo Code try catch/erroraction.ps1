try{

    $ErrorActionPreference = "continue"
# Attempt to get the contents of a non-existent file
Get-Content C:\NonExistentFile.txt 
}
catch {
    write-host "computer says no"
}
finally{
    Write-Host "completed"
}

