$LOAD_PATH.unshift '/srv/whimsy/lib'

require File.expand_path('../main.rb', __FILE__)

require 'whimsy/asf/rack'

# https://svn.apache.org/repos/infra/infrastructure/trunk/projects/whimsy/asf/rack.rb
use ASF::HTTPS_workarounds
use ASF::ETAG_Deflator_workaround
use ASF::Auth::Committers
use ASF::DocumentRoot
use Rack::Deflater

run Sinatra::Application
