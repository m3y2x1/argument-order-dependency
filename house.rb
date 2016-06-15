class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(house_detail = {})
    @address = house_detail[:address]
    @square_feet = house_detail[:square_feet]
    @num_bedrooms = house_detail[:num_bedrooms] || 3
    @num_baths = house_detail [:num_baths] || 2
    @cost = house_detail [:cost] || 320_000
    @down_payment = house_detail [:down_payment] || 0.20
    @sold = house_detail [:sold] || false
    @short_sale = house_detail [:short_sale] 
    @has_tenants = house_detail [:has_tenants] || false
  end


    

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end

