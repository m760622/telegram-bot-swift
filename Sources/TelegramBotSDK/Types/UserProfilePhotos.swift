// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represent a user's profile pictures.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#userprofilephotos>

public struct UserProfilePhotos: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Total number of profile pictures the target user has
    public var total_count: Int {
        get { return json["total_count"].intValue }
        set { json["total_count"].intValue = newValue }
    }

    /// Requested profile pictures (in up to 4 sizes each)
    public var photos: [[PhotoSize]] {
        get { return json["photos"].twoDArrayValue() }
        set {
            var rowsJson = [JSON]()
            rowsJson.reserveCapacity(newValue.count)
            for row in newValue {
                var colsJson = [JSON]()
                colsJson.reserveCapacity(row.count)
                for col in row {
                    let json = col.json
                    colsJson.append(json)
                }
                rowsJson.append(JSON(colsJson))
            }
            json["photos"] = JSON(rowsJson)
        }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}