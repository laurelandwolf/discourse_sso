module DiscourseSSO
  module Helper
    def sso
      secret = ENV['DISCOURSE_SSO_SECRET']
      sso = SingleSignOn.parse(request.query_string, secret)
      sso.sso_secret = secret
      sso
    end
  end
end
