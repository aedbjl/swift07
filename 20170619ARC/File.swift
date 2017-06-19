//
//  File.swift
//  20170619ARC
//
//  Created by iii-user on 2017/6/19.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

class Brad01{
    static var counter = 0;
    init(){
        print("Brad01:init()")
        Brad01.counter += 1
    }
    deinit {
        print("Brad01:deinit()")
        Brad01.counter -= 1
    }
}
class Brad02{
    var obj3:Brad03?
    func m1(){
        print("Brad02:m1()")
    }
    deinit{
        print("Brad02:deinit")
    }
}
class Brad03{
    weak var obj2:Brad02? //只要有一個解構就解構 註：預設是strong
    func m1(){
        print("Brad03:m1()")
    }
    deinit{
        print("Brad03:deinit")
    }
}
