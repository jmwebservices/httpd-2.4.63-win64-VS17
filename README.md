# Testing httpd-2.4.63-win64-VS17 Startup Failure on Windows

This repository serves as a bare httpd configuration to test Apache httpd-2.4.63-win64-VS17 on Windows OS versions that have shown failure to start. The configuration is as minimal as possible to isolate the issue.

## Installation Instructions

1. **Download Apache httpd-2.4.63-win64-VS17**
   - Obtain the Windows build from [Apache Lounge](https://www.apachelounge.com/download/VS17/binaries/httpd-2.4.63-250122-win64-VS17.zip)
   - Unpack the ZIP file to a directory of your choice.

2. **Move the test directory**
   - Copy the `test` directory from this repository into the `Apache24` directory of the unpacked httpd installation.

3. **Start httpd**
   - Open a command prompt and navigate to the `test` directory.
   - Run the following command:
     ```cmd
     init.cmd start
     ```

## Expected Failure Behavior

When executed, `httpd` should fail to start and produce an application error in the Windows Event Viewer similar to the following:

```
Faulting application name: httpd.exe, version: 2.4.63.0, time stamp: 0x6790b2bc
Faulting module name: libcrypto-3-x64.dll, version: 3.4.0.0, time stamp: 0x6784d788
Exception code: 0xc0000005
Fault offset: 0x00000000002606c0
Faulting process id: 0xbc0
Faulting application start time: 0x01db73b356f36675
Faulting application path: C:\Users\VM Admin\Desktop\httpd-2.4.63-250122-win64-VS17\Apache24\bin\httpd.exe
Faulting module path: C:\Users\VM Admin\Desktop\httpd-2.4.63-250122-win64-VS17\Apache24\bin\libcrypto-3-x64.dll
Report Id: 94cd2b7b-dfa6-11ef-aca5-08002778afeb
```

## Support

This test setup aims to reproduce and diagnose the startup failure issue. Please report additional findings, variations in failure behavior or possible fixes at [ApacheLounge](https://www.apachelounge.com/viewtopic.php?t=9346)
