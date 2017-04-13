//
//  ImplClass.swift
//  test
//
//  Created by Chotaro Iwasaki on 2017/04/13.
//  Copyright © 2017年 test. All rights reserved.
//

import Foundation

class Taro: SampleProtocol {
    func sampleFunction() -> String {
        return "ワイは太郎や！"
    }
}

class Jiro: SampleProtocol {
    func sampleFunction() -> String {
        return "私は次郎だ！"
    }
}

class Sabro: SampleProtocol {
    func sampleFunction() -> String {
        return "僕は三郎だ！"
    }
}
