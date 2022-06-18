require 'dashing'

configure do
  set :auth_token, 'YOUR_AUTH_TOKEN'
  set :ews_uri, 'https://outlook.office365.com'
  set :ews_user, 'ryan@crossfieldseattle.com'
  set :ews_pass, 'Lambda3Theta'
  set :ews_email_list, ['ryan@crossfieldseattle.com','roxie@hairchanics.com']
  # See http://www.sinatrarb.com/intro.html > Available Template Languages on
  # how to add additional template languages.
  set :template_languages, %i[html erb]
  set :show_exceptions, false

  helpers do
    def protected!
      # Put any authentication code you want in here.
      # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
