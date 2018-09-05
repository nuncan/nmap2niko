#!/bin/bash
# Scans A CIDR Block For Web Servers 80/443 and Pipes The Results To Nikto For Analysis
echo -e "Please enter your Target CIDR Block.."
read range
nmap -p80,443 $range  -oG - | nikto -h -