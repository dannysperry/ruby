def nearest_larger(arr, idx)
  sort = arr.sort
  jdx = sort.fetch(sort.index(arr[idx]).next, nil)
  jdx = arr.index(jdx)
end
