# jsch_sftp

A simple JRuby wrapper around the Java [JSch](http://www.jcraft.com/jsch/) library for SFTP implementation.
Current JSch version is `0.1.55`

## Installation

Add this line to your application's Gemfile:

    gem 'jsch_sftp'

then execute:

    $ bundle

## Usage

```
require 'jsch_sftp'
require 'jsch_sftp/sftp'

JschSFTP::SFTP.start('host', 'user', identity: '/path/to/keyfile') do |sftp|
  # To list files/folders
  sftp.entries('/').each do |entry|
    puts entry.name
  end

  # To upload
  sftp.upload!('/path/to/local', '/path/to/remote')

  # To download
  sftp.download!('/path/to/remote', '/path/to/local')
end
```

## Special Thanks
This library is a port of [jsch-sftp](https://github.com/modcloth-labs/jsch-sftp) but uses latest version of JSch.
Thanks madcloth-labs.
I have ported it with plans to upgrade and maintain it and also release it as a gem for ease of use.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
