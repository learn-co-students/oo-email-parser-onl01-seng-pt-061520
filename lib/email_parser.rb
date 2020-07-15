class EmailAddressParser
  
  attr_reader :addresses
  
  def initialize(emails)
    @addresses = emails
  end
  
  def parse
    self.addresses.split.map{|email| email.split (',')}.flatten.uniq
  end
end