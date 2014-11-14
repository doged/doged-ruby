require 'dogecoindark_client/client'

describe DogecoinDarkClient do

  def valid_client
    # make sure to replace these with the credentials from your own dogecoind
    DogecoinDarkClient.new(user: 'dogecoindarkrpcuser', password: 'rpcpasswordhere')
  end

  it 'sets up and works with a valid client' do
    bad_client = DogecoinDarkClient.new
    bad_client.valid?.should eql(false)

    valid_client.valid?.should eql(true)
  end

  it 'calls client methods correctly' do
    addr = valid_client.get_new_address
    addr[0].should eql('D')
  end

  it 'configures itself properly' do
    DogecoinDarkClient.configure do |config|
      config.user = 'dogecoindarkrpcuser'
      config.password = 'rpcpasswordhere'
    end
    client = DogecoinDarkClient.new
    client.valid?.should eql(true)
  end

  it 'using results as args' do
    client = valid_client
    new_wallet_addr = client.get_new_address
    my_balance = client.get_balance(new_wallet_addr)
    my_balance.should eql(0.0)
  end

end
