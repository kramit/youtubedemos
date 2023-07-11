Try
{
    # Try something that could cause an error
    1/0
    
    
}
Catch
{
    # Catch any error
    Write-Host "An error occurred" -ForegroundColor Cyan -BackgroundColor Yellow
}
Finally
{
    # [Optional] Run this part always
    Write-Host "cleaning up ..."
}