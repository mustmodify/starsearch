data = CSV.open(... )

data.each do |datum|
  star = Star.new(datum)
  DetectTwitterUser.new(star).fire
end

# bin/rails runner script/import.rb