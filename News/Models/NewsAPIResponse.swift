//
//  NewsAPIResponse.swift
//  News
//
//  Created by Domenic Moran on 6/19/22.
//
import Foundation

struct NewsAPIResponse: Decodable {
    
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
    
}
