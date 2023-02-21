# frozen_string_literal: true
require 'findable/finder'


module Findable
  class Definition
    ONLY_KEYWORD   = 'only'
    EXCEPT_KEYWORD = 'except'

    attr_reader :resource_name, :params

    def initialize(controller:, resource_name:, **params)
      @controller    = controller
      @resource_name = resource_name
      @params        = params
      @only          = params.delete(:only)
      @except        = params.delete(:except)
    end

    def call
      this = self

      controller.define_method(finder_name) do
        resource = ::Findable::Finder.new(controller: self,
                                          resource_name: this.resource_name,
                                          **this.params).call
        instance_variable_set("@#{this.resource_name}", resource)
      end

      controller.before_action(finder_name, action_params)
    end

    private

    attr_reader :controller, :only, :except

    def finder_name
      @finder_name ||=
        "find_#{resource_name}#{only_suffix}#{except_suffix}!".to_sym
    end

    def only_suffix
      return if only.blank?

      "_#{ONLY_KEYWORD}_#{Array(only).join('_')}"
    end

    def except_suffix
      return if except.blank?

      "_#{EXCEPT_KEYWORD}_#{Array(except).join('_')}"
    end

    def action_params
      { only: only, except: except }.compact
    end
  end
end
