def join_nested_strings(src)
  new_string=''
  outer_count=0
  while outer_count<src.count do
    inner_count=0
    while inner_count<src[outer_count].count do
      if src[outer_count][inner_count].is_a? String
        new_string.join(src[outer_count][inner_count])
    end
    inner_count+=1
  end
  outer_count+=1
  new_string
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
end
