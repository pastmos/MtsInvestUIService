//
//  AnalyticsEnums.swift
//  FinService
//
//  Created by Максуд Даудов on 06/09/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

enum EventType: String {
    case pifMoneyflowVersion = "pif_moneyflow_version"
    
    case firstRegister = "register"
    case userIdentification = "identification_start"
    case cancelIdentification = "identification_cancel"
    case finishIdentification = "identification_finish"
    case cardPayment = "pay_by_card_start"
    case cardPaymentFailed = "pay_by_card_error"
    case cardPaymentSuccess = "pay_by_card_success"
    
    case screen = "screen"
    case errorScreen = "error_screen"
    
    case buyStart = "buy_start"
    case buySumSet = "buy_sum_set" // не известно
    case buySignStart = "buy_sign_start"
    case buySignFinish = "buy_sign_finish"
    case sellStart = "sell_start"
    case sellSumSet = "sell_sum_set"
    case sellFinish = "sell_finish"
    case exchangeStart = "exchange_start"
    case exchangeSumSet = "exchange_sum_set" // не известно
    case exchangeFinish = "exchange_sum_finish"
    
    case login = "login"
    case logout = "logout"
    case sign_start = "sign_start"
    case sign_finish = "sign_finish"
    case view_document = "view_document"
    case view_product = "view_product"
    
    // DU
    case start_du_profiling = "start_du_profiling"
    case end_du_profiling = "end_du_profiling"
    case view_strategy = "view_strategy"
    case start_new_du_profiling = "start_new_du_profiling"
    case identification_start_du = "identification_start_du"
    case identification_finish_du = "identification_finish_du"
    case sign_sms_du = "sign_sms_du"
    case check_buy_du = "check_buy_du"
    case sell_du = "sell_du"
    case sell_sign_sms_du = "sell_sign_sms_du"
    
    // FEED
    case showcase_open_fund = "showcase_open_fund"
    case showcase_open_funds_list = "showcase_open_funds_list"
    case showcase_open_article = "showcase_open_article"
    case showcase_open_news = "showcase_open_news"
    case showcase_open_news_list = "showcase_open_news_list"
	case showcase_open_analytics = "showcase_open_analytics"
    case showcase_open_analytics_list = "showcase_open_analytics_list"
    case showcase_open_stock_instrument = "showcase_open_stock_instrument"
    case showcase_open_bonds_instrument = "showcase_open_bonds_instrument"
    case showcase_open_stocks_list = "showcase_open_stocks_list"
    case showcase_open_bonds_list = "showcase_open_bonds_list"
    case showcase_open_du = "showcase_open_du"
    case showcase_open_promo_bond = "showcase_open_promo_bond"

    // BROKERAGE
    case iti_broker_buy_start = "iti_broker_buy_start" // Покупка начата
    case iti_broker_buy_sum_set = "iti_broker_buy_sum_set" // Количество акций для покупки установлено
    case iti_broker_identification_start = "iti_broker_identification_start" // Идентификации начата
    case iti_broker_identification_finish = "iti_broker_identification_finish"  // Идентификация завершена
    case iti_broker_sign_edo_sms = "iti_broker_sign_edo_sms" // Подписание заявки на ЕДО
    case iti_broker_sign_docs_sms = "iti_broker_sign_docs_sms" // Подписание документов
    case iti_broker_buy_success = "iti_broker_buy_success" // Покупка выполнена
    case iti_broker_buy_fail = "iti_broker_buy_fail" // Покупка не выполнена
    case iti_broker_sell_success = "iti_broker_sell_success" // Продажа выполнена
    case iti_broker_sell_fail = "iti_broker_sell_fail" // Продажа не выполнена
    case iti_broker_replenish = "iti_broker_replenish" // Переход к пополнение картой
    case iti_broker_replenish_show_requisites = "iti_broker_replenish_show_requisites" // Показать реквизиты
    case iti_broker_withdraw = "iti_broker_withdraw" // Переход к выводу средств
    case iti_broker_restart_identification = "iti_broker_restart_identification" // Пользователь после провала смэв, нажал изменить данные
    case iti_pay_by_card_start = "iti_pay_by_card_start" // Оплата картой брокер начата
    case iti_pay_by_card_success = "iti_pay_by_card_success" // Оплата картой брокер успешно завершена
    case iti_pay_by_card_error = "iti_pay_by_card_error" // Оплата картой брокер завершена с ошибкой"
    
    // BROKERAGE
    case mtsb_broker_buy_start = "mtsb_broker_buy_start" // Покупка начата
    case mtsb_broker_buy_sum_set = "mtsb_broker_buy_sum_set" // Количество акций для покупки установлено
    case mtsb_broker_identification_start = "mtsb_broker_identification_start" // Идентификации начата
    case mtsb_broker_identification_finish = "mtsb_broker_identification_finish"  // Идентификация завершена
    case mtsb_broker_sign_edo_sms = "mtsb_broker_sign_edo_sms" // Подписание заявки на ЕДО
    case mtsb_broker_sign_docs_sms = "mtsb_broker_sign_docs_sms" // Подписание документов
    case mtsb_broker_buy_success = "mtsb_broker_buy_success" // Покупка выполнена
    case mtsb_broker_buy_fail = "mtsb_broker_buy_fail" // Покупка не выполнена
    case mtsb_broker_sell_success = "mtsb_broker_sell_success" // Продажа выполнена
    case mtsb_broker_sell_fail = "mtsb_broker_sell_fail" // Продажа не выполнена
//    case mtsb_broker_replenish = "mtsb_broker_replenish" // Переход к пополнение картой
//    case mtsb_broker_replenish_show_requisites = "mtsb_broker_replenish_show_requisites" // Показать реквизиты
    case mtsb_broker_withdraw = "mtsb_broker_withdraw" // Переход к выводу средств
    case mtsb_broker_restart_identification = "mtsb_broker_restart_identification" // Пользователь после провала смэв, нажал изменить данные
    case mtsb_pay_by_card_start = "mtsb_pay_by_card_start" // Оплата картой брокер начата
    case mtsb_pay_by_card_success = "mtsb_pay_by_card_success" // Оплата картой брокер успешно завершена
    case mtsb_pay_by_card_error = "mtsb_pay_by_card_error" // Оплата картой брокер завершена с ошибкой"
}

enum EventKeys: String{
    case skStatus = "user_sk_status"
    case userId = "user_id"
    case userPhone = "user_phone"
    case userEmail = "user_email"
    case userName = "user_name"
    case userAge = "user_age"
    case brokerDefault = "broker_default"
    case fundId = "fundId"
    case sourceFundId = "source fundId"
    case destinationFundId = "destination fundId"
    case userIdentification = "User identification"
    
    case screen = "screen"
    
    case phone = "Phone"
    case email = "Email"
    case name = "Name"
    case surname = "Surname"
    case patronimicName = "Patronymic"
    case placeBorn = "Birth place"
    case dateBorn = "Birthday"
    case citizenship = "Citizenship"
    case passportIssueService = "Issued by"
    case passport = "Passport"
    case passportIssueDate = "Issue date"
    case Inn = "INN"
    case regAderess = "Registration adress"
    case postAdress = "Post adress"
    case factAdress = "Factual adress"
    
    case duStrategyName = "strategy"
}

enum UserIdenticationMethod: String{
    case smev = "SMEV"
    case gosuslugi = "Gosuslugi"
}

enum UserFlowTag: String {
    case sellPif = "SELL_PIF"
    case buyPif = "BUY_PIF"
    case reg = "REGISTRATION"
}

enum ErrorResponseKeys: String {
	case message = "message"
}
