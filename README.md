# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Ellen & Jeff


Determine the Big O of the following (and ideally explain briefly why):
=================================
* Accessing an item by index in an array
	Big O: O(1)
	Locates item based on index

* Unshifting a new item into the beginning of an array
	Big O: O(n)
	Has to rebuild the array
* Pushing an item onto the end of an array
	Big O: O(n)
	Has to rebuild the array
* Upcasing a String
	Big O: O(n)
	Uses index to find item
	Then traverses item
	Then upcases each item
* Reversing a String
	Big O: O(n)
	Find items
	Create new array
	Adds items to new array
	Array gets rebuilt with every item added
* The Enumerable#each method
	Big O: O(n)
	Looks at each item in array
* The Enumerable#include? method
	Big O: O(n)
	Looks at each item in array
	Compare
* Finding the max of an array
	Big O: O(n)
	Take the array
	Compare each item to the one previous
	Keep bigger item
	Go through whole array
* Splitting a String
	Big O: O(n)
	Create an array
* Inserting a value to a Hash
	Big O: O(1)
	Find key
	Traverse linked list
	Add at end
* Retrieving the keys of a Hash ({ foo: "bar" }.keys)
	Big O: O(n)
	Find the value 
	Then find the keys
