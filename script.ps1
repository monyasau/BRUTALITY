Get-Content passwordlist.txt | ForEach-Object {
    $pass = $_
    Write-Host "Trying: $pass"
    & "C:\Program Files\7-Zip\7z.exe" t "-p$pass" ""C:\Users\USER\Downloads\jeffery.7z" | Out-Null

    if ($LASTEXITCODE -eq 0) {
        Write-Host "PASSWORD FOUND: $pass"
        break
    }
}
