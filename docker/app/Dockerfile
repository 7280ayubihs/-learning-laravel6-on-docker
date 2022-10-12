FROM amazonlinux:2
RUN yum -y update

# PHP をインストール
RUN amazon-linux-extras install php7.3

# Composer をインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Nginx をインストール
COPY nginx/nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx-1.19.2

# 必要なモジュールをインストール
RUN yum install -y procps-ng unzip php7.3-dom

# 起動
COPY init.sh /usr/local/bin
RUN chmod +x /usr/local/bin/init.sh
CMD /usr/local/bin/init.sh