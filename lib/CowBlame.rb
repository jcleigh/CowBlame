class CowBlame

  def self.cow
    random_line = nil
    name = File.join( File.dirname(__FILE__), '/names.txt')
    random_line = File.readlines(name).sample
    random_line.gsub!(/\r\n?/, "")

    cow = "
    IT WAS #{random_line.upcase.chomp}
    I SWEAR!
    THAT PERSON BROKE IT!
          \\   ^__^
           \\  (oo)\\_______
            \\ (__)\\ 0   0 )\\  *
                   ||----w | \\/
                   ||     ||
    "
    puts cow
    end
end
