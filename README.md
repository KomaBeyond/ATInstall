# ATInstall
this is an auto install shell script for automatic install the LAMP, LN(T)MP in linux system.<br/>
——create by Koma.

u can use it to install LAMP, LNMP or LT(Tengine)MP env.
also u can chose one of them to install, for example, if u chose to install LAMP but u dont't want to install all of them
so the script supply u chose intall the Http or Mysql or PHP or Nginx or Tengine only.
but as u know, if u install the PHP only, u have to install the Web Server first.

a surprise in the script is that u can chose the different version package to install. u do not need to do anything, just find the right version package u want and then download it and put it in the right directory. all the package is in the src dir, u can check it first when u use. i download some package for test, if it not fit u, u can just do that just like what am i said.

for someday, the script also will help u to install the extension for nginx/tengine or php.
also it will help u install the NoSQL package and Sphinx automatic.
that's my wish, it's not complete already.

when the script is run, first it will ask u to install the common depend package, u can input [yes] or [no] to decide what u want to do, i wanner to say is that the install common package script is in the commonPackageInstall.sh script file, this file use the yum command to install all the package, if ur system doesn't support the command u can edit it and change the command that ur own system can understand the command u have send!

at last, happy for ur life!


useage：<br/>
su root    --  this need u have the root permission<br/>
git clone https://github.com/KomaBeyond/ATInstall.git<br/>
cd ATInstall<br/>
./install.sh<br/>

for ur first to use it, u'd better read the tips careful!
