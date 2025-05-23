/* 
Copyright (c) 2025 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Book : Codable {
	let id : Int?
	let title : String?
	let authors : [Authors]?
	let summaries : [String]?
//	let translators : [String]?
	let subjects : [String]?
	let bookshelves : [String]?
	let languages : [String]?
	let copyright : Bool?
	let media_type : String?
//	let formats : Formats?
	let download_count : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case title = "title"
		case authors = "authors"
		case summaries = "summaries"
//		case translators = "translators"
		case subjects = "subjects"
		case bookshelves = "bookshelves"
		case languages = "languages"
		case copyright = "copyright"
		case media_type = "media_type"
//		case formats = "formats"
		case download_count = "download_count"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		authors = try values.decodeIfPresent([Authors].self, forKey: .authors)
		summaries = try values.decodeIfPresent([String].self, forKey: .summaries)
//		translators = try values.decodeIfPresent([String].self, forKey: .translators)
		subjects = try values.decodeIfPresent([String].self, forKey: .subjects)
		bookshelves = try values.decodeIfPresent([String].self, forKey: .bookshelves)
		languages = try values.decodeIfPresent([String].self, forKey: .languages)
		copyright = try values.decodeIfPresent(Bool.self, forKey: .copyright)
		media_type = try values.decodeIfPresent(String.self, forKey: .media_type)
//		formats = try values.decodeIfPresent(Formats.self, forKey: .formats)
		download_count = try values.decodeIfPresent(Int.self, forKey: .download_count)
	}

}
