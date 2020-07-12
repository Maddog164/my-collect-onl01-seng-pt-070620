#require pry

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
array = ["Tim Jones", "Tom Smith", "JIm Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
