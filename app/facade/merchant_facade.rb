class MerchantFacade
  
  def self.find_merchant(merchant_id)
    binding.pry
    @merchant = Merchant.new(filter_merchants("merchants/#{merchant_id}"))
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