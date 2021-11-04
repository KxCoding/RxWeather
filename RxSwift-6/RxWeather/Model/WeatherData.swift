//
//  Mastering RxSwift
//  Copyright (c) KxCoding <help@kxcoding.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation
import RxCocoa
import RxDataSources

struct WeatherData: WeatherDataType, Equatable {
    let date: Date?
    let icon: String
    let description: String
    let temperature: Double
    let maxTemperature: Double?
    let minTemperature: Double?
}

extension WeatherData {
    init(summary: WeatherSummary) {
        date = Date()
        icon = summary.weather.first?.icon ?? ""
        description = summary.weather.first?.description ?? "알 수 없음"
        temperature = summary.main.temp
        maxTemperature = summary.main.temp_max
        minTemperature = summary.main.temp_min
    }
    
    init(forecastItem: Forecast.ListItem) {
        date = Date(timeIntervalSince1970: TimeInterval(forecastItem.dt))
        icon = forecastItem.weather.first?.icon ?? ""
        description = forecastItem.weather.first?.description ?? "알 수 없음"
        temperature = forecastItem.main.temp
        maxTemperature = nil
        minTemperature = nil
    }
}

extension WeatherData: IdentifiableType {
    var identity: Double {
        return date?.timeIntervalSinceReferenceDate ?? 0
    }
}
