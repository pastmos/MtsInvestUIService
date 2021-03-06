//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: instruments.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `InstrumentsServiceClient`, then call methods of this protocol to make API calls.
internal protocol InstrumentsServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: InstrumentsServiceClientInterceptorFactoryProtocol? { get }

  func getInstrument(
    _ request: GetInstrumentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetInstrumentRequest, Instrument>

  func listInstruments(
    _ request: GetInstrumentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetInstrumentsRequest, ListInstrumentsResponse>

  func getInstrumentBrief(
    _ request: GetInstrumentBriefRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetInstrumentBriefRequest, InstrumentBrief>

  func getInstrumentsBriefStream(
    _ request: GetInstrumentsBriefRequest,
    callOptions: CallOptions?,
    handler: @escaping (InstrumentBrief) -> Void
  ) -> ServerStreamingCall<GetInstrumentsBriefRequest, InstrumentBrief>

  func listInstrumentsBriefFront(
    _ request: GetInstrumentsBriefRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetInstrumentsBriefRequest, ListInstrumentsBriefResponse>
}

extension InstrumentsServiceClientProtocol {
  internal var serviceName: String {
    return "InstrumentsService"
  }

  /// Unary call to GetInstrument
  ///
  /// - Parameters:
  ///   - request: Request to send to GetInstrument.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getInstrument(
    _ request: GetInstrumentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetInstrumentRequest, Instrument> {
    return self.makeUnaryCall(
      path: "/InstrumentsService/GetInstrument",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInstrumentInterceptors() ?? []
    )
  }

  /// Unary call to ListInstruments
  ///
  /// - Parameters:
  ///   - request: Request to send to ListInstruments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func listInstruments(
    _ request: GetInstrumentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetInstrumentsRequest, ListInstrumentsResponse> {
    return self.makeUnaryCall(
      path: "/InstrumentsService/ListInstruments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListInstrumentsInterceptors() ?? []
    )
  }

  /// Unary call to GetInstrumentBrief
  ///
  /// - Parameters:
  ///   - request: Request to send to GetInstrumentBrief.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getInstrumentBrief(
    _ request: GetInstrumentBriefRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetInstrumentBriefRequest, InstrumentBrief> {
    return self.makeUnaryCall(
      path: "/InstrumentsService/GetInstrumentBrief",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInstrumentBriefInterceptors() ?? []
    )
  }

  /// Server streaming call to GetInstrumentsBriefStream
  ///
  /// - Parameters:
  ///   - request: Request to send to GetInstrumentsBriefStream.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  internal func getInstrumentsBriefStream(
    _ request: GetInstrumentsBriefRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (InstrumentBrief) -> Void
  ) -> ServerStreamingCall<GetInstrumentsBriefRequest, InstrumentBrief> {
    return self.makeServerStreamingCall(
      path: "/InstrumentsService/GetInstrumentsBriefStream",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInstrumentsBriefStreamInterceptors() ?? [],
      handler: handler
    )
  }

  /// Unary call to ListInstrumentsBriefFront
  ///
  /// - Parameters:
  ///   - request: Request to send to ListInstrumentsBriefFront.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func listInstrumentsBriefFront(
    _ request: GetInstrumentsBriefRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetInstrumentsBriefRequest, ListInstrumentsBriefResponse> {
    return self.makeUnaryCall(
      path: "/InstrumentsService/ListInstrumentsBriefFront",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListInstrumentsBriefFrontInterceptors() ?? []
    )
  }
}

internal protocol InstrumentsServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getInstrument'.
  func makeGetInstrumentInterceptors() -> [ClientInterceptor<GetInstrumentRequest, Instrument>]

  /// - Returns: Interceptors to use when invoking 'listInstruments'.
  func makeListInstrumentsInterceptors() -> [ClientInterceptor<GetInstrumentsRequest, ListInstrumentsResponse>]

  /// - Returns: Interceptors to use when invoking 'getInstrumentBrief'.
  func makeGetInstrumentBriefInterceptors() -> [ClientInterceptor<GetInstrumentBriefRequest, InstrumentBrief>]

  /// - Returns: Interceptors to use when invoking 'getInstrumentsBriefStream'.
  func makeGetInstrumentsBriefStreamInterceptors() -> [ClientInterceptor<GetInstrumentsBriefRequest, InstrumentBrief>]

  /// - Returns: Interceptors to use when invoking 'listInstrumentsBriefFront'.
  func makeListInstrumentsBriefFrontInterceptors() -> [ClientInterceptor<GetInstrumentsBriefRequest, ListInstrumentsBriefResponse>]
}

internal final class InstrumentsServiceClient: InstrumentsServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: InstrumentsServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the InstrumentsService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: InstrumentsServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

