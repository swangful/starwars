# SWAPI

![](https://media0.giphy.com/media/CuMiNoTRz2bYc/giphy.gif)

POC before attempting C#.

A Sarlacc pit fall I ran into was dealing with iterating through pages of an API request. That was a learning experience. I had to tap into the dark side.

I had the higher ground on setting up the framework. It was a breeze as I've used this same framework at 3 companies now.

Some Jedi mind tricks I've added
- A helpers file to store any api helper methods that can be used across different tests. 
- Broke out checking height into a method. Not only can we write tests for checking for folks with a height greater than 200, we can also pass any integer as a parameter to spit back an array of all the people taller than X. Alternatively, we can modify the method in a way to accept shorter, equal to, etc
- Optional environment parameters that can be passed
- Debugger that lets you step into a HTTP response

## Environment Setup

1. Clone the repo 
2. Make sure you have command line tools installed `xcode-select --install`
3. Install [homebrew](https://brew.sh/) 
4. If you don't have it already, install Ruby 2.6.3 via rbenv. Make sure you set your version properly after installing.
5. Now we install our gems (basically libraries in Ruby) `bundle install`

## Running tests

**Run RSpec tests using** 
> $ TEST_ENV=____ bundle exec rspec spec/_____spec.rb

- Right now, under config/config.yml, we only have production defined, but lets say we had a staging environment...then we could throw a staging api url there. 

**Running the chosen one**
- $ TEST_ENV=production bundle exec rspec spec/get_people_spec.rb

***Optional parameters***

 - `TEST_ENV` can be set to which environment you want the test to run 
   -  Example: `TEST_ENV=production`
 - You can run specific scenarios by adding the line number of the context/it block
   - Example: `bundle exec rspec spec/get_people_spec.rb:12`

## Debugging tests

Just add `binding.pry` anywhere in the steps/page objects. 

## Questions?
**Email**: swangful@gmail.com

**Discord**: swangful#1816

## Good luck and have fun!
![](https://media2.giphy.com/media/3o7abB06u9bNzA8lu8/giphy.gif)
