def factorial(x)
  if x == 0
    return 1
  end
  return x * factorial(x-1)
end

def permutations(max_int)
  array = (0..max_int).to_a
  permutations = [array.join('').to_s]
  num_perms = factorial(array.length)
  count = 0
  while count <= num_perms - 2
    start = permutations[count]
    next_perm = next_permutation(start)

    permutations.push(next_perm)
    count += 1
  end
  permutations
end

def next_permutation(string)
  array = string.split('')
  array_length = array.length
  i = array_length - 2
  while i >= 0
    if array[i] < array[i+1]
      j = array_length - 1
      while j > i
        if array[j] > array[i]
          store = array[i]
          array[i] = array[j]
          array[j] = store
          k = i + 1
          swap = array_length - 1
          while k < swap
            store2 = array[k]
            array[k] = array[swap]
            array[swap] = store2
            swap -= 1
            k += 1
          end
          return array.join
        end
        j -= 1
      end
    end
    i -= 1
  end
  return nil
end

puts permutations(9)[999999]
