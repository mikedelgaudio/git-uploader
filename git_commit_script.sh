#!/bin/bash
clear
while [ "$continue" != "n" ]
do
clear
git-commit() {
	git add .
	read -p "What is your commit message?: " commit_message
	clear
	git commit -m "$commit_message"
	git push
	git status
}
git fetch
git status
read -p "Would you like to pull? (y/n): " pull_answer
if [ $pull_answer == y ];then
	clear
	git pull
	git-commit
elif [ $pull_answer == n ];then
	clear
	git-commit
else
	echo "ERROR"
fi
read -p "Would you like to run this script again?:(y/n) " continue
clear
done