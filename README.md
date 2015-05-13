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

#### package recipe

Only install awslogs package.

```
# your recipe
include_recipe 'awslogs::package'
```

#### config recipe

Generate config files for awslogs.

```
# your recipe
include_recipe 'awslogs::config'
```

##### Node

example for node.yaml

```
awslogs:
  config:
    cli:
      aws_access_key_id: 'my_access_key_id'
      aws_secret_access_key: 'my_secret_key'
      region: 'us-east-1'
```

Currently, this gem does not support to configure `/etc/awslogs/awslogs.conf` yet.

See [CloudWatch Logs Agent Reference](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/AgentReference.html) about `/etc/awslogs/awslogs.conf`.

| name | required | description |
|:-----|:--------:|:------------|
| awslogs.config.cli.aws_access_key_id | optional | aws access_key_id (see [AWS document](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/QuickStartEC2Instance.html)) |
| awslogs.config.cli.aws_secret_access_key | optional | aws secret_access_key |
| awslogs.config.cli.region | required | region for CloudWatch Logs agent. |

#### enable recipe

Enable awslogs service.

```
# your recipe
include_recipe 'awslogs::enable'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itamae-plugin-recipe-awslogs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Copyright 2015 Leonis & Co.

MIT License
