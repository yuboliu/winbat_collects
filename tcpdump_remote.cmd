@REM ----------------------------------------------------
@REM remotecap.cmd
@REM   Example command for captruing eremote network packet
@REM  using wireshark and tcpdump.
@REM   First written by j2doll. September 10th 2016.
@REM   https://github.com/j2doll/wireshark-remote-command-win
@REM   http://j2doll.tistory.com
@REM ----------------------------------------------------
@REM install putty and wireshark on your windows pc.
@SET PLINK_PATH="C:\Program Files\PuTTY\plink.exe"
@SET WIRESHARK_PATH="C:\Program Files\Wireshark\Wireshark.exe"
@SET REMOTE_SERVER=192.199.5.22
@SET REMOTE_ACCOUNT=root
@SET REMOTE_PASSWORD=default
@SET REMOTE_INTERFACE=0.0:nnnp
@REM execute command
%PLINK_PATH% -ssh -pw %REMOTE_PASSWORD% %REMOTE_ACCOUNT%@%REMOTE_SERVER% -no-antispoof "tcpdump -s0 -w - -i %REMOTE_INTERFACE% host 11.158.225.140" | %WIRESHARK_PATH% -i - -k