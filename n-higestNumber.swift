var nums : [Int] = [25,45,15,48,56,48,2,48,68,25]
 
func findLargest(array: [Int], position: Int)  -> Int
    {
    // creating set
    var digit = Set<Int>()
    for i in nums
    {
        digit.insert(i)
    }
// creating array
    var arr: [Int] = []
for i in digit
    {
    arr.append(i)
    }
        // sorting
    for i in 0..<arr.count
    {
        for j in i..<arr.count
        {
                if arr[i]>=arr[j]
                {
                    let temp = arr[i]
                    arr[i] = arr[j]
                    arr[j] = temp
                }
        }
    }
    return arr[arr.count-position]
    }
        print("inital array: \(nums)")
print(findLargest(array: nums, position: 2))
    

