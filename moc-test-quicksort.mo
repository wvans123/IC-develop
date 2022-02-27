import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Debug "mo:base/Debug"


func sort(arr: [var Int]) {
    quicksort(arr,0,arr.size()-1);
};

func quicksort(arr: [var Int],low: Nat,high: Nat) {
    if(low >= high) return;
    var temp = arr[low];
    var left = low;
    var right = high;
    while(left < right){
        while(arr[right] >= temp and right > left){
            right -= 1;
        };
        arr[left] := arr[right];
        while(arr[left] <= temp and left < right) {
            left += 1;
        };
        arr[right] := arr[left];
    };
    arr[right] := temp;
    if(left >= 1) quicksort(arr,low,left-1);
    quicksort(arr,left+1,high);
};

sort([var 6,3,5,7,1,8]);
