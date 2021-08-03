//
//  AppSettings.swift
//  FinService
//
//  Created by Дмитрий on 17.08.17.
//  Copyright © 2017 MTS IT. All rights reserved.
//

import UIKit

public struct TNPSSDKConstants {
    static let applicationId = "showcase_130d622d-b745-460e-96f0-e58c18dd1b3b"
    static let eventBrokerage = "event_8a0babb8-d234-403f-b4ad-e28936db716f"
    static let eventUsageApp = "event_eb5bc912-1dba-4990-a95f-bfb3d362b55b"
    static let timeInterval: TimeInterval = 120.0
}

class AppSettings {
    static let instance = AppSettings()
    
    static let reloginTimeout = 60
    static let loggerBatchSize = 10
    static let kAnimationDuration: TimeInterval = 0.35
    static let addressSearchKey = "cf353a616d46c9d1f316f01d4c04f3af1c85ad240b27d9c428827c1c2f1519fe02ac389829320062f4a5897364463145e8c504875444a53f46f41d52b9c96d68"
    static let supportEmail = "support@mts.investments"
    static let newsSourceURL = "https://1prime.ru/"
    static let skInfoEmail = "info@sistema-capital.com"
    static let skPhone = "8 800 737-77-00"
    static let appLink = "itms-apps://itunes.apple.com/app/id1294636411"
    static let mtsAppsLink = ""
	static let predProdApiDomain = "https://broker.sistema-capital.com:9365"
    
    static let itiSupportEmail = "support@iticapital.ru"
    static let itiSupportPhone = "8 (800) 350-56-36"
    
    static var animationsAreEnabled: Bool = true {
        didSet {
            if animationsAreEnabled {
                UIView.setAnimationsEnabled(true)
                UIApplication.shared.keyWindow?.layer.speed = 1.0
            } else {
                UIView.setAnimationsEnabled(false)
                UIApplication.shared.keyWindow?.layer.speed = 10000.0
            }
        }
    }
    
    static let brokerageExchangeScheduleURL = "https://www.moex.com/s1167"
    static let savingAccountPersonalDataAgreementURL = "http://iticapital.ru/downloads/document/soglashenie-ep/10.04.2017"
    static let savingAccountEdoURL = "http://iticapital.ru/downloads/document/soglashenie-ep/10.04.2017"
    static let mtsBrokerPersonalDataAgreementURL = "https://www.mtsbank.ru/upload/iblock/fe5/reglament-brok-obsluzhivanie-c-2019-12-03.pdf"
    
    #if DEBUG
        static let isDebug = true
    #else
        static let isDebug = false
    #endif
    
    #if DEV
        // Dev
        static var localHostIsEnabled = false
        static let baseAPIDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "https://broker.sistema-capital.com:9375"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["SERVER_URL"] as! String
        }
        
        static let GRPCBaseDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "broker.sistema-capital.com:9020"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["GRPC_SERVER_URL"] as! String
        }
        static let monitoringDomain = "https://api-dev.mts.investments"
        static let kDemoUserPhone = "89150388503"
        static let testSMSPhoneKey = "TestSMSPhoneFor"
        static let isTestPamentEnv = true
        static let paymentGateway: String = {
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "https://test.best2pay.net"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["SERVER_URL"] as! String
        }()
        
    #elseif PREDPROD
        static var localHostIsEnabled = false
        static let baseAPIDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "https://broker.sistema-capital.com:9365"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["SERVER_URL"] as! String
        }
        
        static let GRPCBaseDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "broker.sistema-capital.com:9010"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["GRPC_SERVER_URL"] as! String
        }
        static let monitoringDomain = "https://api-stage.mts.investments"
        static let kDemoUserPhone = "89150388503"
        static let testSMSPhoneKey = "TestSMSPhoneFor"
        static let isTestPamentEnv = true
        static let paymentGateway: String = {
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "https://test.best2pay.net"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["SERVER_URL"] as! String
        }()
        
    #elseif QA
        static var localHostIsEnabled = true
        static let baseAPIDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "https://broker.sistema-capital.com:9365"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["SERVER_URL"] as! String
        }
        
        static let GRPCBaseDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "broker.sistema-capital.com:9010"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["GRPC_SERVER_URL"] as! String
        }
        static let monitoringDomain = "https://api-stage.mts.investments"
        static let kDemoUserPhone = "89150388503"
        static let testSMSPhoneKey = "TestSMSPhoneFor"
        static let isTestPamentEnv = true
        static let paymentGateway = "http://127.0.0.1:7777"
        
    #else
        // Prod
        static var localHostIsEnabled = false
        static let baseAPIDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "https://broker.sistema-capital.com:9350"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["SERVER_URL"] as! String
        }
        
        static let GRPCBaseDomain = { () -> String in
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "broker.sistema-capital.com:9000"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["GRPC_SERVER_URL"] as! String
        }
        static let monitoringDomain = "https://api.mts.investments"
        static let kDemoUserPhone = "89159999999"
        static let isTestPamentEnv = false
        static let paymentGateway : String = {
            guard AppSettings.isDebug, AppSettings.localHostIsEnabled else {
                return "https://pay.best2pay.net"
            }
            
            return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "Info", ofType: "plist")!)!["SERVER_URL"] as! String
        }()
    #endif
    
    // UserDefaults Keys
    static let tokenKey = "UserAuthParamsFirst"
    static let tempTokenKey = "UserAuthParamsTempToken"
    static let tempTokenIdKey = "UserAuthParamsTempTokenId"
    static let refreshTokenKey = "UserAuthParamsRefreshToken"
    static let pinCodeKey = "UserAuthParamsSecond"
    static let userFullNameKey = "UserFullName"
    static let userNameKey = "UserNameInfo"
    static let userPhoneKey = "UserPhone"
    static let userIDKey = "UserID"
    static let clientEmailKey = "clientEmail"
    static let clientInfoKey = "ClientInfo"
    static let companyInfoKey = "CompanyInfo"
    static let lastProductLoadedKey = "LastProductLoaded"
    static let lastSyncDate = "LastSyncDate"
    static let lastProductUpdatedKey = "LastProductUpdated"
    static let lastProtfolioLoadedKey = "LastProtfolioLoaded"
    static let lastProtfolioStatsLoadedKey = "LastProtfolioStatisticsLoaded"
    static let firstDataLoadedAppVersionKey = "AppVersionWithFirstDataLoaded"
    static let deviceIdKey = "DeviceIdPin"
    static let isPotentialLogined = "IsPotential"
    static let keychainServiceName = "FinServiceKeychain"
    static let deviceUUIDKey = "DeviceUUIDKey"
    static let prepareMultipurchaseDataKey = "PrepareMultipurchaseRequestData"
    static let userSKStatus = "UserSKStatus"
	static let spbStatusCheck = "spbStocksStatus"
	static let promoteBondRange = "promoteBondRange"
	static let promoteBondFixed = "promoteBondFixed"
	
    static let adminNumber = "AdminNumber"
    
    static let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    static let passwordRegex =
        "^(?=.*[A-Z0-9])(?=.*[a-z])[-0-9a-zA-Z~_%!+=*?&)\\|/}{\\]\\[(><@#$^,.:;'\"]{6,}$"
    
    // "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z%!*?&)(@#$^.]{6,}$"
    
    // Test features
    static let productIgnoreOffline = false
    static let orderIgnoreReject = false
    static let orderIgnoreExists = false
    static let newBuyPaiFlowEnabled = true
    
    #if DEBUG
        static let isDUOperaionTabEnabled = true
        static let isFeedUpdatedEnabled = false
        static let isSavingsAccountEnabled = false
    #else
        static let isDUOperaionTabEnabled = true
        static let isFeedUpdatedEnabled = false
        static let isSavingsAccountEnabled = false
    #endif
    
    static var defaultBroker: BrokeragePortfolioType = .iti
    static var isBrokerEnabled = true
    static var isMTSBrokerEnabled = true
    
    // System info
    
    static var systemName: String = {
        "iOS" // UIDevice.current.systemName
    }()
    
    static var systemVersion: String = {
        UIDevice.current.systemVersion
    }()
    
    static var deviceId: String = {
        UIDevice.current.identifierForVendor?.uuidString ?? ""
    }()
    
    static var applicationURL: URL = {
        URL(string: "https://itunes.apple.com/ru/app/%D0%BC%D1%82%D1%81-%D0%B8%D0%BD%D0%B2%D0%B5%D1%81%D1%82%D0%B8%D1%86%D0%B8%D0%B8/id1294636411?mt=8")!
    }()
}
