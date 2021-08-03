// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: number.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

struct GrpcBDecimal {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    var scale: Int32 {
        get {return _storage._scale}
        set {_uniqueStorage()._scale = newValue}
    }
    
    var unscaled: GrpcBInteger {
        get {return _storage._unscaled ?? GrpcBInteger()}
        set {_uniqueStorage()._unscaled = newValue}
    }
    /// Returns true if `unscaled` has been explicitly set.
    var hasUnscaled: Bool {return _storage._unscaled != nil}
    /// Clears the value of `unscaled`. Subsequent reads from it will return its default value.
    mutating func clearUnscaled() {_uniqueStorage()._unscaled = nil}
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
    
    fileprivate var _storage = _StorageClass.defaultInstance
}

struct GrpcBInteger {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    /// USE BIG ENDIAN FOR SERIALIZATION 
    var value: Data = SwiftProtobuf.Internal.emptyData
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
}

struct GrpcStringDecimal {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    var value: String = String()
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
}

struct GrpcStringInteger {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    var value: String = String()
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
}

struct GrpcOptionalStringDecimal {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.
    
    var hasValue_p: Bool {
        get {return _storage._hasValue_p}
        set {_uniqueStorage()._hasValue_p = newValue}
    }
    
    var value: GrpcStringDecimal {
        get {return _storage._value ?? GrpcStringDecimal()}
        set {_uniqueStorage()._value = newValue}
    }
    /// Returns true if `value` has been explicitly set.
    var hasValue: Bool {return _storage._value != nil}
    /// Clears the value of `value`. Subsequent reads from it will return its default value.
    mutating func clearValue() {_uniqueStorage()._value = nil}
    
    var unknownFields = SwiftProtobuf.UnknownStorage()
    
    init() {}
    
    fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension GrpcBDecimal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "BDecimal"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "scale"),
        2: .same(proto: "unscaled"),
    ]
    
    fileprivate class _StorageClass {
        var _scale: Int32 = 0
        var _unscaled: GrpcBInteger? = nil
        
        static let defaultInstance = _StorageClass()
        
        private init() {}
        
        init(copying source: _StorageClass) {
            _scale = source._scale
            _unscaled = source._unscaled
        }
    }
    
    fileprivate mutating func _uniqueStorage() -> _StorageClass {
        if !isKnownUniquelyReferenced(&_storage) {
            _storage = _StorageClass(copying: _storage)
        }
        return _storage
    }
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        _ = _uniqueStorage()
        try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
            while let fieldNumber = try decoder.nextFieldNumber() {
                switch fieldNumber {
                case 1: try decoder.decodeSingularInt32Field(value: &_storage._scale)
                case 2: try decoder.decodeSingularMessageField(value: &_storage._unscaled)
                default: break
                }
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
            if _storage._scale != 0 {
                try visitor.visitSingularInt32Field(value: _storage._scale, fieldNumber: 1)
            }
            if let v = _storage._unscaled {
                try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
            }
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func ==(lhs: GrpcBDecimal, rhs: GrpcBDecimal) -> Bool {
        if lhs._storage !== rhs._storage {
            let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
                let _storage = _args.0
                let rhs_storage = _args.1
                if _storage._scale != rhs_storage._scale {return false}
                if _storage._unscaled != rhs_storage._unscaled {return false}
                return true
            }
            if !storagesAreEqual {return false}
        }
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension GrpcBInteger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "BInteger"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "value"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &self.value)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !self.value.isEmpty {
            try visitor.visitSingularBytesField(value: self.value, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func ==(lhs: GrpcBInteger, rhs: GrpcBInteger) -> Bool {
        if lhs.value != rhs.value {return false}
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension GrpcStringDecimal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "StringDecimal"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "value"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularStringField(value: &self.value)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !self.value.isEmpty {
            try visitor.visitSingularStringField(value: self.value, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func ==(lhs: GrpcStringDecimal, rhs: GrpcStringDecimal) -> Bool {
        if lhs.value != rhs.value {return false}
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension GrpcStringInteger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "StringInteger"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "value"),
    ]
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularStringField(value: &self.value)
            default: break
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !self.value.isEmpty {
            try visitor.visitSingularStringField(value: self.value, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func ==(lhs: GrpcStringInteger, rhs: GrpcStringInteger) -> Bool {
        if lhs.value != rhs.value {return false}
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}

extension GrpcOptionalStringDecimal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "OptionalStringDecimal"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "hasValue"),
        2: .same(proto: "value"),
    ]
    
    fileprivate class _StorageClass {
        var _hasValue_p: Bool = false
        var _value: GrpcStringDecimal? = nil
        
        static let defaultInstance = _StorageClass()
        
        private init() {}
        
        init(copying source: _StorageClass) {
            _hasValue_p = source._hasValue_p
            _value = source._value
        }
    }
    
    fileprivate mutating func _uniqueStorage() -> _StorageClass {
        if !isKnownUniquelyReferenced(&_storage) {
            _storage = _StorageClass(copying: _storage)
        }
        return _storage
    }
    
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        _ = _uniqueStorage()
        try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
            while let fieldNumber = try decoder.nextFieldNumber() {
                switch fieldNumber {
                case 1: try decoder.decodeSingularBoolField(value: &_storage._hasValue_p)
                case 2: try decoder.decodeSingularMessageField(value: &_storage._value)
                default: break
                }
            }
        }
    }
    
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
            if _storage._hasValue_p != false {
                try visitor.visitSingularBoolField(value: _storage._hasValue_p, fieldNumber: 1)
            }
            if let v = _storage._value {
                try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
            }
        }
        try unknownFields.traverse(visitor: &visitor)
    }
    
    static func ==(lhs: GrpcOptionalStringDecimal, rhs: GrpcOptionalStringDecimal) -> Bool {
        if lhs._storage !== rhs._storage {
            let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
                let _storage = _args.0
                let rhs_storage = _args.1
                if _storage._hasValue_p != rhs_storage._hasValue_p {return false}
                if _storage._value != rhs_storage._value {return false}
                return true
            }
            if !storagesAreEqual {return false}
        }
        if lhs.unknownFields != rhs.unknownFields {return false}
        return true
    }
}
