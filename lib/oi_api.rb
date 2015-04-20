require 'oi_api/configuration'
require 'oi_api/client'

module OiApi

  extend Configuration

  def self.new(options={})
    Client.new(options)
  end

end
