require 'active_support'

module Minitest
  
  module Instrument

    module Notifications

      def run(runner)
        ActiveSupport::Notifications.instrument('test.finished', {klass: self.class.name, test: @__name__}) do
          return super
        end
      end
      
    end

  end

end
