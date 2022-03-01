import UIKit

//for example we have json Response as below
/*
{
    "movies": [
        {
            "title": "Start Trek: Generations",
            "vote": 6.6
        },
        {
            "title": "Start Trek: First Contact",
            "vote": "7.6"
        }
    ]
}
 */
// here vote is , as Double & String
//how we can handle this?

//we can create struct like

struct Movies : Decodable {
    let movies : [Movie]

    struct Movie : Decodable {
        let title : String
        let vote : StringOrDoubleType
    }
}


enum StringOrDoubleType : Decodable {

    case string (String)
    case double (Double)

    init(from decoder: Decoder) throws {
        if let double = try? decoder.singleValueContainer().decode(Double.self) {
            self = .double(double)
            return
        }
        if let string = try? decoder.singleValueContainer().decode(String.self) {
            self = .string(string)
            return
        }
        throw Error.couldNotFindStringOrDouble
    }
    enum Error : Swift.Error {
        case couldNotFindStringOrDouble
    }
}
