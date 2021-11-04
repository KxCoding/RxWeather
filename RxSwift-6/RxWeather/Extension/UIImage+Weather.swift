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


import UIKit

extension UIImage {
    static func from(name: String) -> UIImage? {
        if name.hasPrefix("01") {
            return UIImage(systemName: "sun.max")
        } else if name.hasPrefix("02") {
            return UIImage(systemName: "cloud.sun")
        } else if name.hasPrefix("03") || name.hasPrefix("04") {
            return UIImage(systemName: "cloud")
        } else if name.hasPrefix("09") {
            return UIImage(systemName: "cloud.heavyrain")
        } else if name.hasPrefix("10") {
            return UIImage(systemName: "cloud.rain")
        } else if name.hasPrefix("11") {
            return UIImage(systemName: "cloud.bolt")
        } else if name.hasPrefix("13") {
            return UIImage(systemName: "snow")
        } else if name.hasPrefix("30") {
            return UIImage(systemName: "sun.haze")
        }
        
        return UIImage(systemName: "questionmark")
    }
}
