$regex='<table style="width:100%;background-color:#000000;padding:5px;border-style:none;border-width:0px;margin:0px;">.*Upgrade to export pages without watermarks</a></td></tr></table>'

[string]$html = get-content .\index.html

[System.Text.RegularExpressions.Regex]$rex = New-Object System.Text.RegularExpressions.Regex -ArgumentList $regex

$found = $rex.IsMatch($html)

Write-Host $found

if($found){
    $html = $rex.Replace($html, "<p>&nbsp;</p>")
}

Write-Host $html
$html | Set-Content .\index.html

