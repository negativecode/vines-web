# Welcome to Vines

Vines is a scalable XMPP chat server, using EventMachine for asynchronous IO.
This gem provides a web chat client, used to test the server's BOSH support.

Additional documentation can be found at [getvines.org](http://www.getvines.org/).

## Usage

```
$ gem install vines vines-web
$ vines-web init wonderland.lit
$ cd wonderland.lit && vines start
$ open http://localhost:5280
```

## Dependencies

Vines requires Ruby 1.9.3 or better. Instructions for installing the
needed OS packages, as well as Ruby itself, are available at
[getvines.org/ruby](http://www.getvines.org/ruby).

## Development

```
$ script/bootstrap
$ script/tests
$ script/server
```

## Contact

* David Graham <david@negativecode.com>

## License

Vines is released under the MIT license. Check the LICENSE file for details.
