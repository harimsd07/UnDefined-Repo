---
share_link: https://share.note.sx/73n3ir4f#db4r0m8s49vPHymnTyzTRO0td+DW1eJrBJGdQ9DOAAQ
share_updated: 2025-03-28T15:39:14+05:30
---
# Installation and Requirements:

1. Php - the version should be greater than 8.1,
2. composer -the package manager 
3. Xampp - used as a local server 
4. VS Code 


### Composer Installation 
 https://getcomposer.org/download/

![[Pasted image 20250328142855.png]]

1. download the ".exe" file mentioned in the above site
2. after the file get downloaded , just double click it to run and then a dialog will appear in that box select option "Install Only for Me", then press the "next " button until you see the "Install" button.
3. then for verification purpose , press "WindowKey + R"  then type cmd to open command prompt .
4. then type composer in the cmd(command prompt).
5. you will get the screen like this 
6. ![[Pasted image 20250328143412.png]]

7. then need to install  laravel for that  you need to enter the command which is 
	1. "composer global require laravel/installer"
	2. ![[Pasted image 20250328143744.png]]
8. and finally use this command "laravel new Projectname" to create a new project.
	1 select none option
		.
		![[Pasted image 20250328144307.png]]
	2. if we get a pop like this for testing framework stuff
			![[Pasted image 20250328153900.png]]
		
	3. and then select mysql
		1. ![[Pasted image 20250328144414.png]]
	4.  then for migrating database select "NO"
		 ![[Pasted image 20250328144552.png]]
		
	5.   then for installing Npm select "No"	 
		![[Pasted image 20250328144646.png]]
		 
9. then move to the project floder with "cd ProjectName" and open it with vs code with the help of "code ."
10. Before running the project , never forget to start the XAMPP servers.
11. then in the VS code , open the new terminal and type "php artisan serve" command to run the project
	1. ![[Pasted image 20250328145147.png]]
12.  then copy the url  and paste it in the browser 
13. if you face any problem in the webpage then you need to create a database in the "localhost/phpmyadmin" dashboard.
	1. ![[Pasted image 20250328145525.png]]
14. then in the project structure , in the ".env" file 
	2. ![[Pasted image 20250328145658.png]]
	3. in that ".env" file add the database name in this part
		1. ![[Pasted image 20250328150115.png]]
	4. then need to migrate your table to the newly created database, for that you need to run the command which is "php artisan migrate"
			![[Pasted image 20250328150348.png]]
	5. then reload the webpage, you will get the result like this 
	6. ![[Pasted image 20250328150501.png]]
	