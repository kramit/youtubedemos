Try {   
    function get-directorycount {
        param (
            $directory
        )    
        #get the list of dirs
        $dirs = Get-ChildItem $directory -Directory
        #write output and count the dirs
        write-host "there are $($dirs.count) folders in this folder" -ForegroundColor Blue -BackgroundColor Yellow
    }
   
    get-directorycount -directory "x:\"
}
Catch {
    Write-host "Directory does not exist"

    Write-Host $_.Exception.Message -ForegroundColor Red
}