module RSpec
  module BDD
    def self.included(base)
      base.shared_context 'Behavior-driven development', bdd: true do
        instance_eval do
          alias background before
          alias given let
          alias given! let!
          alias shared_scenarios shared_examples
        end
      end

      base.configure do |config|
        config.alias_example_group_to :feature, bdd: true
        config.alias_example_to :scenario
        config.alias_example_to :xscenario,
          skip: 'Temporarily skipped with xscenario'
        config.alias_it_behaves_like_to :include_scenarios
      end
    end
  end

  include BDD
end
