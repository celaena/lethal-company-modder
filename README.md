## To Use
- Clone or download the repository
- Extract the script `install-mods.ps1`
- Find your Lethal Company installation directory
    - Open your Steam library
    - Right-click Lethal Company and select Properties
    - Switch to Installed Files
    - Click Browse...
  - Open PowerShell
      - Run this command, using your Lethal Company installation directory
          - `<path to script>\install-mods.ps1 -gameInstall "<path to game installation>"
          - Example: `C:\tmp\install-mods.ps1 -gameInstall "C:\Program Files (x86)\Steam\steamapps\common\Lethal Company\BepInEx\plugins"`
      - If you get errors involving permissions when creating files, run PowerShell in Administrator mode
      - If you get errors about running PowerShell scripts at all, run `Set-ExecutionPolicy RemoteSigned`
        - [Source](https://www.sharepointdiary.com/2014/03/fix-for-powershell-script-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system.html)
  - Check that the files in your Lethal Company installation directory have been updated
 

## Current Mods
- BepInExPack 5.4.2100
- LC_API 3.3.2
- MoreCompany 1.7.4
- More_Suits 1.4.1
