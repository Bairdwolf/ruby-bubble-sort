#if item on left>item on right, swwap them
#each time it passes through, rightward element is always sorted
#max amount of times to be sorted is length-1
#once sorted, stop iterating
def bubble_sort(arr)
  #set initial range and fully sorted
  compare_range=(arr.length)-1
  fully_sorted=false
  until fully_sorted==true do
    swapped=false
    count=0
    while count<compare_range do
      element=arr[count]
      rightward=arr[count+1]
      if element>rightward
        arr[count]=rightward
        arr[count+1]=element
        swapped=true
      end
      count+=1
    end
    if swapped==false
      fully_sorted=true
    end
    compare_range-=1
  end
  p arr
end

#bubble_sort([4,3,78,2,0,2])

