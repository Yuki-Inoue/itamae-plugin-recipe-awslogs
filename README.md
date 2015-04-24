# itamae-plugin-recipe-awslogs

Plugin to support AWS CloudWatch Logs for Itamae.

## NOTE

This plugin support only package installation.

For more detail, see [Amazon CloudWatch Document](https://docs.aws.amazon.com/ja_jp/AmazonCloudWatch/latest/DeveloperGuide/QuickStartEC2Instance.html).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-awslogs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-awslogs

## Usage

### Recipe

#### your recipe example

```
include_recipe 'awslogs::package'
```

### Node

example for node.yaml

```
awslogs:
  config:
    logs:
      template: '/path/to/your/awslogs.conf'
      variables:
        key1: value1
    cli:
      template: '/path/to/your/awscli.conf'
      variables:
        aws_access_key_id: 'my_access_key_id'
        aws_secret_access_key: 'my_secret_key'
        region: 'us-east-1'
```

#### NOTE

- You must use **Absolute Path** for all of template keys.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itamae-plugin-recipe-awslogs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
