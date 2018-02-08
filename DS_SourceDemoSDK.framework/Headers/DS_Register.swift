//
//  DS_Register.swift
//  DS_SourceTestSDK
//
//  Created by d2space on 2018/2/2.
//  Copyright © 2018年 D2space. All rights reserved.
//

import Foundation
import UIKit

//动态库可以这么加载
//let ds_SDK_Main_Bundle = Bundle(identifier: "duzhonghua.DS-SourceTestSDK")
//let ds_SDK_Main_Bundle = Bundle(for: TestController.self)
//let ds_Source_Bundle = Bundle(path: (Bundle(for: TestController.self).path(forResource: "DS_Source", ofType: "bundle")!))

public class DS_Register{
    public class func pushTestController(_ controller: UIViewController){
        let path = Bundle.main.path(forResource: "DS_SourceDemoBundle", ofType: "bundle")
        let ds_SDK_Main_Bundle = Bundle.init(path: path!)
        let storyboard = UIStoryboard.init(name: "TestController", bundle:ds_SDK_Main_Bundle)
        let c = storyboard.instantiateInitialViewController() as? TestController
        controller.navigationController?.pushViewController(c!, animated: true)
    }
}
