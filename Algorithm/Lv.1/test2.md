### twoSum
[twoSum](https://leetcode.com/problems/two-sum/)

##### JAVA
Approach 1: Brute Force
The brute force approach is simple. Loop through each element xx and find if there is another value that equals to target - xtarget−x.
~~~JAVA
public int[] twoSum(int[] nums, int target) {
    for (int i = 0; i < nums.length; i++) {
        for (int j = i + 1; j < nums.length; j++) {
            if (nums[j] == target - nums[i]) {
                return new int[] { i, j };
            }
        }
    }
    throw new IllegalArgumentException("No two sum solution");
}
~~~
