$items = 10,"blue",12.54e3,16.30D # 1-D array of length 4
$items[1] = -2.345
$items[2] = "green"

$a = New-Object 'object[,]' 2,2 # 2-D array of length 4
$a[0,0] = 10
$a[0,1] = $false
$a[1,0] = "red"
$a[1,1] = $null

$a[1,1] += "banana"


######

# Original array
$originalArray = New-Object 'object[,]' 2, 2
$originalArray[0, 0] = 10
$originalArray[0, 1] = $false
$originalArray[1, 0] = "red"
$originalArray[1, 1] = $null

# Get the dimensions of the original array
$originalRows = $originalArray.GetLength(0)
$originalColumns = $originalArray.GetLength(1)

# New dimensions
$newRows = 3
$newColumns = 4

# Create a new array with the desired dimensions
$newArray = New-Object 'object[,]' $newRows, $newColumns

# Copy the data from the original array to the new array
for ($i = 0; $i -lt $originalRows; $i++) {
    for ($j = 0; $j -lt $originalColumns; $j++) {
        $newArray[$i, $j] = $originalArray[$i, $j]
    }
}

# Display the contents of the new array
$newArray



###############


# Create a 3D array
$my3DArray = New-Object 'object[,,]' 2, 3, 4

# Assign values to the 3D array
$my3DArray[0, 0, 0] = "A"
$my3DArray[0, 0, 1] = "B"
$my3DArray[0, 0, 2] = "C"
$my3DArray[0, 0, 3] = "D"

$my3DArray[1, 2, 1] = "X"
$my3DArray[1, 2, 2] = "Y"
$my3DArray[1, 2, 3] = "Z"

# Access and display values from the 3D array
Write-Output $my3DArray[0, 0, 0]
Write-Output $my3DArray[0, 0, 1]
Write-Output $my3DArray[0, 0, 2]
Write-Output $my3DArray[0, 0, 3]
Write-Output $my3DArray[1, 2, 1]
Write-Output $my3DArray[1, 2, 2]
Write-Output $my3DArray[1, 2, 3]


