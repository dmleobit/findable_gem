# frozen_string_literal: true

class ApplicationService
  def self.call(*args, &block)
    if args[0].is_a? Hash
      new(**args[0], &block).call
    else
      new(*args, &block).call
    end
  end
end
