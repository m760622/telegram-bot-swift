// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// Represents a link to a voice message stored on the Telegram servers. By default, this voice message will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the voice message.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinequeryresultcachedvoice>

public struct InlineQueryResultCachedVoice: JsonConvertible, InternalJsonConvertible {
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

    /// Type of the result, must be voice
    public var typeString: String {
        get { return internalJson["type"].stringValue }
        set { internalJson["type"].stringValue = newValue }
    }

    /// Unique identifier for this result, 1-64 bytes
    public var id: String {
        get { return internalJson["id"].stringValue }
        set { internalJson["id"].stringValue = newValue }
    }

    /// A valid file identifier for the voice message
    public var voiceFileId: String {
        get { return internalJson["voice_file_id"].stringValue }
        set { internalJson["voice_file_id"].stringValue = newValue }
    }

    /// Voice message title
    public var title: String {
        get { return internalJson["title"].stringValue }
        set { internalJson["title"].stringValue = newValue }
    }

    /// Optional. Caption, 0-200 characters
    public var caption: String? {
        get { return internalJson["caption"].string }
        set { internalJson["caption"].string = newValue }
    }

    /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    public var parseModeString: String? {
        get { return internalJson["parse_mode"].string }
        set { internalJson["parse_mode"].string = newValue }
    }

    /// Optional. Inline keyboard attached to the message
    public var replyMarkup: InlineKeyboardMarkup? {
        get {
            let value = internalJson["reply_markup"]
            return value.isNullOrUnknown ? nil : InlineKeyboardMarkup(json: value)
        }
        set {
            internalJson["reply_markup"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. Content of the message to be sent instead of the voice message
    public var inputMessageContent: InputMessageContent? {
        get {
            fatalError("Not implemented")
        }
        set {
            internalJson["input_message_content"] = JSON(newValue?.json ?? JSON.null)
        }
    }

    internal init(json: JSON = [:]) {
        self.internalJson = JSON(json)
    }
    public init(jsonObject: Any) {
        self.internalJson = JSON(jsonObject)
    }
}
