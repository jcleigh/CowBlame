class CowBlame

  random_line = nil
  File.open('names.txt') do |file|
    file_lines = file.readlines
    random_line = file_lines[Random.rand(0...file_lines.size)]
    random_line.gsub!(/\r\n?/, "")
  end
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
