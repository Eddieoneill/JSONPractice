import UIKit

struct Person: Codable {
    let name: String
    let occupation: String
    let age: Int
    let latitude: Double
}

let json = """
[{
        "name": "Alex Paul",
        "occupation": "iOS Instructor",
        "age": 41,
        "latitude": 40.73
    },
    {
        "name": "Miles Phan",
        "occupation": "student",
        "age": 7,
        "latitude": 40.73
    }
]
""".data(using: .utf8)!

let person = try JSONDecoder().decode([Person.self], from: json)

do {
} catch {
    print("decoding error: \(error)")
}
