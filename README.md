# PrawnCocktailRails

[![Build status](https://secure.travis-ci.org/barsoom/prawn_cocktail_rails.png)](https://travis-ci.org/#!/barsoom/prawn_cocktail_rails/builds)

Ruby on Rails integration for [PrawnCocktail](http://github.com/barsoom/prawn_cocktail).

## Usage

Please see [PrawnCocktail](http://github.com/barsoom/prawn_cocktail).

PrawnCocktailRails adds a `send_pdf` method to your controllers:

``` ruby
class InvoicesController < ApplicationController
  def show
    invoice = Invoice.find(params[:id])
    document = InvoiceDocument.new(invoice)
    send_pdf document
  end
end
```


It configures PrawnCocktail to look for its views in `app/views/documents`.

It also adds `app/documents/helpers` to the Rails autoload path so you can put your PrawnCocktail helpers there.

We suggest putting your documents in `app/documents`.

And that's it. The rest is all [PrawnCocktail](http://github.com/barsoom/prawn_cocktail).

## Installation

Add this line to your application's Gemfile:

    gem 'prawn_cocktail_rails'

And then execute:

    bundle

As this library depends on `prawn_cocktail`, you only need to list this one to get both.

### Mime types

You may need to register the pdf mimetype in `config/initializers/mime_types.rb`, for older versions of rails.

```ruby
Mime::Type.register "application/pdf", :pdf
```

## License

Copyright (c) 2013 [Barsoom AB](http://barsoom.se)

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
