# Subdomain Brute-Force The Pure & Fast Programming Way

<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://www.blackhatethicalhacking.com/wp-content/uploads/2022/06/BHEH_logo.png" width="300px" alt="BHEH"></a>
</p>

<p align="center">
A Subdomain enumeration tool that supports active attack mode (not passive recon) written by Black Hat Ethical Hacking
</p>

# What is Subdomain Enumeration/Brute-Force?

Brute force means guessing possible combinations of the target until the expected output is discovered. So, in the subdomain context, the brute-forcing is to try the possible combination of words, alphabets, and numbers before the main domain in order to get a subdomain that is resolved to IP address. Sometimes subdomains are not indexed on search engines and are not available on online DNS aggregators sites in that case brute forcing is the best way to find out the subdomains which may have been forgotten by the organization. It is like a treasure for an adversary.

Our tool has 0 false positives as it verifies it before bringing the result, and is focused on active scanning rather than passive.

It will resolve if the Host is Alive and Output the Results after bruteforcing using Pipe for Speed - Bounty Quick Technique

# About this tool

Written in Bash, basically host is a command that resolves a host if its alive by providing an IP and more after bruteforcing it from a wordlist provided, that checks prefixes of 500/5000 top combinations, the way its written as we know stdin and stderr can be controlled, so we redirect it to &> `/dev/null;` which in terminal world, its like black hole :), and then after resolving if it exist, output the result in your terminal, or save it to a new list.

**This is an active recon scan, and not passive. Pure BF.**

After doing this, you can check another tool we wrote that resolves CNAME if they exist, of the list that you will finish from here having a 'golden' list, and if they do not resolve, and they are hanging, it means they are possible available as to be taken AKA SubDomain Takeover - for Bug Bounty ;)

CName Check by BHEH Can be Found here:
https://github.com/blackhatethicalhacking/CName-Checker-by-bheh

# Installation

- Requirements:

`apt-get install lolcat`

`apt-get install figlet`

- Installation

`git clone https://github.com/blackhatethicalhacking/bf_active_sub.git`

`cd bf_active_sub`

`chmod +x bheh_bf_sub.sh`

# Instructions & Usage Example

**Take a list that we provide, add a domain, and it will bruteforce it**

Basically, using the below examples, you can perform in various one-liners since it supports piping as follows:

- Usage Example With Output in your Terminal:

`cat 500_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh example.com`

`cat 5000_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh example.com`

- Usage Example With Output Saved in a new File:

`cat 500_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh example.com > resolved_domains.txt`

`cat 5000_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh example.com > resolved_domains.txt`

**If you want to save the results, then simply add: `> results.txt` after your one-liner.**

i.e: `cat 500_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh example.com > resolved_domains.txt > results.txt`

# Screenshots

![alt text](https://imgur.com/dHAEbnN.png)

![Screenshot 2022-09-21 at 4 55 05 PM](https://user-images.githubusercontent.com/13942386/191523436-703b921d-a314-46bf-a50d-c060e54298b9.png)


# Compatibility

Tested on Kali Linux, Parrot OS - Any Debian based that uses apt package manager.

# Disclaimer

This tool is provided for educational and research purpose only. The author of this project are no way responsible for any misuse of this tool. 
We use it to test under NDA agreements with clients and their consents for pentesting purposes and we never encourage to misuse or take responsibility for any damage caused !

<h2 align="center">
  <a href="https://store.blackhatethicalhacking.com/" target="_blank">BHEH Official Merch</a>
</h2>

<p align="center">
Introducing our Merch Store, designed for the Offensive Security community. Explore a curated collection of apparel and drinkware, perfect for both professionals and enthusiasts. Our selection includes premium t-shirts, hoodies, and mugs, each featuring bold hacking-themed slogans and graphics that embody the spirit of red teaming and offensive security. 
Hack with style and showcase your dedication to hacker culture with gear that’s as dynamic and resilient as you are. 😊
</p>

<p align="center">

<img src="https://github.com/blackhatethicalhacking/blackhatethicalhacking/blob/main/Merch_Promo.gif" width="540px" height="540">
  </p>
