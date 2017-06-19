//
//  main.swift
//  20170619ARC
//
//  Created by iii-user on 2017/6/19.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation


var Obj1:Brad01? = Brad01()
var Obj2:Brad01? = Brad01()
var Obj3:Brad01? = Brad01()
print(Brad01.counter)
var Obj4 = Obj1
print(Brad01.counter)

//Obj2 = nil
print(Brad01.counter)

//Obj1 = nil //因為obj4 持續在記憶體 所以沒有完全解構
var Brad01s = [Obj1, Obj2, Obj3] // [Brad01]
func m1(){
    var obj5:Brad01? = Brad01()
    Brad01s += [obj5]
    print("m1:\(Brad01.counter)")
}

print("before:\(Brad01.counter)")
m1()
print("after:\(Brad01.counter)")

print("=============")
var brad2:Brad02? = Brad02()
var brad3:Brad03? = Brad03()
brad2!.obj3 = brad3
brad3!.obj2 = brad2

brad2 = nil
print(brad2 == nil)
print (brad3!.obj2 == nil )
brad3?.obj2?.m1()
