#Step 1: SSH to the App Server

# Step 2: Open the configuration file using a text editor like nano or vi
sudo vi /etc/ssh/sshd_config

#Step 3: Locate the line containing the PermitRootLogin directive. It might be commented out (start with a #) or set to yes, prohibit-password, or without-password.
#Change the setting to no. If the line is commented out, uncomment it (remove the #) and change the value.
PermitRootLogin no

#Save and close the file

#Step 4: Restart the sshd service
sudo systemctl restart sshd

#Step 5: Check the status of the service
sudo systemctl status sshd