$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")   #Name of the folder you want to create
$DesktopPath = [Environment]::GetFolderPath("Desktop")     #Path
New-Item -itemType Directory -Path $DesktopPath -Name $folderName
Move-Item -Path $DesktopPath\singleReportConcurrentTest.xlsx -Destination $DesktopPath\$folderName -PassThru
if (!(Test-Path $DesktopPath\udt))                  # Condition to check whether the folder already exist
{
git clone https://svc.git.bidw:2J5cJt5\LG9Db3nz*$Eh;;m?@ultigit.ultimatesoftware.com/scm/bi/udt.git
}
else
{
write-host "Folder already exists"
}
cd udt
git checkout PRO-139456
git pull origin PRO-139456
Move-Item -Path $DesktopPath\$folderName -Destination $DesktopPath\udt -PassThru  #Moving content to the repository folder
git add .
git commit -m "PRO-139456 Addded Report Folder"
git push https://svc.git.bidw:2J5cJt5\LG9Db3nz*$Eh;;m?@ultigit.ultimatesoftware.com/scm/bi/udt.git PRO-139456


