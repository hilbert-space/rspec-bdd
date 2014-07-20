require 'spec_helper'

RSpec.describe 'Awesome feature' do
  before do
    expect(true).to be true
  end

  let(:truth) { true }
  let!(:lie) { false }

  it 'Superb scenario' do
    expect(truth).to be true
  end

  xit 'Bad scenario' do
    expect(truth).to be false
  end

  shared_examples 'Comprehensive scenarios' do
    it 'Handsome scenario' do
      expect(lie).to be false
    end
  end

  include_examples 'Comprehensive scenarios'
end
