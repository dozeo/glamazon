module Glamazon
  module JSON
    def to_json
      encoder.encode attributes
    end
    
    def encoder
      @encoder ||= MultiJson
    end
  end
end