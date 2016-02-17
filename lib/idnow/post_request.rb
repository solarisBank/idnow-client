# require 'json'
require 'net/http'

module Idnow
  class PostRequest < Net::HTTP::Post
    def initialize(path, data)
      super(path)
      self['Content-Type'] = 'application/json'
      self.body = data.to_json
    end
  end
end