# quicksort.gml

[![Donate](https://img.shields.io/badge/donate-%E2%9D%A4-blue.svg)](https://musnik.itch.io/donate-me) [![License](https://img.shields.io/github/license/KeeVeeGames/quicksort.gml)](#!)


>[!NOTE]
> GameMaker Studio 2.3.1 introduced a built-in array_sort function, it is recommended to use that instead, if you're able to work on 2.3.1+. This repo will remain for academic purposes.

This is a small script implementing a modified quicksort algorithm for arrays in GameMaker: Studio. It is sorting array pretty fast and also can be used for creating custom List types based on array or other fun things. Example of using: [ArrayList](https://github.com/KeeVeeGames/ArrayList.gml).

## Installation:
Get the latest asset package from the [releases page](../../releases). Import it into IDE.   
Alternatively copy the code from the corresponding scripts into your project.

## Syntax:
### `array_sort(array, ascending)`
Modifies the original array sorting it with the quicksort algorithm.

**Parameters:**
| Name      | Type                         | Description                                                               |
|-----------|------------------------------|---------------------------------------------------------------------------|
| array     | `any[]`                      | Array to sort                                                             |
| ascending | `bool`                       | Whether the values should be ascending (true) or descending (false) order |

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
The standard quicksort algorithm may have problems with handling small arrays, recursion, and extreme pivot elements. To handle that, the current algorithm implements an array-based stack. The separation procedure is made as a loop. Each time the array is divided into two parts, a request is sent to the stack to sort the larger one, and the smaller one will be processed at the next iteration. Requests are selected from the stack as the separation procedure is freed from current tasks. Sorting ends when queries end.

## Author:
Nikita Musatov - [MusNik / KeeVee Games](https://twitter.com/keeveegames)

License: [MIT](https://en.wikipedia.org/wiki/MIT_License)
