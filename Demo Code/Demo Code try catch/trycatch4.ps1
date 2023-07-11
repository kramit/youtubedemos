$a = 2
try{
    If($a -eq 1){
        throw "1"
    } elseif ($a = 2) {
        throw "2"
    }
}catch{
    if ($_.Exception.Message -eq 1){
        "Error 1"
    } elseif ($_.Exception.Message -eq 2) {
        "Error 2"
    }
    else{
        $_.Exception.Message
    }
}
finally{
    Write-Host "code is done" -ForegroundColor Cyan
}