require './lib/enigma'

message = File.open(ARGV[0], "r")
encrypt = ""
message.each do |line|
  encrypt += line.downcase
end

new_file = File.open(ARGV[1], "w")
new_file.write(encrypt)
new_file.close
