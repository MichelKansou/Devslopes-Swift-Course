//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Michel Kansou on 24/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let API_ID = "&appid="
let API_KEY = "7b6601bb5c7a69d60786273dd061c828"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(API_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=7b6601bb5c7a69d60786273dd061c828"
