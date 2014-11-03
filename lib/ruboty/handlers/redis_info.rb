require "ruboty/redis_info/actions/redis_info"

module Ruboty
  module Handlers
    class RedisInfo < Base
      on /redis info/, name: 'redis_info', description: 'ruboty plugin for show redis info.'

      def redis_info(message)
        ::Ruboty::RedisInfo::Actions::RedisInfo.new(message).call
      end
    end
  end
end
