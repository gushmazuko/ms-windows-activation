<#
.SYNOPSIS
  Activating Microsoft software products for FREE without additional software
  Activate Windows 10 ALL versions
.NOTES
  Function   : Activate MS Windows
  File Name  : win_activate.ps1
  Author     : Gushmazuko
.LINK
  https://github.com/gushmazuko/ms-windows-activation
  Original source: https://kms.msguides.com/
.EXAMPLE
  iwr -useb https://kutt.it/win-activate | iex; win -os win10pro
#>

function win() {
    Param (
        [ValidateSet("win10pro","win10ent-ltsc","win2022-dtc","win2022-std","win2022-ess","win2019-dtc","win2019-std","win2019-ess","win2016-dtc","win2016-std","win2016-ess")]
        [string]$os = "win10pro"
    )

    ## Vars
    #$KmsSrv = "kms8.msguides.com"
    #$KmsSrv = "corp-kms-ws2019.woshub.com:1688"
    $KmsSrv = "kms.03k.org"

    switch($os)
    {
        win10pro
        {
            $ProductKey = "W269N-WFGWX-YVC9B-4J6C9-T83GX"
        }
        win10ent-ltsc
        {
            $ProductKey = "M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
        }
        win2022-dtc
        {
            $ProductKey = "WX4NM-KYWYW-QJJR4-XV3QB-6VM33"
        }
        win2022-std
        {
            $ProductKey = "VDYBN-27WPP-V4HQT-9VMD4-VMK7H"
        }
        win2019-dtc
        {
            $ProductKey = "WMDGN-G9PQG-XVVXX-R3X43-63DFG"
        }
        win2019-std
        {
            $ProductKey = "N69G4-B89J2-4G8F4-WWYCC-J464C"
        }
        win2019-ess
        {
            $ProductKey = "WVDHN-86M7X-466P6-VHXV7-YY726"
        }
        win2016-dtc
        {
            $ProductKey = "CB7KF-BWN84-R7R2Y-793K2-8XDDG"
        }
        win2016-std
        {
            $ProductKey = "WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
        }
        win2016-ess
        {
            $ProductKey = "JCKRF-N37P4-C2D82-9YXRT-4M63B"
        }
    }

    ## Main
    Clear-Host
    $host.UI.RawUI.WindowTitle = "Activate all Windows versions for FREE!"

    Write-Host "Activating your Windows..."
    & cmd /c cscript //nologo c:\windows\system32\slmgr.vbs /upk
    & cmd /c cscript //nologo c:\windows\system32\slmgr.vbs /ipk $ProductKey
    & cmd /c cscript //nologo c:\windows\system32\slmgr.vbs /skms $KmsSrv
    & cmd /c cscript //nologo c:\windows\system32\slmgr.vbs /ato
}