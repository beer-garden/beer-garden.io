require 'rack/contrib/try_static'
require 'rack/contrib/not_found'

use Rack::TryStatic, {
  :urls => ["/", "/images", "/javascripts", "/stylesheets"],
  :root => "public",
  :try => %w[
    .html index.html /index.html
  ]
}

run Rack::NotFound.new("public/404/index.html")
