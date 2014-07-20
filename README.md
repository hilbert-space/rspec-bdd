# RSpec BDD

The library extends the DSL of [RSpec](https://github.com/rspec/rspec)
with the following methods:

* `background`,
* `given`,
* `feature`,
* `scenario`, and
* `shared_scenarios`.

## Installation

In `Gemfile`:

```ruby
gem 'rspec-bdd'
```

## Usage

Before:

```ruby
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
```

After:

```ruby
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

  xscenario 'Bad scenario' do
    expect(truth).to be false
  end

  shared_scenarios 'Comprehensive scenarios' do
    scenario 'Handsome scenario' do
      expect(lie).to be false
    end
  end

  include_scenarios 'Comprehensive scenarios'
end
```

## Acknowledgments

The library is inspired by [Capybara](https://github.com/jnicklas/capybara).

## Contributing

1. [Fork](https://help.github.com/articles/fork-a-repo) the project.
2. Create a branch for your feature (`git checkout -b awesome-feature`).
3. Implement your feature (`vim`).
4. Commit your changes (`git commit -am 'Implemented an awesome feature'`).
5. Push to the branch (`git push origin awesome-feature`).
6. [Create](https://help.github.com/articles/creating-a-pull-request)
   a new Pull Request.
