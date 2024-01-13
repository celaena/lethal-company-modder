param (
	[Parameter(Mandatory=$true)][string]$gameInstall
)

$tmp = "C:\tmp\lethal-company-modder"

function Unpack-Mod {
	param (
		$url
	)
	
	$dlFile = "$tmp\mod.zip"
	$unzipDir = "$tmp\mod"
	
	Invoke-WebRequest $url -OutFile $dlFile
	if (-not(Test-Path -Path $unzipDir)) {
		New-Item -Path $unzipDir -ItemType Directory
	}
	Expand-Archive -Path $dlFile -DestinationPath $unzipDir
}

function Delete-Temp-Mod-Files {		
	$dlFile = "$tmp\mod.zip"
	$unzipDir = "$tmp\mod"
	Remove-Item -Path $dlFile
	Remove-Item -Path $unzipDir -Recurse
}

if (-not(Test-Path -Path $tmp)) {
	New-Item -Path $tmp -ItemType Directory
}

echo "Processing BepInExPack..."
Unpack-Mod -url "https://thunderstore.io/package/download/BepInEx/BepInExPack/5.4.2100/"
Copy-Item "$tmp\mod\BepInExPack\*" -Destination $gameInstall -Recurse -Force
Delete-Temp-Mod-Files

echo "Processing LC_API..."
Unpack-Mod -url "https://thunderstore.io/package/download/2018/LC_API/3.3.2/"
Copy-Item "$tmp\mod\BepInEx\plugins" -Destination "$gameInstall\BepInEx\plugins\2018-LC_API" -Recurse -Force
Delete-Temp-Mod-Files

echo "Processing MoreCompany..."
Unpack-Mod -url "https://thunderstore.io/package/download/notnotnotswipez/MoreCompany/1.7.4/"
Copy-Item "$tmp\mod\BepInEx\plugins" -Destination "$gameInstall\BepInEx\" -Recurse -Force
Delete-Temp-Mod-Files

echo "Processing More Suits..."
Unpack-Mod -url "https://thunderstore.io/package/download/x753/More_Suits/1.4.1/"
Copy-Item "$tmp\mod\BepInEx\plugins" -Destination "$gameInstall\BepInEx\" -Recurse -Force
Delete-Temp-Mod-Files

Remove-Item -Path $tmp