class MerchantService
  def self.connection
    Faraday.new(url: 'http://localhost:3000/api/v1/')
  end

  def self.parse_response(uri)
    JSON.parse(response(uri).body, symbolize_names: true)
  end

  def self.response(uri)
    connection.get(uri)
  end

  def self.find_merchant_response(merchant_id)
    response = connection.get("merchants/#{merchant_id}")
    parse_response(response)
  end
end