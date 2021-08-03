//
//  InstrumentService.swift
//  FinService
//
//  Created by Semyon on 11/18/19.
//  Copyright © 2019 MTS IT. All rights reserved.
//

import Foundation

//For showcase 
protocol IBriefInstrumentsService {
    func getBreifInstruments(
        types: [BrokerageInstrumentType],
        filter: [String]?,
        completion: @escaping ((Result<[InstrumentBrief], AppError>) -> Void)
    )
}

final class InstrumentService: IBriefInstrumentsService {
    
    //MARK: Properties
    private let service: InstrumentsServiceService
    
    //MARK: Init
    init(domain: String) {
        service = InstrumentsServiceServiceClient(
            address: domain,
            secure: !AppSettings.localHostIsEnabled
        )
    }
    
    //MARK: IBriefInstrumentsService
    func getBreifInstruments(
        types: [BrokerageInstrumentType],
        filter: [String]?,
        completion: @escaping ((Result<[InstrumentBrief], AppError>) -> Void)
    ) {
        let request = GetInstrumentsBriefRequest.with({
            $0.filter.commonTypes = types.map({ $0.commonType })
            if let filterItems = filter {
                $0.filter.tickers = filterItems
            }
        })
        
        GRPCCall<
            [InstrumentBrief],
            ListInstrumentsBriefResponse,
            GetInstrumentsBriefRequest
        >.execute(
            request: request,
            builder: { [weak self] request, metadata, innerCompletion in
                guard let self = self else { return }
                try self.service.listInstrumentsBriefFront(
                    request,
                    metadata: metadata,
                    completion: innerCompletion
                )
            },
            responseMap: { $0?.instruments },
            result: completion
        )
    }
}
