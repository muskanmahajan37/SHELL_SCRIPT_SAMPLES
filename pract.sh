 
read -p "Enter your username: " myname
read -sp "Enter your password: " mypassword
if [ "$mypassword" == "root" ]
then
echo "Your username is $myname "
echo " Password is $mypassword"
else
echo "wrong password. try again"
fi
