# Rails 4, ActiveAdmin 1.x, Mongoid 4 and Ransack example

- Clone repo
- `$ rake db:seed`
- `$ rails s`
- http://127.0.0.1:3000/admin
- Admin `admin@example.org`:`elpmaxe14`


## Problem with BSON

If you have error, try to clean your cookies. It could be that your session
stores incorrect bson id representation.

It's described here https://github.com/plataformatec/devise/issues/2949

```ruby
# app/models/admin_user.rb
class AdminUser
  include Mongoid::Document
  
  #...
  
  def self.serialize_from_session(key, salt)
    record = to_adapter.get(key[0]["$oid"])
    record if record && record.authenticatable_salt == salt
  end
end
```

Other not so good solutions

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

and

```ruby
module Mongoid
  module Document
    def to_key
      (persisted? || destroyed?) ? [ id.to_s ] : nil
    end
  end
end
```
