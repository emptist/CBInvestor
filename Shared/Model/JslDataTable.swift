// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dataTable = try? newJSONDecoder().decode(DataResponse.self, from: jsonData)

import Foundation


// MARK: - DataResponse
struct DataResponse: Codable {
    static let urlString: String = "https://www.jisilu.cn/data/cbnew/cb_list/"
    let page: Int
    let rows: [Row]
    var total: Int { rows.count }
}

// MARK: - Row
struct Row: Codable, Identifiable {
    let id: String
    let cell: Cell
}

extension Row {
    static var dummyData: Row {
        .init(id: "123102", cell: Cell.dummyData)
    }
}
// MARK: - Cell
struct Cell: Codable {
    let bondID, bondNm, stockID, stockNm: String
    let btype: Btype
    let convertPrice: Double
    let convertPriceValidFrom: Date?
    let convertDt, maturityDt: Date
    let nextPutDt: Date?
    let putDt: Date?
    let putNotes: String? //JSONNull?
    let putPrice: Double?
    let putIncCpnFL: IncCpnFL
    let putConvertPriceRatio: Double?
    let putCountDays, putTotalDays, putRealDays: Int
    let repoDiscountRt: String //Percentage //Double
    let repoValidFrom, repoValidTo: String?
    let turnoverRt: String? //Percentage? //Double?
    let redeemPrice: Double
    let redeemIncCpnFL: IncCpnFL
    let redeemPriceRatio: Double
    let redeemCountDays, redeemTotalDays, redeemRealDays: Int
    let redeemDt: Date?
    let redeemFlag: Adjusted
    let origIssAmt, currIssAmt: Double
    let ratingCD, issuerRatingCD: RatingCD
    let guarantor: String?
    let sscDt: Date?
    let escDt: Date?
    let scNotes: String?
    let marketCD: MarketCD
    let forceRedeem: String?
    let realForceRedeemPrice: Double?
    let convertCD, repoCD: String
    let ration: Double?
    let rationCD, applyCD, onlineOfflineRatio: String?
    let qflag, qflag2: Qflag
    let rationRt: String? //Percentage? //Double?
    let fundRt: BondValue // maybe Percentage
    let marginFlg: MarginFlg
    let ltBps: String, pb: Double
    let pbFlag: Adjusted
    let totalShares, floatShares: Double
    let sqflg: Adjusted
    let sprice, svolume: Double
    let sincreaseRt: String //Percentage
    let qstatus: String
    let bondValue, bondValue2, volatilityRate: BondValue
    let lastTime: String? //Date?
    let convertValue: Double
    let premiumRt: String //Percentage
    let yearLeft: Double
    let ytmRt: String
    let ytmRtTax: String //Percentage //is like "-5.3%"
    let price, fullPrice: Double
    let increaseRt: String //Percentage
    let volume: Double
    let convertPriceValid: Adjusted
    let adjScnt: AdjScnt
    let adjCnt: Int
    let redeemIcon: MarginFlg
    let refYieldInfo: String
    let adjustTip: String
    let adjusted: Adjusted
    let optionTip: String
    let bondValue3: BondValue
    let leftPutYear: String
    let shortMaturityDt: String //Date
    let dblow: Double
    let forceRedeemPrice, putConvertPrice: Double
    let convertAmtRatio, convertAmtRatio2: String //Percentage
    let convertAmtRatioTips: String
    let stockNetValue: Double
    let stockCD, preBondID, repoValid, convertCDTip: String
    let priceTips: String
    
    enum CodingKeys: String, CodingKey {
        case bondID = "bond_id"
        case bondNm = "bond_nm"
        case stockID = "stock_id"
        case stockNm = "stock_nm"
        case btype
        case convertPrice = "convert_price"
        case convertPriceValidFrom = "convert_price_valid_from"
        case convertDt = "convert_dt"
        case maturityDt = "maturity_dt"
        case nextPutDt = "next_put_dt"
        case putDt = "put_dt"
        case putNotes = "put_notes"
        case putPrice = "put_price"
        case putIncCpnFL = "put_inc_cpn_fl"
        case putConvertPriceRatio = "put_convert_price_ratio"
        case putCountDays = "put_count_days"
        case putTotalDays = "put_total_days"
        case putRealDays = "put_real_days"
        case repoDiscountRt = "repo_discount_rt"
        case repoValidFrom = "repo_valid_from"
        case repoValidTo = "repo_valid_to"
        case turnoverRt = "turnover_rt"
        case redeemPrice = "redeem_price"
        case redeemIncCpnFL = "redeem_inc_cpn_fl"
        case redeemPriceRatio = "redeem_price_ratio"
        case redeemCountDays = "redeem_count_days"
        case redeemTotalDays = "redeem_total_days"
        case redeemRealDays = "redeem_real_days"
        case redeemDt = "redeem_dt"
        case redeemFlag = "redeem_flag"
        case origIssAmt = "orig_iss_amt"
        case currIssAmt = "curr_iss_amt"
        case ratingCD = "rating_cd"
        case issuerRatingCD = "issuer_rating_cd"
        case guarantor
        case sscDt = "ssc_dt"
        case escDt = "esc_dt"
        case scNotes = "sc_notes"
        case marketCD = "market_cd"
        case forceRedeem = "force_redeem"
        case realForceRedeemPrice = "real_force_redeem_price"
        case convertCD = "convert_cd"
        case repoCD = "repo_cd"
        case ration
        case rationCD = "ration_cd"
        case applyCD = "apply_cd"
        case onlineOfflineRatio = "online_offline_ratio"
        case qflag, qflag2
        case rationRt = "ration_rt"
        case fundRt = "fund_rt"
        case marginFlg = "margin_flg"
        case ltBps = "lt_bps"
        case pb
        case pbFlag = "pb_flag"
        case totalShares = "total_shares"
        case floatShares = "float_shares"
        case sqflg, sprice, svolume
        case sincreaseRt = "sincrease_rt"
        case qstatus
        case bondValue = "bond_value"
        case bondValue2 = "bond_value2"
        case volatilityRate = "volatility_rate"
        case lastTime = "last_time"
        case convertValue = "convert_value"
        case premiumRt = "premium_rt"
        case yearLeft = "year_left"
        case ytmRt = "ytm_rt"
        case ytmRtTax = "ytm_rt_tax"
        case price
        case fullPrice = "full_price"
        case increaseRt = "increase_rt"
        case volume
        case convertPriceValid = "convert_price_valid"
        case adjScnt = "adj_scnt"
        case adjCnt = "adj_cnt"
        case redeemIcon = "redeem_icon"
        case refYieldInfo = "ref_yield_info"
        case adjustTip = "adjust_tip"
        case adjusted
        case optionTip = "option_tip"
        case bondValue3 = "bond_value3"
        case leftPutYear = "left_put_year"
        case shortMaturityDt = "short_maturity_dt"
        case dblow
        case forceRedeemPrice = "force_redeem_price"
        case putConvertPrice = "put_convert_price"
        case convertAmtRatio = "convert_amt_ratio"
        case convertAmtRatio2 = "convert_amt_ratio2"
        case convertAmtRatioTips = "convert_amt_ratio_tips"
        case stockNetValue = "stock_net_value"
        case stockCD = "stock_cd"
        case preBondID = "pre_bond_id"
        case repoValid = "repo_valid"
        case convertCDTip = "convert_cd_tip"
        case priceTips = "price_tips"
    }
}


enum AdjScnt: Codable {
    case integer(Int)
    case string(String)
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(AdjScnt.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for AdjScnt"))
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

enum Adjusted: String, Codable {
    case n = "N"
    case x = "X"
    case y = "Y"
}

enum BondValue: String, Codable {
    case buy = "buy"
    case empty = "-"
}

enum Btype: String, Codable {
    case c = "C"
    case e = "E"
}

enum RatingCD: String, Codable {
    case a = "A"
    case aa = "AA-"
    case aaa = "AAA"
    case b = "B"
    case bb = "BB"
    case bbb = "BBB+"
    case purpleA = "A-"
    case purpleAA = "AA+"
    case ratingCDA = "A+"
    case ratingCDAA = "AA"
    case ratingCDBBB = "BBB-"
}

enum MarginFlg: String, Codable {
    case b = "B"
    case empty = ""
    case g = "G"
    case o = "O"
    case r = "R"
}

enum MarketCD: String, Codable {
    case shkc = "shkc"
    case shmb = "shmb"
    case szcy = "szcy"
    case szmb = "szmb"
}

enum IncCpnFL: String, Codable {
    case n = "n"
    case y = "y"
}

enum Qflag: String, Codable {
    case n = "N"
    case q = "Q"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public func hash(into hasher: inout Hasher) {
        // No-op
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}


extension Cell  {
    static var dummyData: Cell {
        .init(bondID: "123102", bondNm: "华自转债", stockID: "sz300490", stockNm: "华自科技", btype: .c,convertPrice: 9.25,
              convertPriceValidFrom: "2021-07-26".toDate(withFormat: "yyyy-mm-dd"),
              convertDt: "2021-09-20".toDate(withFormat: "yyyy-mm-dd"),
              maturityDt: "2025-03-11".toDate(withFormat: "yyyy-mm-dd"),
              nextPutDt: "2025-03-11".toDate(withFormat: "yyyy-mm-dd"),
              putDt: nil,
              putNotes: nil,
              putPrice: 100.000,
              putIncCpnFL: .y,
              putConvertPriceRatio: 20.67,
              putCountDays: 30, putTotalDays: 30, putRealDays: 0, repoDiscountRt: "0",
              repoValidFrom: nil, repoValidTo: nil, turnoverRt: "207.04", redeemPrice: 119, redeemIncCpnFL: .n,
              redeemPriceRatio: 130, redeemCountDays: 15, redeemTotalDays: 30, redeemRealDays: 0,
              redeemDt: nil, redeemFlag: .x, origIssAmt: 6.7, currIssAmt: 6.7, ratingCD: .aa, issuerRatingCD: .aa,
              guarantor: "无", sscDt: nil, escDt: nil, scNotes: nil,
              marketCD: .szcy, forceRedeem: nil, realForceRedeemPrice: nil, convertCD: "未到转股期", repoCD: "123102", ration: 2.6154,
              rationCD: "380490", applyCD: "370490", onlineOfflineRatio: nil, qflag: .n, qflag2: .n,
              rationRt: "18.610", fundRt: .buy, marginFlg: .empty, ltBps: "", pb: 4.24, pbFlag: .n,
              totalShares: 256771546.0, floatShares: 256771546.0, sqflg: .y, sprice: 31.33,
              svolume: 125349.42,sincreaseRt: "-4.28%", qstatus: "00",
              bondValue: .buy, bondValue2: .buy, volatilityRate: .buy,
              lastTime: "15:14:03"/*.toDate(withFormat: "hh:mm:ss")*/,
              convertValue: 338.70, premiumRt: "-10.39%",
              yearLeft: 5.521, ytmRt: "-14.87%", ytmRtTax: "-15.50%", price: 303.500, fullPrice: 303.500,
              increaseRt: "-5.45%", volume: 439276.88, convertPriceValid: .y,
              adjScnt: .integer(0), adjCnt: 0, redeemIcon: .empty, refYieldInfo: "-", adjustTip: "", adjusted: .n, optionTip: "-", bondValue3: .buy,
              leftPutYear: "-", shortMaturityDt: "27-03-11"/*.toDate(withFormat:"yy-mm-dd")*/,
              dblow: 293.11, forceRedeemPrice: 12.03, putConvertPrice: 6.47,
              convertAmtRatio: "8.5%", convertAmtRatio2: "8.3%", convertAmtRatioTips: "转债占流动市值比：8.5%\n转债占总市值比：8.3%", stockNetValue: 0.00,
              stockCD: "300490", preBondID: "sz123102", repoValid: "有效期：-；质押代码：123102", convertCDTip: "未到转股期；2021-09-20 开始转股",
              priceTips: "全价：303.500 最后更新：15:14:03")
    }
}
