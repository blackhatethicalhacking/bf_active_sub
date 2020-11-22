# bheh_bf_sub.sh
Subdomain Bruteforce - Resolve if Host is Alive and Output the Results - Bounty Quick Technique

**Take a list that we provide, add a domain, and it will bruteforce it**

Written in Bash, basically host is a command that resolves a host if its alive by providing an ip and more after bruteforcing it from a wordlist provided, that checks prefixes of 500/5000 top combinations, the way its written as we know stdin and stderr can be controlled, so we redirect it to &> /dev/null; which in terminal world, its like black hole :), and then after resolving if it exist, output the result in your terminal, or save it to a new list.

You can also Pipe lists as well instead of feeding a list.

This is an active recon scan, and not passive. Pure BF.

After doing this, you can check another tool we wrote that resolves CNAME if they exist, of the list that you will finish from here having a 'golden' list, and if they do not resolve, and they are hanging, it means they are possible available as to be taken AKA SubDomain Takeover - for Bug Bounty ;)

# Installation

After you clone the repo:

chmod +x bheh_bf_sub.sh

# Usage Example With Output in your Terminal:

cat 500_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh blackhatethicalhacking.com
cat 5000_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh blackhatethicalhacking.com

# Usage Example With Output Saved in a new File:

cat 500_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh blackhatethicalhacking.com > resolved_domains.txt
cat 5000_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh blackhatethicalhacking.com > resolved_domains.txt

**This is for educational purpse only, Black Hat Ethical Hacking will not be held responsible nor we discourage doing such techniques without the consents of others.**

All Rights Reserved - Black Hat Ethical Hacking - blackhatethicalhacking.com 2020
