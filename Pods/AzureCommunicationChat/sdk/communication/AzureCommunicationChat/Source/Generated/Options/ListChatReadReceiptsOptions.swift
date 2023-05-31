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

/// User-configurable options for the `ListChatReadReceipts` operation.
public struct ListChatReadReceiptsOptions: RequestOptions {
    /// The maximum number of chat message read receipts to be returned per page.
    public let maxPageSize: Int32?
    /// Skips chat message read receipts up to a specified position in response.
    public let skip: Int32?

    /// A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    /// Highly recommended for correlating client-side activites with requests received by the server.
    public let clientRequestId: String?

    /// A token used to make a best-effort attempt at canceling a request.
    public let cancellationToken: CancellationToken?

    /// A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    public var dispatchQueue: DispatchQueue?

    /// A `PipelineContext` object to associate with the request.
    public var context: PipelineContext?

    /// Initialize a `ListChatReadReceiptsOptions` structure.
    /// - Parameters:
    ///   - maxPageSize: The maximum number of chat message read receipts to be returned per page.
    ///   - skip: Skips chat message read receipts up to a specified position in response.
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics
    /// logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    public init(
        maxPageSize: Int32? = nil,
        skip: Int32? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.maxPageSize = maxPageSize
        self.skip = skip
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
