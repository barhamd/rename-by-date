file_names = Dir.entries(Dir.getwd) # Grab all file names from current directory

file_names.shift(2) # Removes . and .. from array

file_names.sort_by!{ |file_name| File.mtime(file_name) } # Sort array by creation time

i = 1
file_names.each do |file_name|
  File.rename(file_name, "#{'%04d' % i}.jpg") # Rename file sequentially with a 4 digit format
  i = i + 1
end
