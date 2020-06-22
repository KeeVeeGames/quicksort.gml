/// @function                       array_sort(array, ascending)
/// @param {*[]} array              Array to sort
/// @param {bool} ascending         Whether the values should be ascending (true) or descending (false) order
/// @description                    Modifies the original array, sorting it with the quicksort algorithm

var array = argument0;
var ascending = argument1;

var compare;

if (ascending) {
    compare = __compare_ascending;
} else {
    compare = __compare_descending;
}

var length = array_length_1d(array);

var i, j;
var lb, ub;
var lb_stack = [], ub_stack = [];

var stack_pos = 1;
var pivot_pos;
var pivot;
var temp;

lb_stack[1] = 0;
ub_stack[1] = length - 1;

do {
    lb = lb_stack[stack_pos];
    ub = ub_stack[stack_pos];
    stack_pos--;
    
    do {
        pivot_pos = (lb + ub) >> 1;
        i = lb;
        j = ub;
        pivot = array[pivot_pos];
        
        do {
            while (script_execute(compare, array[i], pivot)) i++;
            while (script_execute(compare, pivot, array[j])) j--;
            
            if (i <= j) {
                temp = array[i];
                array[@ i] = array[j];
                array[@ j] = temp;
                i++;
                j--;
            }
        } until (i > j);
        
        if (i < pivot_pos) {
            if (i < ub) {
                stack_pos++;
                lb_stack[stack_pos] = i;
                ub_stack[stack_pos] = ub;
            }
            
            ub = j;
        } else {
            if (j > lb) {
                stack_pos++;
                lb_stack[stack_pos] = lb;
                ub_stack[stack_pos] = j;
            }
            
            lb = i;
        }
    } until (lb >= ub);
} until (stack_pos == 0);