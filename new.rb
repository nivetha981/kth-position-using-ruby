def rotate_array(arr, k)
    n = arr.length
    k = k % n  # In case k is larger than n
    return arr if k == 0
  
    # Split the array into two parts: one from the end and one from the start
    rotated_part = arr[-k..-1]
    remaining_part = arr[0...-k]
  
    # Concatenate the two parts to get the rotated array
    rotated_array = rotated_part + remaining_part
  end
  
  # Example usage
  arr = [1, 2, 3, 4, 5]
  k = 2
  rotated_array = rotate_array(arr, k)
  puts "Rotated Array: #{rotated_array}"
  