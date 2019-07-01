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
    git status
}
git fetch
echo "============RAN GIT FETCH============"
echo
git status
echo
read -p "Would you like to git pull? (y/n): " pull_answer
if [ $pull_answer == y ]; then
    git pull
    git_commit
elif [ $pull_answer == n ]; then
    git_commit
else
    echo "Sorry, this script didn't work :( "
fi
read -p "Would you like to run this script again? (y/n): " continue
done


#Features to add:
#cd automation
#git pull automatic