# for fix, look at app/models/admin_user.rb#38

# module BSON
#   class ObjectId
#     def to_json(*args)
#       return to_s if args.blank?
#       args[0].generate(to_s)
#     end

#     alias :as_json :to_json
#   end
# end

# module Mongoid
#   module Document
#     def to_key
#       (persisted? || destroyed?) ? [ id.to_s ] : nil
#     end
#   end
# end
