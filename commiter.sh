while [ "$continue" != "n" ]
do
git_commit(){
    git add .
    read -p "What is your commit message?: " message
    git commit -m "${message}"
    git push
    git status
}
git fetch
git status
read -p "Would you like to git pull? (y/n): " pull_answer
if [ $pull_answer == y ]; then
    git pull
    git_commit
elif [ $pull_answer == n ]; then
    git_commit
else
    echo "Sorry, this script didn't work"
fi
read -p "Would you like to run this script again? (y/n): " continue
done