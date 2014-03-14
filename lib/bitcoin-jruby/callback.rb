# Example usage:
# kit.wallet.addEventListener(BJR.callback (BJR::Core::AbstractWalletEventListener) {
#   when :onCoinsReceived do |w, tx, prev, new|
#     v = tx.getValueSentToMe w
#     puts("Received tx for " + BJR::Utils.bitcoinValueToFriendlyString(v) + ": " + tx)
#   end
# });  

module BitcoinJRuby
  module CallbackClass
    def self.when e, &block
      self.define_method e, &block
    end
  end

  def self.callback klass, &block
    cb = Class.new(klass) do
      include CallbackClass
    end

    cb.instance_eval &block

    cb.new
  end
end
