#
#Shell script to update all the repositories in the given folder
#Visits each folder, Pulls in all changes from remote master.

folders=$(find $PWD* -maxdepth 1 -type d)
for Dir in $folders
do 

if [ "$Dir" != "$PWD" ];
then 
	cd $Dir
	echo "I'm here $PWD"
	echo $(git status)
fi
done
