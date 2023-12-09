require 'rack'

use Rack::Static,
    urls: ['/'],
    root: 'public',
    index: 'index.html'

run lambda { |_env|
  [200, { 'Content-Type' => 'text/html' }, ['Hello world!']]
}
