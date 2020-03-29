#conohaのサーバーのIP,ログインするユーザー名、サーバーの役割

server '118.27.7.218', user: 'Housee', roles: %w{app db web}, port: 52727

  set :ssh_options, {
    keys: %w(~/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: %w(publickey)
  }
