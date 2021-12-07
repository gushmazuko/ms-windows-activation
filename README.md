# Microsoft Software Products Quick Activation
Activating Microsoft software products for FREE without using any software

## How To
### Auto
Execute as Admin:
```powershell
powershell -exec bypass 'iwr -useb https://kutt.it/win-activate | iex; win -os win10pro'
# OR
powershell -exec bypass 'iwr -useb https://github.com/gushmazuko/ms-windows-activation/raw/master/win_activate.ps1 | iex; win -os win10pro'
```

- **Validate arguments:**
  - `win10pro`
  - `win10ent-ltsc`
  - `win2022-dtc`
  - `win2022-std`
  - `win2022-ess`
  - `win2019-dtc`
  - `win2019-std`
  - `win2019-ess`
  - `win2016-dtc`
  - `win2016-std`
  - `win2016-ess`


- For **Windows 11 and Windows 10** use:
  - `win10pro`  
- For **Windows 10 LTSC 2021 and 2019**:
  - `win10ent-ltsc`

### Manual
Run `CMD.exe` as Admin and execute (example for **Windows 10 Pro**):
```cmd
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms.03k.org
slmgr /ato
```

> Source: https://kms.msguides.com/
