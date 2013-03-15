# Devise Imprintable

It adds support to [devise](http://github.com/plataformatec/devise) for track time and ip for first user sign in.

## Installation

Add this line to your application's Gemfile:

    gem 'devise_imprintable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise_imprintable

When you are done, you are ready to add DeviseImprintable to any of your Devise models using the following generator:

    rails generate devise_imprintable Model

Or just add fields to your model:

    class DeviseImprintableAddToUsers < ActiveRecord::Migration
      def up
        change_table :users do |t|
          t.datetime   :first_sign_in_at
          t.string     :first_sign_in_ip
        end
      end

      def down
        change_table :users do |t|
          t.remove :first_sign_ip, :first_sign_in_at
        end
      end
    end   

and add imprintable to your model:
  
    class User < ActiveRecord::Base
      devise :database_authenticatable, :registerable, :imprintable

      ...
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
