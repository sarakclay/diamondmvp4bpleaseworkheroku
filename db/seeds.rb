employeenew = [ {:username => "elgunG5U",
                        :password => "dTzLTjMfZhR"},
                        {:username => "5DVf2BnfS",
                        :password => "irqPVgRR"},
                        {:username => "ZKge81Cl1ol",
                        :password => "10IerhJI9F2"},
                        {:username => "1gvYEHTDznQ",
                        :password => "x5t9Y1R7"},
                        {:username => "QA9p0kSUN",
                        :password => "0aBYulmbomOjRj"},
                        {:username => "WtT5eN3DGv",
                        :password => "CabMQiOoWc"},
                        {:username => "GrtrS1M4lQOO9P",
                        :password => "dnxqpA0elbUjpB"},
                        {:username => "tVKvSjyQGHF33E",
                        :password => "gaCFQxL804"},
                        {:username => "BmS2QjCvbHehWJ",
                        :password => "Oaydz3TVX"},
                        {:username => "gJ8GBEsMr",
                        :password => "zMrZeejK"}]

Employee.destroy_all
employeenew.each do |employee_info|
  e = Employee.new
  e.username = employee_info[:username]
  e.password = employee_info[:password]
  e.save
end

puts "There are now #{Employee.count} employees."


