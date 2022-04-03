def fibs(n)
  a = 0
  b = 1
  result = []

  n.times do |entry|
    result << a if entry == 0
    result << b if entry == 1

    if entry >= 2
      result << (a + b)
      a = b
      b = result[-1]
    end
  end

  result
end

def fibs_rec(n)
  return [0] if n == 1
  return [0,1] if n == 2
  fibs_rec(n-1) + [fibs_rec(n-1)[-1] + fibs_rec(n-1)[-2]] if n >= 3
end

def merge_sort(array)
  return array if array.length < 2

  half = array.length / 2
  left = merge_sort(array[...half])
  right = merge_sort(array[half..])

  i = j = 0
  while i + j < array.length
    if right[j].nil? || (left[i]&.<= right[j])
      array[i+j] = left[i]
      i+=1
    else
      array[i+j] = right[j]
      j+=1
    end
  end

  array
end
