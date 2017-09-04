# GitPrRelease

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  # Creates pull requests from master into deploy/staging and deploy/production
  gem 'git-pr-release', git: 'https://github.com/buysell-technologies/git-pr-release', tag: 'v1.0'
end
```

And then execute:

    $ bundle install

You must then create a `.git-pr-release` config file:

    $ cat <<EOF > .git-pr-release
    [pr-release "branch"]
        production = deploy/production,deploy/staging
        staging = master
    EOF

Then you can create pull-requests using the following command:

    $ bundle exec git-pr-release

You will be asked for your github credentials the first time you make a request.
It will then be saved in your ~/.gitconfig like:

```
[pr-release]
    token = 58d233184c34287981ks9823a0501352e36340ea0
```

# Configuration
Here is how to config the `.git-pr-release` file.

To create a single pull request, enter a single branch name:

    [pr-release "branch"]
        production = deploy/staging
        staging = master

To create a pull-requests on multiple branches, enter multiple branches separated by `,`s

    [pr-release "branch"]
        production = deploy/production,deploy/staging
        staging = master
