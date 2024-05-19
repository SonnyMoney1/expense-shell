echo -e "\e[35mInstalling Nginx\e[0m"

dnf install nginx -y
echo exit status -$?

systemctl enable nginx
systemctl start nginx
rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
ls
pwd
systemctl  restart nginx

