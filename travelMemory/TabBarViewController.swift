//
//  TabBarViewController.swift
//  travelMemory
//
//  Created by 정현화 on 2023/07/31.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private lazy var recommendViewcontroller: UINavigationController = {
        let viewController = RecommendViewController()
        let image = UIImage(systemName: "star", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 22)))
        let tabBarItem = UITabBarItem()
        tabBarItem.title = "추천"
        tabBarItem.image = image
        tabBarItem.tag = 0
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    
    private lazy var mainViewController: UINavigationController = {
        let viewController = MainViewController()
        let image = UIImage(systemName: "location.north", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 22)))
        let tabBarItem = UITabBarItem()
        tabBarItem.title = "내 주변"
        tabBarItem.image = image
        tabBarItem.tag = 1
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    
    private lazy var registerViewController: UINavigationController = {
        let viewController = RegisterViewController()
        let image = UIImage(systemName: "plus.circle.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 24)))?.withTintColor(.blue, renderingMode: .alwaysOriginal)
        let tabBarItem = UITabBarItem()
        tabBarItem.image = image
        tabBarItem.tag = 2
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    
    private lazy var favoriteViewController: UINavigationController = {
        let viewController = FavoriteViewController()
        let image = UIImage(systemName: "folder", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 22)))
        let tabBarItem = UITabBarItem()
        tabBarItem.title = "컬렉션"
        tabBarItem.image = image
        tabBarItem.tag = 3
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
   
    private lazy var myPageViewController: UINavigationController = {
        let viewController = MyPageViewController()
        let image = UIImage(systemName: "person", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 22)))
        let tabBarItem = UITabBarItem()
        tabBarItem.title = "마이"
        tabBarItem.image = image
        tabBarItem.tag = 4
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        self.view.backgroundColor = UIColor.gray
        viewControllers = [recommendViewcontroller, mainViewController, registerViewController, favoriteViewController, myPageViewController]
        self.selectedIndex = 1
        self.configureTabBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        var tabFrame = self.tabBar.frame
        tabFrame.size.height = 100
        tabFrame.origin.y = self.view.frame.size.height - 100
        self.tabBar.frame = tabFrame
    }
}

extension TabBarViewController {
    func configureTabBar() {
        self.tabBar.unselectedItemTintColor = .label
        self.tabBar.layer.cornerRadius = 20
        self.tabBar.layer.shadowRadius = 10
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.backgroundColor = UIColor.systemBackground.cgColor
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
        self.tabBar.layer.borderWidth = 0.4
    }
}

extension TabBarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 2 {
            let registerViewController = RegisterViewController()
            registerViewController.hidesBottomBarWhenPushed = true
            registerViewController.navigationItem.title = "내 주변 등록"
            navigationController?.pushViewController(registerViewController, animated: true)
            
            return false
        } else {
            return true
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if viewController.tabBarItem.tag == 1 {
            let image = UIImage(systemName: "plus.circle.fill", withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 24)))?.withTintColor(.blue, renderingMode: .alwaysOriginal)
            registerViewController.tabBarItem.image = image
        } else {
            let image = UIImage(named: "homeButton")?.withRenderingMode(.alwaysOriginal)
            registerViewController.tabBarItem.image = image
            registerViewController.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -18, right: 0)
        }
    }
}
