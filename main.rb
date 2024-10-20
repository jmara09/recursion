require_relative 'lib/fibonacci'
require_relative 'lib/merge_sort'

p fibs(8)
# => [0, 1, 1, 2, 3, 5, 8, 13]

p fibs_rec(10)
# => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

p merge_sort([57, 62, 99, 76, 1, 27, 47, 25, 25, 82])
# => [1, 25, 25, 27, 47, 57, 62, 76, 82, 99]
