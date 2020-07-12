require binding.pry

def my_collect(array)
  i = 0
  collection = []
  while i < array.length
    #binding.pry
    collection << yield(array[i])
    i += 1
  end
  collection
end

#binding.pry
hello(array) do |name|
  name.split(" ").first
end
