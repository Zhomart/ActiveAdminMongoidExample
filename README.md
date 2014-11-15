# ActiveAdmin, Mongoid 4 and Ransack example

- Clone
- `$ rake db:seed`
- `$ rails c`
- http://127.0.0.1:3000/admin

- admin email: `admin@example.org`
- admin pwd: `elpmaxe14`


## Problem with BSON

```ruby

# config/initializers/ext/bson.rb

module BSON
  class ObjectId
    def to_json(*args)
      return to_s if args.blank?
      args[0].generate(to_s)
    end

    alias :as_json :to_json
  end
end

```
