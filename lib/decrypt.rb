require './lib/enigma'
require './lib/shifter'
require './lib/key_gen'
require './lib/offset'

@enigma = Enigma.new(ARGV[2], ARGV[3])

message = File.open(ARGV[0], "r")
decrypt = ""
message.map do |line|
  decrypt += @enigma.decrypt(line.chop)[:encryption] + "\n"
end

new_file = File.open(ARGV[1], "w")
new_file.write(decrypt)
new_file.close
puts "Created #{ARGV[1]} with the key #{ARGV[2]} and #{ARGV[3]}"
