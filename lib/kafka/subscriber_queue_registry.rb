require 'kafka/per_thread_registry'

module Kafka
  class SubscriberQueueRegistry # :nodoc:
    extend PerThreadRegistry

    def initialize
      @registry = {}
    end

    def get_queue(queue_key)
      @registry[queue_key] ||= []
    end
  end
end
