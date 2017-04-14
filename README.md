# aminima

AMinima is [minima](https://github.com/jekyll/minima) with [AMP](https://www.ampproject.org/).

[Theme preview](https://shoyan.github.io/aminima/)

![minima theme preview](/screenshot.png)

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "aminima"
```

And add this line to your Jekyll site:

```yaml
theme: aminima
```

And then execute:

    $ bundle


## Writing Posts with AMP

Writing posts works
[just like it does normally in Jekyll](https://jekyllrb.com/docs/posts/)
except when you want to include extra resources likes pictures, videos,
embedded Twitter posts, etc.

AMP has it's own set of special html tags for including content. You
should use these instead of normal Markdown or HTML tags.

The two you are are most likely to need are `<amp-img>` and `<amp-youtube>`:

### Images in your posts

```
<amp-img width="600" height="300" layout="responsive" src="/assets/images/your_picture.jpg"></amp-img>
```

### Youtube Videos in your posts

```
<amp-youtube data-videoid="lBTCB7yLs8Y" layout="responsive" width="480" height="270"></amp-youtube>
```

### Embedding other types of content

The AMP Project provides helpers for many other types of content like audio,
ads, Google Analytics, etc.

* Built-in AMP tags:
 * https://github.com/ampproject/amphtml/blob/master/builtins/README.md

* Extended AMP tags:
 * https://github.com/ampproject/amphtml/blob/master/extensions/README.md

## Validating your page with AMP

AMP adds built-in validation logic to make sure your pages follow all
the rules so they render as fast as possible.

To check your page, just add `#development=1` to any url on your site and then
check the javascript console in your browser.

http://localhost:4000/#development=1

You will either see a success message:

```
Powered by AMP ⚡ HTML – Version 1457112743399
AMP validation successful.
```

Or you will see a list of errors to fix:

```
Powered by AMP ⚡ HTML – Version 1457112743399
AMP validation had errors:
The attribute 'style' may not appear in tag 'span'
The attribute 'style' may not appear in tag 'div'
```

### Enabling Google Analytics

To enable Google Anaytics, add the following lines to your Jekyll site:

```yaml
  google_analytics: UA-NNNNNNNN-N
```

Google Analytics will only appear in production, i.e., `JEKYLL_ENV=production`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shoyan/aminima. 

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
