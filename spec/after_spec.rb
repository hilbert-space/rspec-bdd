require 'spec_helper'
require 'rspec/bdd'

RSpec.feature 'Awesome feature' do
  background do
    expect(true).to be true
  end

  given(:truth) { true }
  given!(:lie) { false }

  scenario 'Superb scenario' do
    expect(truth).to be true
  end

  shared_scenarios 'Comprehensive scenarios' do
    scenario 'Handsome scenario' do
      expect(lie).to be false
    end
  end

  include_scenarios 'Comprehensive scenarios'
end
