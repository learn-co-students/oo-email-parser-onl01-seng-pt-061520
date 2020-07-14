class EmailAddressParser 
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)
    @csv_emails = csv_emails
  end 
  
    def parse 
    csv_emails.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
end 

emails1 = "robot@notarobt.com, hemsworth.chris@apple.org, tony.stark@gmail.net"
parser1 = EmailAddressParser.new(emails1)
parser1.parse 

emails2 = "email@company.com person@confused.org human@robot.org toyota@tacoma.net"
parser2 = EmailAddressParser.new(emails2)
parser2.parse
