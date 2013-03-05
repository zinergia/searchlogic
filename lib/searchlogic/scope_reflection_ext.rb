Dir[File.dirname(__FILE__) + '/scope_reflection_ext/*.rb'].each { |f| require(f) }
module Searchlogic
  module ScopeReflectionExt
    def self.included(klass)
      klass.class_eval do 
        extend Aliases
        extend SearchlogicConditions
        include ClassLevelMethods
        include MatchAlias
        include Type
      end
    end
  end
end