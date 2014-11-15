module BSON
  class ObjectId
    def to_json(*args)
      return to_s if args.blank?
      args[0].generate(to_s)
    end

    alias :as_json :to_json
  end
end
