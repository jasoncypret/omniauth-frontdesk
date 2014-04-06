require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class FrontDesk < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://frontdeskhq.com/',
        :authorize_url => 'https://frontdeskhq.com/oauth/authorize?',
        :token_url => 'https://frontdeskhq.com/oauth/token'
      }

      def request_phase
        super
      end

    end
  end
end

OmniAuth.config.add_camelization 'frontdesk', 'FrontDesk'
