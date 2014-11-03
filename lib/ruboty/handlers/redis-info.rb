require "ruboty/redis-info/actions/redis-info"

module Ruboty
  module Handlers
    class Redis-info < Base
      on /redis-info redis-info/, name: 'redis-info', description: 'TODO: write your description'

      def redis-info(message)
        Ruboty::Redis-info::Actions::Redis-info.new(message).call
      end
    end
  end
end
