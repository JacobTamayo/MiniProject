
def mergeSort(arr)
    if arr.length > 1
      arrB = arr[0..arr.length/2-1]
      arrC = arr[arr.length/2, arr.length-1]
      arrB = mergeSort(arrB)
      arrC = mergeSort(arrC)
      arr = merge(arrB, arrC)
    else
      return arr
    end
  end
  
  def merge(a, b)
    arr = []
    while !a.empty? && !b.empty?
      if a[0] < b[0]
        arr.push(a[0])
        a.shift
      else
        arr.push(b[0])
        b.shift
      end
    end
    if !a.empty?
      arr += a
    else
      arr += b
    end
    return arr
  end
  
  arr = [4,8,6,5,2,7,52,56,87,74,52,12]
  
  p mergeSort(arr)