//
//  DuObject.swift
//  FinService
//
//  Created by Nikita Merkel on 18/02/2019.
//  Copyright © 2019 MTS IT. All rights reserved.
//

//import SwiftyJSON

//struct DuObject {
//    var instrumentGroups: [InstrumentGroup] = []
//    let mainInfo: MainInfo?
//
//    init(_ json: JSON) {
//        mainInfo = MainInfo(json["mainInfo"])
//
//        json["instrumentGroups"].arrayValue.forEach { object in
//            instrumentGroups.append(InstrumentGroup(object))
//        }
//    }
//}

//struct InstrumentGroup {
//    var totalInfo: [InstrumentGroupPartsInfo] = []
//    var partsInfo: [InstrumentGroupPartsInfo] = []
//    var instruments: [InstrumentModel] = []
//    let type: String?
//
//    init(_ json: JSON) {
//        type = json["type"].stringValue
//
//        json["totalInfo"].arrayValue.forEach { object in
//            totalInfo.append(InstrumentGroupPartsInfo(object))
//        }
//
//        json["partsInfo"].arrayValue.forEach { object in
//            partsInfo.append(InstrumentGroupPartsInfo(object))
//        }
//
//        json["instruments"].arrayValue.forEach { object in
//            instruments.append(InstrumentModel(object))
//        }
//    }
//
//	init(totalInfo: [InstrumentGroupPartsInfo],
//		partsInfo: [InstrumentGroupPartsInfo],
//		instruments: [InstrumentModel],
//		type: String?)
//	{
//		self.totalInfo = totalInfo
//		self.partsInfo = partsInfo
//		self.instruments = instruments
//		self.type = type
//	}
//
//}

//struct InstrumentModel: Equatable {
//    static func == (lhs: InstrumentModel, rhs: InstrumentModel) -> Bool {
//        return lhs.itemID == rhs.itemID && lhs.cost == rhs.cost && lhs.type == rhs.type && lhs.sharePrc == rhs.sharePrc && lhs.currency == rhs.currency && lhs.amount == rhs.amount && lhs.actualDate == rhs.actualDate && lhs.name == rhs.name
//    }
//
//    let cost: Double?
//    let type, itemID: String?
//    let sharePrc: Double?
//    let currency, actualDate, name: String?
//    let amount: Int?
//    var yields: [InstrumentYield] = []
//
//    init(_ json: JSON) {
//        cost = json["cost"].doubleValue
//        sharePrc = json["sharePrc"].doubleValue
//        type = json["type"].stringValue
//        itemID = json["itemID"].stringValue
//        currency = json["currency"].stringValue
//        actualDate = json["actualDate"].stringValue
//        name = json["name"].stringValue
//        amount = json["amount"].intValue
//        json["yields"].arrayValue.forEach { object in
//            yields.append(InstrumentYield(object))
//        }
//    }
//}
//
//struct InstrumentYield {
//    let yieldAbs: Double?
//    let type: TypeEnum?
//    let yieldRel: Double?
//
//    init(_ json: JSON) {
//        yieldAbs = json["yieldAbs"].doubleValue
//        type = TypeEnum(rawValue: json["type"].stringValue)
//        yieldRel = json["yieldRel"].doubleValue
//    }
//}

enum TypeEnum: String, CaseIterable {
    case allTime = "allTime"
    case the1Month = "_1Month"
    case the1Year = "_1Year"
    case the3Month = "_3Month"
    case the3Year = "_3Year"
    case the5Year = "_5Year"
    case the6Month = "_6Month"
    
    var title: String {
        switch self {
        case .allTime:
            return "все"
        case .the1Month:
            return "1м"
        case .the1Year:
            return "1г"
        case .the3Month:
            return "3м"
        case .the3Year:
            return "3г"
        case .the5Year:
            return "5л"
        case .the6Month:
            return "6м"
        }
    }
    
    var stringRepresentation: String {
        switch self {
        case .allTime:
            return R.string.localizable.brokerageAllTimeProfitPrefix()
        case .the1Month:
            return R.string.localizable.brokerageMonthProfitPrefix()
        case .the3Month:
            return R.string.localizable.brokerageThreeMonthProfitPrefix()
		case .the6Month:
			return R.string.localizable.brokerageSixMonthProfitPrefix()
		case .the1Year:
			return R.string.localizable.brokerageYearProfitPrefix()
        case .the3Year:
            return R.string.localizable.brokerageThreeYearProfitPrefix()
        case .the5Year:
            return R.string.localizable.brokerageFiveYearProfitPrefix()
        }
    }
}

//struct InstrumentGroupPartsInfo {
//    let currency: String?
//    var yields: [InstrumentYield] = []
//    let cost, sharePrc: Double?
//
//    init(_ json: JSON) {
//        currency = json["currency"].stringValue
//        cost = json["cost"].doubleValue
//        sharePrc = json["sharePrc"].doubleValue
//
//        json["yields"].arrayValue.forEach { object in
//            yields.append(InstrumentYield(object))
//        }
//    }
//}
//
//struct MainInfo {
//    var totalInfo: [MainInfoPartsInfo] = []
//    var partsInfo: [MainInfoPartsInfo] = []
//
//    init(_ json: JSON) {
//        json["totalInfo"].arrayValue.forEach { object in
//            totalInfo.append(MainInfoPartsInfo(object))
//        }
//
//        json["partsInfo"].arrayValue.forEach { object in
//            partsInfo.append(MainInfoPartsInfo(object))
//        }
//    }
//}
//
//struct MainInfoPartsInfo {
//    var yields: [PurpleYield] = []
//    let sum: Double?
//    let currency: String?
//
//    init(_ json: JSON) {
//        sum = json["sum"].doubleValue
//        currency = json["currency"].stringValue
//
//        json["yields"].array?.forEach { object in
//            yields.append(PurpleYield(object))
//        }
//    }
//}
//
//struct PurpleYield {
//    let yieldRelPerAnnum: Double?
//    let actualCost, yieldAbs: Double?
//    let startDate: String?
//    let yieldRel: Double?
//    let type: TypeEnum?
//
//    init(_ json: JSON) {
//        yieldRelPerAnnum = json["yieldRelPerAnnum"].doubleValue
//        actualCost = json["actualCost"].doubleValue
//        yieldAbs = json["yieldAbs"].doubleValue
//        startDate = json["startDate"].stringValue
//        yieldRel = json["yieldRel"].doubleValue
//        type = TypeEnum(rawValue: json["type"].stringValue)
//    }
//}
