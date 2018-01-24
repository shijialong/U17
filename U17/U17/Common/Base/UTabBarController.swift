//
//  UTabBarController.swift
//  U17
//
//  Created by shijialong on 2018/1/24.
//  Copyright © 2018年 shijialong. All rights reserved.
//

import UIKit

class UTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.isTranslucent = false
        
        // 首页
        let homeVC = UHomeVC()
        self.addChildVC(vc: homeVC, title: "首页", image: UIImage.init(named: "tab_home"), selectedImage: UIImage.init(named: "tab_home_S"))
        
        // 分类
        let categoryVC = UCategoryVC()
        self.addChildVC(vc: categoryVC, title: "分类", image: UIImage.init(named: "tab_class"), selectedImage: UIImage.init(named: "tab_class_S"))
        
        // 书架
        let bookshelfVC = UBookshelfVC()
        self.addChildVC(vc: bookshelfVC, title: "书架", image: UIImage.init(named: "tab_book"), selectedImage: UIImage.init(named: "tab_book_S"))
        
        // 我的
        let mineVC = UMineVC()
        self.addChildVC(vc: mineVC, title: "我的", image: UIImage.init(named: "tab_mine"), selectedImage: UIImage.init(named: "tab_mine_S"))

    }

    func addChildVC(vc:UIViewController, title:String?, image:UIImage?, selectedImage:UIImage?) {
        vc.tabBarItem = UITabBarItem(title: nil, image: image?.withRenderingMode(.alwaysOriginal), selectedImage: selectedImage?.withRenderingMode(.alwaysOriginal))
        
        if UIDevice.current.userInterfaceIdiom == .phone {  //判断设备类型
            vc.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        }
        
        let nav = UINavigationController(rootViewController: vc)
        
        addChildViewController(nav)
    }

}
