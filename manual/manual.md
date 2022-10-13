---
documentclass: extarticle
classoption: twoside
fontsize: 13pt
geometry: "left=2cm,right=2cm,top=2cm,bottom=2cm"
linestretch: 1.2
mainfont: Noto Serif-Regular
monofont: Noto Sans Mono-Regular
colorlinks: true
listings: true
header-includes:
- \usepackage{fancyhdr}
- \pagestyle{fancy}
- \fancyhf{}
- \fancyhead[LE,RO]{\fontsize{10}{12}\selectfont\nouppercase{\rightmark\hfill\leftmark}}
- \fancyhead[RO]{\fontsize{10}{12}\selectfont\nouppercase{\leftmark\hfill\rightmark}}
- \fancyfoot[LE,RO]{\hfill\thepage\hfill}
output: pdf_document
---

# Lab work manual

***Requirements:*** account on [GitLab](https://gitlab.com/)

## Add ssh-key in an account

### Generation of ssh-keys

In the terminal windows type the following command

```shell
ssh-keygen -f ~/.ssh/laptop -t rsa -b 4096
```

Where

- `-f ~/.ssh/laptop` is a path to ssh-key file (or, simply. filename). You can use different key names for the different sites;
- `-t sha -b 4096` is a key type

You should get the output like the one below. Please pay attention, in real life you must set up a password for your key. For lab work, you can omit it. In the ~/.ssh folder you can find two files - laptop (a private key) and laptop.pub (a public key).[^1]. You can use this public key to authentification on [GitLab](https://gitlab.com/) or [GitHub](https://github.com/). If you decide not to add any ssh key to your account, it will be harder to use all capabilities of `git`.

[^1]: More about public and private keys see [Public key cryptograhy](https://en.wikipedia.org/wiki/Public-key_cryptography)

```shell
osboxes@osboxes:~$ ssh-keygen -f ~/.ssh/laptop -t rsa -b 4096
Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/osboxes/.ssh/laptop
Your public key has been saved in /home/osboxes/.ssh/laptop.pub
The key fingerprint is:
SHA256:qzjUJyRDYydNZbwWautaPkEB/Q5xhNU+qrAK+ZuLKbw osboxes@osboxes
The key's randomart image is:
+---[RSA 4096]----+
|    .=.*=.       |
|    = B.+ .      |
|   o + * +       |
|    o * + o      |
|     B =S. .     |
| .  o = +.       |
|+  . +.=.        |
|.* .o++.         |
|+EB+ooo.         |
+----[SHA256]-----+
```

### Copy key in a clipboard

Use the `cat` utility to print your new public key, select all rows (from ssh-rsa), and copy it to a clipboard. Now you are ready for the next step - adding the key to the GitLab or GitHub account.

```shell
osboxes@osboxes:~$ cat ~/.ssh/laptop.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCg8YQ+i3ilcMP8PK0FN/1k++EsB++gk4dCe44stoNxZWEISWq1LLHf88FxwORIfMN6UmBssf8v+6y56KDQTr91jX3s4P+RV9XHpi7fE55RFtawmbvPWOYQH5fayTFOZgMvgHEOIFOf5wUNBgkj73iAQ35o7TnBm39uFCq8NPvEqzMbJR9dh/PWnxIqgRHTHOWJTkZ0yKW3KLc3RR0jEZIsFL6mtA0RIcZDk81+s4Uhz368sCJD9OyX20RyrzJ6+7dUAE8lVKQJJkt8Fm1O8EtoUdv1Ca7pYxImqcEPnjbPR0g0cG5hkfLgncFv7BmxeB5o+/MZQKzHAQG8T57QCRYmYQMPRcQI1yUtsU4TK8hfA51l8tcDgMRGmRTqZIlwY3IXQnj+qg+Nqqp3shQtsdYWMciPaEJumOfU34FsTPemeMVS7gnlLjputCwCi84qPtRayGNjCjVWNdhuogTpYIsNut9LfveEY/reUEvdVkyMVwdxExoE6gx4MTHi0vRzQu2+uqcOJ1kDPo89fKMmBRYuhQpSQWCFrlx1HSSnEUhmdSPqcaC2LL0W1DsWI+4+9qqVXiGprjL96Gm/EULPl++V/5fPChQ4uGf+Z4FuIG/p+jAW+0mX5WOfMIKyOnltl4Pa4HTRwj4DHsqfWit+ZK1docv0Ak4Z9f3PCTwPHkFZuw== osboxes@osboxes
```

### Adding the key to the GitLab or GitHub account

Go to the [GitLab](https://gitlab.com/) or [GitHub](https://github.com/) and log in.[^2] Now let's make all the required steps for [GitLab](https://gitlab.com/).

[^2]:  You can use other version control systems, e.g. [Bitbucket](https://www.atlassian.com/), but we use [GitLab](https://gitlab.com/) in our laboratory practicum, so please use it.

1. Go to [Prefernces](https://gitlab.com/-/profile/preferences) in your account and select `Edit profile`(Figure 1).
2. Select `SSH keys` from the left-side menu (Figure 2).
3. Press fill out all requred fields and paste your ssh key from clipboard and press `Add key` button (Figure 3).
4. Check your added key (Figure 4).

![Figure1](./images/Figure1_profile.png?raw=true "Figure 1. Profile prefernceses tab")

Figure 1. Profile prefernceses tab

![Figure2](./images/Figure2_newkey.png?raw=true "Figure 2. SSH keys tab")

Figure 2. SSH keys tab

![Figure3](./images/Figure3_addkey.png?raw=true "Figure 3. New SSH key tab")

Figure 3. Adding new SSH key tab

![Figure4](./images/Figure4_key_added.png?raw=true "Figure 4. SSH key tab with added key")

Figure 4. SSH keys tab with added new key

Note that you need to repeat similar steps for [GitHub](https://github.com/) and other version control systems.

Please add as many keys as you need for your home PC, home laptop, work laptop, and so on.
Please don't copy your private key between your devices; instead, create new ones. Also, setting an expiration date for your keys would be better.
Note that you need to repeat similar steps for [GitHub](https://github.com/) and other version control systems.

Please add as many keys as you need for your home PC, home laptop, work laptop, and so on.
Please don't copy your private key between your devices; instead, create new ones. Also, setting an expiration date for your keys would be better.
Now you can use `ssh`-protocol for cloning repos from a version control system (Figure 5).

![Figure5](./images/Figure5_clone.png?raw=true "Figure 5. Select SSH links.")

Figure 5. SSH links for cloning of repository.

## Individual task

### Cloning sample project repository

1. Go to [C Sample Make Project](https://gitlab.com/volnsav/c_sample_make_project/-/tree/master), push `Clone`, select `Clone with SSH` and copy the link to a clibboard.
2. Go to a terminal in a virtual machine and execute the following command `git clone git@gitlab.com:volnsav/c_sample_make_project.git`. If you set up a password, the `git` asks you to enter it.
3. Please check if you get a result that is similar to the output below.
4. Go to the `c_sample_make_project` folder and execute the following commands

   - `make`
   - `make build`
   - `make all`
   - `make run`
   - `make debug`
   - `make check`
   - `make cppcheck` -

Expected output for `git clone` command:

```shell
osboxes@osboxes:~$ git clone git@gitlab.com:volnsav/c_sample_make_project.git
Cloning into 'c_sample_make_project'...
remote: Enumerating objects: 13, done.
remote: Counting objects: 100% (13/13), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 13 (delta 1), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (13/13), 4.68 KiB | 4.68 MiB/s, done.
Resolving deltas: 100% (1/1), done.
```

### Creating project on GitLab

1. Go to [GitLab](https://gitlab.com/).
2. Create new project, e.g., press `New project` butoon and select `Create blank project` (Figure 6.)
3. After creating a project go to `Project information->Members` tab and invite your teaches or mentors be as project member (Figure 7).

![Figure6](./images/Figure6_blank.png?raw=true "Figure 6. Add project tab")

Figure61. `New blank project` tab

![Figure7](./images/Figure7_members.png?raw=true "Figure 7. Add members tab tab")

Figure 7. `Members` tab

### Cloning progaramming repository

1. Repeat steps 1-3 that have been performed above in [Cloning sample project repository](#cloning-sample-project-repository) for your own `programming-your-surname` repository.
2. Go to `programming-your-surname` folder.
3. Create `lab05` folder by typing `mkdir lab05`.
4. Copy contents of `c_sample_make_project` into `lab05` folder by typing `cp -a ../../c_sample_make_project/. . && rm -rf .git`. The mentioned command copies all files and folders from the `c_sample_make_project` into a current folder and removes `.git` folder. Please check the directory structure by typing `tree`[^3] in the `lab05` folder.
5. Go to `doc` folder and edit `Report.md` file. It is your report on the lab work.
6. Use `git add -A` to add all files to your project.
7. Use `git commit` to commit your changes
8. Push changes to the remote repository using `git push`

[^3]: Use `sudo apt install tree` if `tree` utility does not exist

An expected output after we add all files to git repository:

```git
git:(main) ✗  $ git add -A
git:(main) ✗  $ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
   new file:   Makefile
   new file:   lab05/.clang-format
   new file:   lab05/.clang-tidy
   new file:   lab05/.gitignore
   new file:   lab05/Makefile
   new file:   lab05/README.md
   new file:   lab05/doc/Report.md
   new file:   lab05/src/main.c
```

An expected folder structure of the `lab05` folder looks like the following:

```shell
lab05 git:(main) ✗  $ tree
.
├── doc
│   └── Report.md
├── Makefile
├── README.md
└── src
    └── main.c
```

**Note** please use this approach for all following lab works.

## Self-testing questions

1. How do you clone a repo from GitHub/GitLab?
2. How do you create a new ssh key?
3. How do you add public ssh key to Gitlab?
4. What does `git clone` do?
5. What does `git diff` do?
6. What does `git status` do?
7. How does `git add` work?
8. How does `git commit` work?
9. What does `git push` do?
10. How to compile a program in the command line?
11. Describe a structure of a `Makefile.`
12. How did you use the `Makefile` and `make` utility?

## Home task

### Setup Visual Studio Code into your Linux virtual machine

Go to [Visual Studio Code on Linux](https://code.visualstudio.com/docs/setup/linux) and setup Code for Debian-based distros:

Installing the .deb package will automatically install the apt repository and signing key to enable auto-updating using the system's package manager. Alternatively, the repository and key can also be installed manually with the following script:

```shell
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
```

Then update the package cache and install the package using:

```shell
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders
```

The last command setups `Visual Studio Code`.

### Set up an environment

Go to [C/C++ for Visual Studio Code](https://code.visualstudio.com/docs/languages/cpp), read and set up the environment for C and C++ development.

**Note** we will not use `Visual Studio Code` for compiling and debugging. You must use `lldb` in the fall semester for debugging. You are restricted to using `Visual Studio Code` as a text editor only.
