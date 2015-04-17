module OiApi

  class Configuration

    attr_accessor :username, :password

    def initialize
      @username = nil
      @password = nil
    end

  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield configuration
  end
end
