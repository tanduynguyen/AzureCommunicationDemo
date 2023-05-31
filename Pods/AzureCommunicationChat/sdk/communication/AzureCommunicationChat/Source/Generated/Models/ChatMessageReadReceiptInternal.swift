// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// A chat message read receipt indicates the time a chat message was read by a recipient.
internal struct ChatMessageReadReceiptInternal: Codable {
    // MARK: Properties

    /// Identifies a participant in Azure Communication services. A participant is, for example, a phone number or an
    /// Azure communication user. This model must be interpreted as a union: Apart from rawId, at most one further
    /// property may be set.
    internal let senderCommunicationIdentifier: CommunicationIdentifierModelInternal
    /// Id of the chat message that has been read. This id is generated by the server.
    internal let chatMessageId: String
    /// The time at which the message was read. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    internal let readOn: Iso8601Date

    // MARK: Initializers

    /// Initialize a `ChatMessageReadReceiptInternal` structure.
    /// - Parameters:
    ///   - senderCommunicationIdentifier: Identifies a participant in Azure Communication services. A participant is,
    /// for example, a phone number or an Azure communication user. This model must be interpreted as a union: Apart
    /// from rawId, at most one further property may be set.
    ///   - chatMessageId: Id of the chat message that has been read. This id is generated by the server.
    ///   - readOn: The time at which the message was read. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    internal init(
        senderCommunicationIdentifier: CommunicationIdentifierModelInternal, chatMessageId: String, readOn: Iso8601Date
    ) {
        self.senderCommunicationIdentifier = senderCommunicationIdentifier
        self.chatMessageId = chatMessageId
        self.readOn = readOn
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case senderCommunicationIdentifier = "senderCommunicationIdentifier"
        case chatMessageId = "chatMessageId"
        case readOn = "readOn"
    }

    /// Initialize a `ChatMessageReadReceiptInternal` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.senderCommunicationIdentifier = try container.decode(
            CommunicationIdentifierModelInternal.self,
            forKey: .senderCommunicationIdentifier
        )
        self.chatMessageId = try container.decode(String.self, forKey: .chatMessageId)
        self.readOn = try container.decode(Iso8601Date.self, forKey: .readOn)
    }

    /// Encode a `ChatMessageReadReceiptInternal` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(senderCommunicationIdentifier, forKey: .senderCommunicationIdentifier)
        try container.encode(chatMessageId, forKey: .chatMessageId)
        try container.encode(readOn, forKey: .readOn)
    }
}