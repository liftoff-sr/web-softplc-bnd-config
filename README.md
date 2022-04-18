# SoftPLC Network Configuration Web UI

This repo uses CMake to build a *.deb file that is a debian package for a
SoftPLC Runtime.  Busybox httpd is used along with its CGI support to call
a bash script to modify the fields:

address
netmask
gateway

in a file similar to /etc/network/interfaces, serving to change those 3 fields
and thus providing for an IP address change.

Additionally it writes an ASCII integer to a text file.  That text file can be
read by the softplc runtime later to decide which control program to execute.

It also serves as an example for those who want to extend it to add more features
in support of TLMs or application specific customizations that require their own
configuration edits.




