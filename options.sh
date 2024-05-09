# list_file() {
#   echo $(ls)
# }

# check_route() {
#   echo $(pwd)
# }

# echo "What you want to do?"
# echo "1. List files"
# echo "2. Create a file"
# echo "3. Remove a file"

# read -p "Enter your choice (1-3): " choice

# if (${choice} == 1); then
#   list_file
# elif (${choice} == 2); then
#   read -p "Name of the file? " filename
#    while [[ -f $filename ]]; do
#     echo "The filename already exists. Please enter a new filename!"
#     read -p "Name of the file? " filename
#   done 
#   create_file   
# elif (${choice} == 3); then
#   read -p "Which file you want to remove? " filetodelete
#   remove_file
# else
#   echo "Invalid choice."
# fi

# remove_file() {
#   echo $(rm ${filetodelete})
# }

# create_file() {
#   touch $filename
# }

echo "1. List files"
echo "2. Create a file"
echo "3. Remove a file"

read -p "Choose one of options: " selection

case $selection in
  1)
    ls -l $pwd
    ;;
  2) 
    read -p 'Enter the filename to create: ' filename
    touch $filename
    echo "Successfully file $filename created!"
    ;;
  3)
    read -p 'Enter the filename to remove: ' filename
    if [[ -f $PWD/$filename ]]; then
      rm $PWD/$filename
    echo "Successfully file $filename removed!"
    else 
      echo 'File not existed'
    fi
    ;;
  *)
    echo 'Choose the correct option!'
esac