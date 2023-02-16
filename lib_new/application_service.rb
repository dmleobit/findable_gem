# frozen_string_literal: true

class ApplicationService
  def self.call(...)
    new(...).call.tap do |result|
      return yield(result) if block_given?
    end
  end
end

# module Findable
#   extend ActiveSupport::Concern

#   class_methods do
#     # resource_name - name of instance variable where found resource will be placed
#     # options includes:
#     #   - class          - name of resource class (default: taken from resource_name)
#     #   - by             - how value is named in params (default: :id)
#     #   - attribute      - name of resource attribute (default: :id)
#     #   - strict         - raise error if resource hasn't been found (default: true)
#     #   - fallback       - method name/proc which we call if resource hasn't been found
#     #   - fallback_value - method name/proc which we call if value can't be found in params
#     #   - only           - list of controller actions on which it is triggered
#     #   - except         - list of controller actions on which it isn't triggered
#     #   - eager_load     - list of eager loaded entries to avoid N+1 problem
#     #   - preload        - list of preloaded entries to avoid N+1 problem
#     #   - joins          - list of joined entries to avoid N+1 problem
#     #   - decorate       - shows if we should decorate found resource.
#     #                      Can be used only with respective Drapper decorator
#     #   - friendly       - shows if we should find resource also by slug field.
#     #                      Can be used only for FriendlyId models.
#     #
#     def find(resource_name, **options)
#       ::Findable::Definition.call(
#         controller: self,
#         resource_name: resource_name,
#         **options
#       )
#     end
#   end
# end
