﻿Get-Disk | 
    Where partitionstyle -eq 'raw' |
    Initialize-Disk -PartitionStyle MBR -PassThru |
    New-Partition -DriveLetter "F" -UseMaximumSize |
Format-Volume -FileSystem NTFS -NewFileSystemLabel "DataDisk" -Confirm:$false