class MerchantFacade
  
  def self.find_merchant(merchant_id)
    binding.pry
    data = MerchantService.find_merchant_response(merchant_id)
    binding.pry
    @merchant = Merchant.new(data[:data])
    binding.pry
  end

  def self.find_merchants(uri)
    filter_merchant(uri)
  end

  def self.filter_merchants(uri)
    binding.pry
    MerchantService.parse_response(uri)
    binding.pry
  end
end