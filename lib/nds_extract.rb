$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

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
  # Write this implementation
  names = []
  index = 0

  while index < source.length do
    names << source[index][:name]
    index += 1
  end

  names
end

def total_gross(source)
@@ -38,6 +47,17 @@ def total_gross(source)
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end
  dir_to_earnings_hash = directors_totals(source)
  dir_names = list_of_directors(source)
  index = 0

  total = 0

  while index < dir_names.length do
    dir_name = dir_names[index]
    total += dir_to_earnings_hash[dir_name]
    index += 1
  end

  total
end
def directors_totals(nds)
  result = {}
  nil
  i = 0
  while i < nds.size do
    director = nds[i]
    result[director[:name]] = gross_for_director(director)
    i += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0
  total = 0
  while i < director_data[:movies].length do
  total += director_data[:movies][i][:worldwide_gross]
  i += 1
  end
total
end
