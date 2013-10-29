# Be sure to restart your server when you modify this file.

if Rails.env.production?
  MeurioAccounts::Application.config.session_store :cookie_store, key: '_meurio_accounts_session', domain: 'meurio.org.br'
else
  MeurioAccounts::Application.config.session_store :cookie_store, key: '_meurio_accounts_session'
end
