# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :name, :emails
  
  def initialize(email_addresses)
    @emails = email_addresses
  end
  
  def parse
   parsedemails = @emails.split.collect {|emails| emails.split (',')}
  parsed  = parsedemails.flatten.uniq
   parsed
  end
  
end