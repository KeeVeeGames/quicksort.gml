var array1 = [2, 4, 43, 50, 79, 36, 93, 54, 99, 26, 65, 69, 81, 63, 72, 3, 59, 19, 35, 5, 53, 28, 91, 58, 51, 47, 64, 94, 41, 39, 7, 49, 78, 20, 84, 92, 23, 8, 13, 57, 9, 14, 16, 30, 12, 68, 45];
var array2 = ["Erik Dipalma", "Markus Plaisted", "Isela Denmark", "Glayds Billman", "Florence Hoffmeister", "Aurore Roser", "Pete Collins", "Glynda Van", "Kanesha Budniewski", "Sanford Merrigan"];

show_debug_message(array1);
array_sort(array1, true);
show_debug_message(array1);

show_debug_message(array2);
array_sort(array2, false);
show_debug_message(array2);