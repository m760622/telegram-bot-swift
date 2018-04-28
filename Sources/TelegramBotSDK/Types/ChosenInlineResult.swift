// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// Represents a result of an inline query that was chosen by the user and sent to their chat partner.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#choseninlineresult>

public struct ChosenInlineResult: JsonConvertible, InternalJsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: Any {
        get {
            return internalJson.object
        }
        set {
            internalJson = JSON(newValue)
        }
    }
    internal var internalJson: JSON

    /// The unique identifier for the result that was chosen
    public var resultId: String {
        get { return internalJson["result_id"].stringValue }
        set { internalJson["result_id"].stringValue = newValue }
    }

    /// The user that chose the result
    public var from: User {
        get { return User(json: internalJson["from"]) }
        set { internalJson["from"] = JSON(newValue.json) }
    }

    /// Optional. Sender location, only for bots that require user location
    public var location: Location? {
        get {
            let value = internalJson["location"]
            return value.isNullOrUnknown ? nil : Location(json: value)
        }
        set {
            internalJson["location"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message. Will be also received in callback queries and can be used to edit the message.
    public var inlineMessageId: String? {
        get { return internalJson["inline_message_id"].string }
        set { internalJson["inline_message_id"].string = newValue }
    }

    /// The query that was used to obtain the result
    public var query: String {
        get { return internalJson["query"].stringValue }
        set { internalJson["query"].stringValue = newValue }
    }

    internal init(json: JSON = [:]) {
        self.internalJson = JSON(json)
    }
    public init(jsonObject: Any) {
        self.internalJson = JSON(jsonObject)
    }
}
