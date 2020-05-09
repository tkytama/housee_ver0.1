#conohaのサーバーのIP,ログインするユーザー名、サーバーの役割

server '118.27.35.32', user: 'Housee', roles: %w{app db web}, port: 52727

set :ssh_options, keys: '~/.ssh/conoha_Housee/id_rsa', forward_agent: true # この行を追加しました。
