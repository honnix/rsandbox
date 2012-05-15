require 'ruport'

table = Ruport::Data::Table.new :column_names => ['country', 'wine'],
                                :data => [['France', 'Bordeaux'],
                                          ["Italy", "Chianti"],
                                          ["France", "Chablis"]]
puts table.to_text

found = table.rows_with_country("France")
found.each do |row|
  puts row.to_csv
end
