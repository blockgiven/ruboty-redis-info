require "ruboty"
require "ruboty/redis"
require "ruboty/redis/info/version"
require "ruboty/handlers/redis_info"

module Ruboty
  module Redis
    module Info
      def info
        client.info
      end
    end
  end
end

class Ruboty::Brains::Redis
  include ::Ruboty::Redis::Info
end
