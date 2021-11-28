package net.gcl.blog.util;

import java.util.Random;

public class MainClazz {
    public String kthLargestNumber(String[] nums, int k) {
        return quickSelect(nums, 0, nums.length-1, k-1);
    }
    private String quickSelect(String[] nums, int lo, int hi, int k){
        if(lo==hi) return nums[lo];
        shuffle(nums);
        while (lo < hi){
            int pivot = sort(nums, lo, hi);
            if(pivot==k) return nums[k];
            if(k<pivot){
                hi = pivot - 1;
            }else{
                lo = pivot + 1;
            }
        }
        return nums[k];
    }
    private int sort(String[] nums, int lo, int hi){
        String tmp = nums[lo];
        int i=lo, j=hi;
        while(true){
            while(i<=j && Double.valueOf(nums[i]) >= Double.valueOf(tmp)) i++;
            while(i<=j && Double.valueOf(nums[j]) <= Double.valueOf(tmp)) j--;
            if(i>=j) break;
            swap(nums, i++, j--);
        }
        swap(nums, j, lo);
        return j;
    }
    private void swap(String[] nums, int i, int j){
        String tmp = nums[i];
        nums[i] = nums[j];
        nums[j] = tmp;
    }
    private void shuffle(String[] nums){
        Random random = new Random();
        for (int i=0; i< nums.length; i++){
            int nxt = i + random.nextInt(nums.length - i) ;
            swap(nums, i, nxt);
        }
    }
}
