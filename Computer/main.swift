//
//  main.swift
//  03
//
//  Created by Hong James on 2015/6/26.
//  Copyright (c) 2015年 foxcat. All rights reserved.
//
//
import Foundation

//myDevice.getPrice()
//print("\(myMonitor.getPrice())")
//
//var myDevice = Device()
//var myMonitor = Monitor()
//var myKeybroad = Keybroad()
//var myMouse = Mouse()
//var myTalet = Tablet()

var myPCFactory = PCFactory()
var myLaptopFactory = LaptopFactory()

var myPC = myPCFactory.ChoiseMethod()
var myLaptop = myLaptopFactory.ChoiseMethod()

println("-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-")

println("製造PC準備中.....")
myPC.ComputerMethod()
println("開始製造PC.....")
println(".........................")
println("OS是：\(myPC.os)")
println("USB數目：\(myPC.usbPort)")
println("PC重量：\(myPC.weight)")
println(".........................")
println("滑鼠有無線：" + (((myPC.dev[0] as! Mouse).line) ? "有線" : "無線"))
println("需要螢幕尺寸：\((myPC.dev[1] as! Monitor).size) 吋")
println("鍵盤種類：\((myPC.dev[2] as! Keybroad).fromat)")
println("機殼材質＆大小：")
println("完畢！！")

println("-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-")

println("製造Laptop準備中.....")
myLaptop.ComputerMethod()
println("開始製造Laptop.....")
println(".........................")

myLaptop.os = "win8.1"
myLaptop.usbPort = 3
myLaptop.weight = 1.8

println("OS是：\(myLaptop.os)")
println("USB數目：\(myLaptop.usbPort)")
println("PC重量：\(myLaptop.weight)")
println(".........................")
(myLaptop.dev[0] as! Mouse).line = false
println("滑鼠有無線：" + (((myLaptop.dev[0] as! Mouse).line) ? "有線" : "無線"))
(myLaptop.dev[1] as! Monitor).size = 14
println("內建螢幕尺寸：\((myLaptop.dev[1] as! Monitor).size) 吋")
(myPC.dev[2] as! Keybroad).fromat = "無額外數字鍵"
println("有無額外數字鍵：\((myPC.dev[2] as! Keybroad).fromat)")
//println("觸控版靈敏度預設：")
println("完畢！！")

println("-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-")


//println("製造PC準備中...")
//println("開始製造PC...")
//println("滑鼠有無線：\(myMouse.line)")
//println("需要螢幕尺寸：\(myMonitor.self.size) 吋")
//println("鍵盤種類：\(myKeybroad.fromat)")
//println("機殼材質＆大小：")
//println("完畢！！")
//
//println("")
//    
//myPCFactory.ComputerMethod()
//println("製造Laptop準備中...")
//Laptop().ComputerMethod()
//println("開始製造Laptop...")
//myMouse.line = false
//println("滑鼠有無線：\(myMouse.line)")
//myMonitor.self.size = 14
//println("需要螢幕尺寸：\(myMonitor.self.size) 吋")
//println("有無額外數字鍵：")
//println("完畢！！")
