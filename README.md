# quicksort.gml
This is a small script implementing modified quicksort algorithm for arrays in GameMaker: Studio. Can be used for imeplementing custom List types based on array or other fun things.

## Syntax:
```js
array_sort(array, ascending);
```

| Argument name | Type | Description                                                               |
|---------------|------|---------------------------------------------------------------------------|
| array         | \*[] | Array to sort                                                             |
| ascending     | bool | Whether the values should be ascending (true) or descending (false) order |

**Description:** Modifies the original array sorting it with the quicksort algorithm

## Example:
```js
var array1 = [2, 4, 43, 50, 79, 36, 93, 54, 99, 26, 65, 69, 81, 63, 72, 3, 59, 19, 35, 5, 53, 28, 91, 58, 51, 47, 64, 94, 41, 39, 7, 49, 78, 20, 84, 92, 23, 8, 13, 57, 9, 14, 16, 30, 12, 68, 45];
var array2 = ["Erik Dipalma", "Markus Plaisted", "Isela Denmark", "Glayds Billman", "Florence Hoffmeister", "Aurore Roser", "Pete Collins", "Glynda Van", "Kanesha Budniewski", "Sanford Merrigan"];

array_sort(array1, true);
array_sort(array2, false);
```

Will give you:
```
[2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 19, 20, 23, 26, 28, 30, 35, 36, 39, 41, 43, 45, 47, 49, 50, 51, 53, 54, 57, 58, 59, 63, 64, 65, 68, 69, 72, 78, 79, 81, 84, 91, 92, 93, 94, 99]
["Sanford Merrigan", "Pete Collins", "Markus Plaisted", "Kanesha Budniewski", "Isela Denmark", "Glynda Van", "Glayds Billman", "Florence Hoffmeister", "Erik Dipalma", "Aurore Roser"]
```

## Algorithm:
Standard quicksort algorithm may have problems with handling small arrays, recurrion and extreme pivot elements. To handle that, current algorith implementing an array-based stack. The separation procedure is made as a loop. Each time the array is divided into two parts, a request is sending to the stack to sort the larger one, and the smaller one will be processed at the next iteration. Requests are selected from the stack as the separation procedure is freed from current tasks. Sorting ends when queries end.

## Author:
Nikita Musatov - [MusNik / KeeVee Games](https://keevee.games/)

License: [MIT](https://en.wikipedia.org/wiki/MIT_License)
