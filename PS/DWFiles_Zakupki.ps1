cls
Add-Type -AssemblyName System.Web

#pp 1-10

$path223 = "D:\DW\223"
$path44 = "D:\DW\44"
If(!(test-path $path223))
{
      New-Item -ItemType Directory -Force -Path $path223
}

Set-Location $path223
$i=0
for ([int]$p = 1; $p -le 1; $p++)
{
    Write-Host $p
    $newurl="https://zakupki.gov.ru/epz/main/public/document/view.html?searchString=&sectionId=386&strictEqual=false&pageNumber=$p&pageSize=100"
    $newurl
    $aa= Invoke-WebRequest -Uri $newurl -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36"
#    $aa.Content
#    $aa.Links

    foreach ($a in $aa.Links)
        {
            if ($a.href.Contains('download'))
            {
            $i++
                #$a.href
                $urldw = "https://zakupki.gov.ru/"+$a.href
                (Invoke-WebRequest -Uri $urldw).Headers["content-disposition"] -match 'filename=\"(.+)\"' | Out-Null
                $encodedFile = [System.Web.HttpUtility]::UrlDecode($matches[1]) 
                $encodedFile
                if (Test-Path $encodedFile)
                {
                $gci=get-childitem $encodedFile 
                $gciname=[io.path]::GetFileNameWithoutExtension($encodedFile)
                $encodedFile=$gciname+"_"+$i+$gci.Extension
                }
                
                Invoke-WebRequest -Uri $urldw -OutFile $encodedFile
            } 
        }
}
$i

$i=0
If(!(test-path $path44))
{
      New-Item -ItemType Directory -Force -Path $path44
}

Set-Location $path44

for ([int]$p = 1; $p -le 2; $p++)
{
    Write-Host $p
    $newurl="https://zakupki.gov.ru/epz/main/public/document/view.html?searchString=&sectionId=432&strictEqual=false&pageNumber=$p&pageSize=100"
    $newurl
    $aa= Invoke-WebRequest -Uri $newurl -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36"
#    $aa.Content
#    $aa.Links

    foreach ($a in $aa.Links)
        {
            if ($a.href.Contains('download'))
            {
                #$a.href
                $urldw = "https://zakupki.gov.ru/"+$a.href
                (Invoke-WebRequest -Uri $urldw).Headers["content-disposition"] -match 'filename=\"(.+)\"' | Out-Null
                $encodedFile = [System.Web.HttpUtility]::UrlDecode($matches[1]) 
                $encodedFile
                if (Test-Path $encodedFile)
                {
                $gci=get-childitem $encodedFile 
                $gciname=[io.path]::GetFileNameWithoutExtension($encodedFile)
                $encodedFile=$gciname+"_"+$i+$gci.Extension
                }

                Invoke-WebRequest -Uri $urldw -OutFile $encodedFile 
                $i++
            } 
        }
}
$i

#Invoke-WebRequest -Uri https:/// -UserAgent -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36"