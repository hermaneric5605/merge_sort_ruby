def merge_sort(arr)
  # 0. Base case
  return arr if arr.length <= 1

  # Divide
  mid = arr.length / 2
  arr0 = merge_sort(arr[0, mid])
  arr1 = merge_sort(arr[mid, arr.length])

  # Conquer
  output = merge(arr0, arr1)
end

def merge(l, r)
  output = []
  until l.length == 0 || r.length == 0
    output << if l[0] <= r[0]
                l.shift
              else
                r.shift
              end
  end
  # The order of `concat(l)` or `concat(r)` does not matters
  output.concat(l).concat(r)
end

merge_sort([11, 4, 2, 15, 9, 21])
