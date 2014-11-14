require 'dogecoindark_client/version'
require 'dogecoindark_client/client'

class DogecoinDarkClient

  def initialize(options = {})
    @client = DogecoinDarkClient::Client.new(options)
  end

  # Delegate everything to the 'real' Client
  def method_missing(name, *args)
    @client.send(name, *args)
  end

  def self.configuration
    @configuration ||=  Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end

  class Configuration
    attr_accessor :host, :port, :protocol, :user, :password

    def initialize
      self.host = 'localhost'
      self.port = 20102
      self.protocol = :http
      self.user = 'dogecoindarkrpcuser'
      self.password = 'rpcpasswordgoeshere'
    end

  end

end
