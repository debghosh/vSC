# this is a publicly available API. As yet there is no authentication.

class API < Grape::API
  version 'v1', using: :header, vendor: "VSC"
  format :json
  formatter :json, Grape::Formatter::Rabl

  helpers do

  end

end