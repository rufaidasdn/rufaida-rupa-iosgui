# [rufaida-rupa-iosgui][201]

This is the `iOS` projects of [Medical Systems Company Limited][000]'s based on `Swift` and packages as `ipa` project. This is the child of the [rufaida-rupa-parent][202]. This module developed aim to support `iOS` apps. It will be package as `ipa`. The dependent project cann't be use it as a dependency as following:


```xml
<dependency>
    <artifactId>rufaida-rupa-iosgui</artifactId>
    <groupId>my.com.rufaida.rupa</groupId>
    <version>1.0.00.GA</version>
</dependency>
```


All of the resources and libraries of [Medical Systems Company Limited][000] permitted to use under considering `MIT` license. Clone this project using Git Source Control Manager:

1. [`git clone bit.rufaida.my:rufaida/rufaida-rupa-iosgui.git`][201] from [bit.rufaida.my][200]
2. [`git clone git.rufaida.my:rufaidasdn/rufaida-rupa-iosgui.git`][301] from [git.rufaida.my][300]


### upload `rsa` keys then add to `~/.ssh/config`

```cfg
Host bit.rufaida.my
     HostName bitbucket.org
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/bit_rufaida_rsa
     User git
    
Host git.rufaida.my
     HostName github.com
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/git_rufaida_rsa
     User git
     
```


### build single module by shell

```bash
\
a='expire ui.rpa static utlity change entity persis';\
a="$a servis fusion jasper report javars webapp iosapp fatjar";\
printf "\n\033[0;33mDo you wish to:\033[0m\n";\
select o in 'install' 'deploy';do case $o in 'install') break;; 'deploy') \
break;;esac;done;printf "\n\033[0;33mSkip test case:\033[0m\n";select t in \
'false' 'true';do case $t in 'false') break;; 'true') break;;esac;done;\
printf "\n\033[0;33mChoose profile:\033[0m\n";select p in \
'dev' 'pro' 'uat';do case $p in *) break;;esac;done;\
i='\nYour option is: \033[0;32m%s\033[0m \033[0;31m-Dmaven.test.skip';\
i="$i\033[0m=\033[0;32m%s\033[0m\n";printf "$i" "$o" "$t";while :;do \
printf '\n\033[0;33mChoose modules:\033[0m\n';select m in ${a// / };do \
case $m in *) break;;esac;done;if [ "$m" == 'expire' ];\
then break;elif [ "$m" == '' ];then printf \
'\n\033[0;31mInvalid\033[0m menuitem chosen!\n';else g='';n='';c='';\
d="rufaida-rupa-$m";if [ -d $d ]&&[ -f "$d/pom.xml" ];then cd $d;\
printf '\n%sing \033[0;32m%s\033[0m\n' "$o" "$d";\
if [ "$m" == 'parent' ];then n='-N ';fi;f='mvn clean';\
if [ "$o" == 'install' ];then f="$f install";fi;\
if [ "$o" == 'deploy' ];then f="$f deploy";fi;f="$f -P$p %s%s";\
if [ "$t" == 'true' ];then f="$f -Dmaven.test.skip=true";fi;\
if [ "$o" == 'deploy' ];then f="$f -Djava.net.preferIPv4Stack=true";fi;\
printf -v c "$f" "$g" "$n";$c;cd ..;fi;fi;done

```


### build multiple module by shell

```bash
\
a='ui.rpa static utlity change entity persis';\
a="$a servis fusion jasper report javars webapp iosapp fatjar";\
printf "\n\033[0;33mDo you wish to:\033[0m\n";\
select o in 'install' 'deploy';do case $o in 'install') break;; 'deploy') \
break;;esac;done;printf "\n\033[0;33mSkip test case:\033[0m\n";select t in \
'false' 'true';do case $t in 'false') break;; 'true') break;;esac;done;\
printf "\n\033[0;33mChoose profile:\033[0m\n";select p in \
'dev' 'pro' 'uat';do case $p in *) break;;esac;done;\
i='\nYour option is: \033[0;32m%s\033[0m \033[0;31m-Dmaven.test.skip';\
i="$i\033[0m=\033[0;32m%s\033[0m\n\n";printf "$i" "$o" "$t";for m in $a;\
do g='';n='';c='';d="rufaida-rupa-$m";if [ -d $d ]&&[ -f "$d/pom.xml" ];\
then cd $d;printf '\n%sing \033[0;32m%s\033[0m\n' "$o" "$d";\
if [ "$m" == 'parent' ];then n='-N ';fi;f='mvn clean';\
if [ "$o" == 'install' ];then f="$f install";fi;\
if [ "$o" == 'deploy' ];then f="$f deploy";fi;f="$f -P$p %s%s";\
if [ "$t" == 'true' ];then f="$f -Dmaven.test.skip=true";fi;\
if [ "$o" == 'deploy' ];then f="$f -Djava.net.preferIPv4Stack=true";fi;\
printf -v c "$f" "$g" "$n";$c;cd ..;fi;done

```


### push multiple modules by shell

```bash
\
a='ui.rpa static utlity change entity persis';\
a="$a servis fusion jasper report javars webapp iosapp fatjar";\
u="$(git config user.name)";for s in $a;do m="rufaida-rupa-$s";d="./$m";\
if [ -d $d ]&&[ -d "$d/.git" ];then f='%s by %s on %s';\
t="$(date +'%d%b%Y %R %p'|tr '[:lower:]' '[:upper:]')";cd $d;\
if [[ "$(git diff --cached --numstat|wc -l|tr -dc '0-9')" -gt '0' ]];then \
cd ..;printf '\npushing  \033[0;32m%s\033[0m\n' "$m";select q in 'Yes' 'No';\
do case $q in 'Yes') break;; 'No') break;;esac;done;\
if [ "$q" == 'Yes' ];then printf '\nNotes for \033[0;32m%s\033[0m: ' "$m";\
read n;printf -v c "$f" "$n" "$u" "$t";cd $d;\
git commit -m "$c";git push -u origin master;cd ..;fi;else cd ..;\
printf '\n\033[0;31mNo index\033[0m \033[0;32m%s\033[0m\n' "$m";fi;fi;done

```


### pull multiple modules by shell

```bash
\
a='ui.rpa static utlity change entity persis';\
a="$a servis fusion jasper report javars webapp iosapp fatjar";\
printf "\n\033[0;33mDo you wish to:\033[0m\n";select o in 'fetch' 'pull';\
do case $o in 'fetch') break;;'pull') break;;esac;done;for s in $a;\
do m="rufaida-rupa-$s";d="./$m";if [ -d $d ]&&[ -d "$d/.git" ];then cd $d;\
if [[ $(git status --porcelain|wc -l|tr -dc '0-9') -eq '0' ]];then cd ..;\
printf '\n%sing \033[0;32m%s\033[0m\n' "$o" "$m";select q in 'Yes' 'No';\
do case $q in 'Yes') break;; 'No') break;;esac;done;cd $d;\
if [ "$q" == 'Yes' ];then if [ "$o" == "fetch" ];then git fetch --all;\
git fetch --tags;else git pull origin master;fi;fi;cd ..;else cd ..;\
printf '\n\033[0;31mcommit/reset\033[0m \033[0;32m%s\033[0m\n' "$m";fi;fi;done

```


### good to know for git and shell

```bash
#good to know for run ssh agent
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/bit_rufaida_rsa
ssh-add -K ~/.ssh/git_rufaida_rsa

#good to know for delete commit
git reset --hard HEAD^
git push --force

#good to know for delete gittag
git push --delete origin tagname
git tag  --delete tagname

#good to know before git ignore
git rm --cached to/file/path/name.*
git rm --cached to/file/path/name.ext

#good to know git stop tracking
git update-index --assume-unchanged to/file/path/name.*
git update-index --assume-unchanged to/file/path/name.ext

#good to know for find and replace
for f in $(find ./app/ -name '*.java'); do sed "s/boot/rupa/g" \
"$f"> "$f.tmp" && mv "$f.tmp" "$f"; done;

```


### maven server config for `~/.m2/settings.xml`

```xml
<servers>
    <server>
        <id>medisys.releases</id>
        <configuration>
            <httpHeaders>
                <property>
                    <name>Authorization</name>
                    <value>Basic c2hhaGVkOm1lZGlzeXM==</value>
                </property>
            </httpHeaders>
        </configuration>
    </server>
</servers>
```


### maven repository config for `~/.m2/settings.xml` or `pom.xml`

```xml
<repositories>
    <repository>
        <id>medisys.releases</id>
        <url>http://maven.medisys.com.my/maven2/releases</url>
        <releases><enabled>true</enabled></releases>
        <snapshots><enabled>false</enabled></snapshots>
    </repository>
</repositories>
```


### LICENSE

```
Copyright (c) 1984-2019 Medical Systems Company Limited

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


### About the Project

The goal of this project to add the features of Interoperability and Integration with **HMIS (Hospital Management Information System)**. This project developed by `Java EE` with `Spring Framework`, `Apache Camel ESB` and `Apache CXF`. **Md Shahed Hossain(Shahed)** is Technical Lead of this project.


### About [Medical Systems Company Limited][000]

**Medisys** is the short form of [Medical Systems Company Limited][000] is a Riyadh based company which provides full range offers through **HMIS (Health Management Information Systems)** starting from analysing requirements, development, application delivery and support for user adaptations. The evolution and migration to `Oracle 11g` database and `RAC` from previous architecture gave Medisys's **HMIS (Hospital Management Information System)** location transparency, redundancy and volatility on information management.


### About Founder

**Mohamad Al-Sherbini(Sherbini)** is the founder of [Medical Systems Company Limited][000]. **Azizul Hoque Bhuyan(Milton)** is the Technical Manager as well as founder of **Medical System Company Limited** and [Rufaida Medical Systems Sdn Bhd][001].


### Contact

- [**devs@medisys.com.sa**][100]
- [**devs@rufaida.com.my**][101]
- [**medisys.com.sa**][000]
- [**rufaida.com.my**][001]


[000]:  http://medisys.com.sa "Medical Systems Company Limited. Visit us"
[001]:  http://rufaida.com.my "Rufaida Medical Systems Sdn Bhd. Visit us"

[100]:  mailto:devs@medisys.com.sa "Medical Systems Company Limited. Email us"
[101]:  mailto:devs@rufaida.com.my "Rufaida Medical Systems Sdn Bhd. Email us"

[200]:  https://bitbucket.org/rufaida "bit.rufaida.my"
[201]:  https://bitbucket.org/rufaida/rufaida-rupa-iosgui "rufaida-rupa-iosgui"
[202]:  https://bitbucket.org/rufaida/rufaida-rupa-parent "rufaida-rupa-parent"

[300]:  https://github.com/rufaida "git.rufaida.my"
[301]:  https://github.com/rufaida/rufaida-rupa-iosgui "rufaida-rupa-iosgui"

