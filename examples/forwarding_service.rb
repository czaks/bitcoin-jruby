require "bitcoin-jruby"

# This is a loose adaptation of:
# https://code.google.com/p/bitcoinj/source/browse/examples/src/main/java/com/google/bitcoin/examples/ForwardingService.java

if ARGV.count < 1
  puts "Usage: address-to-send-back-to"
end

params = BJR::Params::MainNetParams.get

forwarding_address = BJR::Core::Address.new(params, ARGV[0])
