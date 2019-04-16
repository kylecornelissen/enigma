require './lib/enigma'
require './lib/shifter'
require './lib/key_gen'
require './lib/offset'

@enigma = Enigma.new

message = File.open(ARGV[0], "r")
encrypt = ""
message.map do |line|
  encrypt += @enigma.encrypt(line.chop)[:encryption] + "\n"
end
new_file = File.open(ARGV[1], "w")

new_file.write(encrypt)
new_file.close
puts "Created #{ARGV[1]} with the key #{@enigma.key} and #{@enigma.date}"
