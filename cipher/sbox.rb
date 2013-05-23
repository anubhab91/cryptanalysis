class Sbox
  # input: 16 bit array
  def self.sub(input)
    hexes = input.each_slice(4).map.inject([]) { |sum, s| sum << s.join.to_i(2)}
    hexes.map { |h| sprintf "%04d", SBOXFORWARD[h].to_s(2) }.join.split("").map(&:to_i)
  end
end
