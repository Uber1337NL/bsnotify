# bsnotify

bsnotify is a lightweight SSDP-relay for Bambu Lab printers to allow discovery across different VLANs. Run this script in the VLAN you want the printers to be discoverable in. Let's say "OFFICE', so the VLAN where the computers are located with Bambu Studio installed. In my (test) scenario it's running on a Raspberry Pi which also acts as a (reverse) proxy.

The script will be installed ans create a seperate user/group to run in unprivileged mode. However, for installation, root-access (via sudo) is required. During the installation, a SystemD service will be added.

The script is able to announce thede Bambu Labs printers:

- A1-series like the: A1, A1mini
- P1 series like the: P1P, P1S
- X1 series like the: X1, X2C (X1 Carbom), X1E

If anyone is able to provice a SSDP capture of nwer printers like the H2-series or the P2S feel free to add an issue to this repository or change the code (bsnotify) and create a Pull Request.

You need to know:

- The IP-adress of the printer(s) youre want to relay in the different VLAN
- The Serial Number of the printer

After installation, 2 demo printers will bee added: An X1C and an P1S. Adjust the configuration file located in /etc/bsnotify.d/printers.json after installation with your printer(s). If you only have 1 printer, remove the second in the given example.

Minimal install
If you want a minimal easy install, copy/paste only bsnotify. The rest of the files are for automated tests and to automatically create .deb and .rpm packaged for Debian/Ubunto of RHEL/CentOS/AlmaLinux systems, documentation/manfiles, etc, and are not needed. the file .bsnotify contains all logic and the installer itself via the --install switch.
