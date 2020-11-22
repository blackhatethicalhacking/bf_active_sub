# bheh_bf_sub.sh
Subdomain Bruteforce - Resolve if Host is Alive and Output the Results - Bounty Quick Technique

**Take a list that we provide, add a domain, and it will bruteforce it**

Written in Bash, basically host is a command that resolves a host if its alive by providing an ip and more, the way its written as we know stdin and stderr can be controlled, so we redirect it to &> /dev/null; which in terminal world, its like black hole :), and then after resolving if it exist, output the result.


After doing this, you can check another tool we wrote that resolves CNAME if they exist, of the list that you will finish from here having a 'golden' list, and if they do not resolve, and they are hanging, it means they are possible available as to be taken AKA SubDomain Takeover - for Bug Bounty ;)


This is for educational purpse only, Black Hat Ethical Hacking will not be held responsible nor we discourage doing such techniques without the consents of others.

All Rights Reserved - Black Hat Ethical Hacking - blackhatethicalhacking.com 2020
