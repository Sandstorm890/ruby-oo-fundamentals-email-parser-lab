# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser

    def initialize(emails)
        @emails = emails
    end

    def parse
        new_emails = []
        
        @emails.split(" " || ", ").each do |address|
    
            
            if address[-1] == ","
                new_emails << address.delete_suffix(",")
            else 
                new_emails << address
            end
        end
        new_emails.uniq
    end
end

