$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


'''ruby

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  directors_database = [[[{:name => "Stephen Spielberg",:total => "1357566430"}, {:name => "Russo Brothers", :total => "2281002470"},
  {:name => "James Cameron", :total => "2571020373"}, {:name => "Spike Lee", :total => "256624217"},
  {:name => "Wachowski Siblings", :total => "806180282"}, {:name => "Robert Zemeckis", :total => "1273838385"},
  {:name => "Quentin Tarantino", :total => "662738268"}, {:name =>"Martin Scorsese", :total => "636812242"},
  {:name =>  "Francis Ford Coppola", :total => "509719258"}
]]]
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end
