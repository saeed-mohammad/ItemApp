/* 
Copyright (c) 2025 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

//import Foundation
//struct Formats : Codable {
//	let text/html : String?
//	let application/epub+zip : String?
//	let application/x-mobipocket-ebook : String?
//	let text/plain; charset=us-ascii : String?
//	let application/rdf+xml : String?
//	let image/jpeg : String?
//	let application/octet-stream : String?
//
//	enum CodingKeys: String, CodingKey {
//
//		case text/html = "text/html"
//		case application/epub+zip = "application/epub+zip"
//		case application/x-mobipocket-ebook = "application/x-mobipocket-ebook"
//		case text/plain; charset=us-ascii = "text/plain; charset=us-ascii"
//		case application/rdf+xml = "application/rdf+xml"
//		case image/jpeg = "image/jpeg"
//		case application/octet-stream = "application/octet-stream"
//	}
//
//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		text/html = try values.decodeIfPresent(String.self, forKey: .text/html)
//		application/epub+zip = try values.decodeIfPresent(String.self, forKey: .application/epub+zip)
//		application/x-mobipocket-ebook = try values.decodeIfPresent(String.self, forKey: .application/x-mobipocket-ebook)
//		text/plain; charset=us-ascii = try values.decodeIfPresent(String.self, forKey: .text/plain; charset=us-ascii)
//		application/rdf+xml = try values.decodeIfPresent(String.self, forKey: .application/rdf+xml)
//		image/jpeg = try values.decodeIfPresent(String.self, forKey: .image/jpeg)
//		application/octet-stream = try values.decodeIfPresent(String.self, forKey: .application/octet-stream)
//	}
//
//}
