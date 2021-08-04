//
//  AppError.swift
//  FinService
//
//  Created by Дмитрий on 18.08.17.
//  Copyright © 2017 MTS IT. All rights reserved.
//

import Foundation

enum AppError: Error, CustomStringConvertible {
    
    // Application-specific errors that may need special treatment
    case authAPIError
    case logicAPIError(Int, String, String)
    case exceptionAPIError(Int, String)
    case noDataError
    case networkError
    case unknownError
    // Generic cases for errors that don't need special treatment
    case generic(Error)
    case signError(String)
    case smevError(String)
    case smsError(String)
    case serialization
    case retriesData(Int, String, Int)
    case confirmAuthError(NSError)
    // Withdraw error
    case requisiteAccountNumberForbidden

    var code: Int {
        switch self {
        case .authAPIError:
            return 401
        case .networkError:
            return -1009
        case .unknownError:
            return -9998
        case .logicAPIError(let code, _, _), .exceptionAPIError(let code, _):
            return code
        case let .generic(error):
            return (error as NSError).code
        case .noDataError:
            return -9999
        case .signError(_):
            return 1
        case .smevError(_):
            return 100
        case .serialization:
            return 0
        case .smsError,
             .retriesData,
             .confirmAuthError:
            return 400
        case .requisiteAccountNumberForbidden:
            return -403
        }
    }
    
    var description: String {
        switch self {
        case .authAPIError:
            return "Error.APIAuthError".localized
        case .exceptionAPIError(_, let message):
            return message
        case .logicAPIError(_, let message, _):
            return message
        case let .generic(error):
            return (error as CustomStringConvertible).description
        case .noDataError:
            return "Error.NoData".localized
        case .signError(let message):
            return message
        case .smevError(_):
            return ""
        case .serialization:
            return "Что-то пошло не так. Попробуйте еще раз."
        case .networkError:
            return Strings.Error.noNetwork
        case .unknownError:
            return Strings.UnknownError.message
        case .smsError,
             .retriesData:
            return "Ошибка СМС кода"
        case .confirmAuthError(let error):
            return error.localizedDescription
        case .requisiteAccountNumberForbidden:
            return "Вывод на виртуальные карты запрещен"
        }
    }
    
    var errorCode: String {
        switch self {
        case .logicAPIError(_, _, let errorCode):
            return errorCode
            
        default:
            return "unknown"
        }
    }
    
    var debugDescription: String {
        switch self {
        case .authAPIError:
             return "401"
        case .logicAPIError(let code, let message, _),
             .exceptionAPIError(let code, let message):
            return "\(code): " + message
        case let .generic(error):
            return (error as CustomStringConvertible).description
        case .noDataError:
            return "\(code): NoDataError"
        case .signError(let message):
            return "Ошибка подписания документов: \(message) "
        case .smevError(_) :
            return ""
        case .serialization:
            return "Ошибка сериализации"
        case .smsError, .retriesData:
            return "Ошибка СМС кода"
        case .networkError:
            return "Вероятно, соединение с интернетом прервано."
        case .unknownError:
            return ""
        case .confirmAuthError(let error):
            return error.userInfo
                        .lazy
                        .map { key, value -> String in return "\(key): \(value)" }
                        .joined(separator: "\n")
        case .requisiteAccountNumberForbidden:
            return "Вывод на виртуальные карты запрещен"
        }
    }
}
