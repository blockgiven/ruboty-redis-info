# port of https://github.com/jimmycuadra/lita/blob/master/lib/lita/handlers/info.rb
module Ruboty
  module RedisInfo
    module Actions
      class RedisInfo < Ruboty::Actions::Base
        def call
          message.reply("Redis #{version} - Memory used: #{used_memory}")
        end

        private

        def info
          message.robot.brain.info
        end

        def version
          info['redis_version']
        end

        def used_memory
          info['used_memory_human']
        end
      end
    end
  end
end
