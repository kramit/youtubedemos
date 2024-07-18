$services = Get-Service | Select-Object Name, Status


$htmlContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Service Status Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
        }
           h1 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .stopped {
            color: red;p
        }
    </style>
</head>
<body>
    <h1>Service Status Report</h1>
    <table>
        <thead>
            <tr>
                <th>Service Name</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
"@


foreach ($service in $services) {
    $statusClass = if ($service.Status -eq 'Stopped') { 'stopped' } else { '' }
    $htmlContent += "<tr class='$statusClass'><td>$($service.Name)</td><td>$($service.Status)</td></tr>`n"
}


$htmlContent += @"
        </tbody>
    </table>
</body>
</html>
"@


$outputPath = ".\services_report.html"
$htmlContent | Out-File -FilePath $outputPath -Encoding UTF8

# Open the HTML file in the default web browser (optional)
Start-Process $outputPath
