// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dataTable = try? newJSONDecoder().decode(DataTable.self, from: jsonData)

import Foundation

// MARK: - DataTable
struct DataTable: Codable {
    let page: Int
    let rows: [Row]
    let total: Int
}

// MARK: - Row
struct Row: Codable {
    let id: String
    let cell: Cell
}

// MARK: - Cell
struct Cell: Codable {
    let bondID, bondNm, stockID, stockNm: String
    let btype: Btype
    let convertPrice: String
    let convertPriceValidFrom: String?
    let convertDt, maturityDt: String
    let nextPutDt: String?
    let putDt, putNotes: JSONNull?
    let putPrice: String?
    let putIncCpnFL: IncCpnFL
    let putConvertPriceRatio: String?
    let putCountDays, putTotalDays, putRealDays: Int
    let repoDiscountRt: String
    let repoValidFrom, repoValidTo, turnoverRt: String?
    let redeemPrice: String
    let redeemIncCpnFL: IncCpnFL
    let redeemPriceRatio: String
    let redeemCountDays, redeemTotalDays, redeemRealDays: Int
    let redeemDt: String?
    let redeemFlag: Adjusted
    let origIssAmt, currIssAmt: String
    let ratingCD, issuerRatingCD: RatingCD
    let guarantor, sscDt: String?
    let escDt: JSONNull?
    let scNotes: String?
    let marketCD: MarketCD
    let forceRedeem, realForceRedeemPrice: String?
    let convertCD, repoCD: String
    let ration, rationCD, applyCD, onlineOfflineRatio: String?
    let qflag, qflag2: Qflag
    let rationRt: String?
    let fundRt: BondValue
    let marginFlg: MarginFlg
    let ltBps, pb: String
    let pbFlag: Adjusted
    let totalShares, floatShares: String
    let sqflg: Adjusted
    let sprice, svolume, sincreaseRt, qstatus: String
    let bondValue, bondValue2, volatilityRate: BondValue
    let lastTime: String?
    let convertValue, premiumRt, yearLeft, ytmRt: String
    let ytmRtTax, price, fullPrice, increaseRt: String
    let volume: String
    let convertPriceValid: Adjusted
    let adjScnt: AdjScnt
    let adjCnt: Int
    let redeemIcon: MarginFlg
    let refYieldInfo: BondValue
    let adjustTip: String
    let adjusted: Adjusted
    let optionTip, bondValue3, leftPutYear: BondValue
    let shortMaturityDt, dblow, forceRedeemPrice, putConvertPrice: String
    let convertAmtRatio, convertAmtRatio2, convertAmtRatioTips, stockNetValue: String
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
