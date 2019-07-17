#This script will only work once the following has been done:
#       -signed into git server at least once
#       -already cd into the local repo directory
clear
echo "This script automates git commands"
echo "It will first git fetch and git status below"
echo "================================="
echo

while [ "$continue" != "n" ]
do

#git_cd(){
# cd automation coming soon
#    while [ $cd_continue != "y" ]
#    do
#    ls
#    read -p "Are you in the correct directory for your repo? (y/n) : " cd_message
#    if [ $cd_message == y ]; then
#        break
#    else
#        clear
#        read -p "Where "
#
#}

git_commit(){
    git add .
    read -p "What is your commit message?: " message
    clear
    git commit -m "${message}"
    git push
    echo
    git status
    echo "============RAN GIT STATUS============"
    echo
    echo
}
git fetch
echo "============RAN GIT FETCH============"
echo
echo
echo
git status
echo "============RAN GIT STATUS============"
echo
echo
echo
git pull
echo "============RAN GIT PULL============"
echo 
echo 
echo
git_commit

read -p "Would you like to run this script again? (y/n): " continue
done


#Features to add:
#cd automation
#git pull automatic