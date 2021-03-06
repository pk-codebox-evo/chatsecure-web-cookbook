#
# Cookbook Name:: chatsecure_web
# Attributes:: default
#
# Based on ow_python from OpenWatch Inc.
#

# Chef repo
default['chatsecure_web']['secret_databag_name'] 			= "secrets"
default['chatsecure_web']['secret_databag_item_name'] 		= "secrets"

# System
default['chatsecure_web']['static_container_dir'] = "/var/www/static/"
default['chatsecure_web']['static_dir_name']    = "/static/"
default['chatsecure_web']['media_dir_name']    = "/media/"
default['chatsecure_web']['app_root']           = "/var/www/chatsecure-web"
default['chatsecure_web']['git_root']      		= "/var/git/chatsecure-web.git"
default['chatsecure_web']['git_user']      		= "git"
default['chatsecure_web']['service_user']      	= "django"
default['chatsecure_web']['service_user_id']       = 3002
default['chatsecure_web']['service_user_group']  = "service_users"
default['chatsecure_web']['service_user_gid']  = 500
default['chatsecure_web']['service_name']      	= "chatsecure_web"
default['chatsecure_web']['git_url']      		= "git://github.com/ChatSecure/chatsecure-web.git"
default['chatsecure_web']['git_rev']      		= "master"
default['chatsecure_web']['log_dir']     		= "/var/log/chatsecure-web/"
default['chatsecure_web']['service_log']		= "chatsecure_web.log"

# uWSGI config
default['chatsecure_web']['app_workers']        = 5
default['chatsecure_web']['max_requests']        = 5000 # max requests per app worker
default['chatsecure_web']['harakiri']        = 20 # Kill requests taking longer than 20 sec


#Python
default['chatsecure_web']['virtualenv_name']     = "web"
default['chatsecure_web']['virtualenvs_dir']     = "/opt/virtualenvs/"

#Django
default['chatsecure_web']['app_name']      		= "chatsecure"
default['chatsecure_web']['internal_port']		= 8000

#Postgres
default['chatsecure_web']['db_host']	    		= "localhost"
default['chatsecure_web']['db_port']	    		= 5432
default['chatsecure_web']['db_name']	    		= "chatsecure"
default['chatsecure_web']['db_user']	    		= "postgres"
# Hardcoded in postgresql as 'postgres'

# Nginx
default['chatsecure_web']['http_listen_port']    = 80
default['chatsecure_web']['https_listen_port']   = 443
default['chatsecure_web']['access_log']     		= "chatsecure_web_nginx_access.log"
default['chatsecure_web']['error_log']     		= "chatsecure_web_nginx_error.log"
