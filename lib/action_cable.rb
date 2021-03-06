require 'eventmachine'
EM.epoll

require 'set'

require 'active_support'
require 'active_support/json'
require 'active_support/concern'
require 'active_support/core_ext/hash/indifferent_access'
require 'active_support/core_ext/module/delegation'
require 'active_support/callbacks'

require 'faye/websocket'
require 'celluloid'
require 'em-hiredis'

require 'action_cable/engine' if defined?(Rails)

module ActionCable
  VERSION = '0.0.3'

  autoload :Server, 'action_cable/server'
  autoload :Connection, 'action_cable/connection'
  autoload :Channel, 'action_cable/channel'

  autoload :RemoteConnections, 'action_cable/remote_connections'
  autoload :Broadcaster, 'action_cable/broadcaster'

  module_function def server
    ActionCable::Server::Base.instance
  end
end
