import UIKit
import Foundation


//let's see how to use URLSession
//But the URL can contain below items;
//scheme:[//[user[:password]@]host[:port]][/path][?query][#fragment]

//1. suppose we have an API

let urlString = "https://dog.ceo/api/breeds/image/random"

//2. convert string » URL
let url = URL(string : urlString)

//3. we can write as
var urlComponents = URLComponents()

urlComponents.scheme = "https"
//we can add more items to urlcomponents

//to make network request, we can use URLSession object (shared singleton)

/*
 URLSession Calls 'request' Task
1. DataTask - returns DATA from network directly into memory as instance of data struct

 2. DownloadTask - works like dataTask , but stored directly in a file on device
 3. UploadTask - upload a file to any server.
 4. StreamTask - to get continuous stream of data from a server.
 */

// if we Use HTTP, create a key into info.plist
// key is AppTransport Security Settings

/*TWO methods to HANDLE JSON data in iOS
 1. JSON Serialization
 2. Codable

 1.JSON Serialization
  - convert json DATA to and from swift dictionaries.
 - json object treated as a dictionary.
 - we need to maunallu map all the keys.
 - we also need to translate all to fit into a dictionary.

 2. Codable
 - DATA converted into struct, so we can extract individual value.
 - we can convert swift types « » XML & custom types
 - it's direct Matching
 - we can use different name of a key using CodingKeys
*/
