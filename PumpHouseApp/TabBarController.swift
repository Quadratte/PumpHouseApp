import UIKit

enum Tabs {
    case home
    case map
    case social
    case reward
}

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        tabBar.tintColor = .green
        tabBar.barTintColor = .gray
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = UIColor.lightGray.cgColor
        tabBar.layer.masksToBounds = true

        let homeVC = HomeViewController()
        let mapVC = MapViewController()
        let socialVC = SocialViewController()
        let rewardVC = RewardViewController()

        let homeNC = UINavigationController(rootViewController: homeVC)
        let mapNC = UINavigationController(rootViewController: mapVC)
        let socialNC = UINavigationController(rootViewController: socialVC)
        let rewardNC = UINavigationController(rootViewController: rewardVC)

        homeNC.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(),
            tag: 0
        )

        mapNC.tabBarItem = UITabBarItem(
            title: "Map",
            image: UIImage(),
            tag: 1
        )

        socialNC.tabBarItem = UITabBarItem(
            title: "Social",
            image: UIImage(),
            tag: 2
            )

        rewardNC.tabBarItem = UITabBarItem(
            title: "Reward",
            image: UIImage(),
            tag: 2
            )

        setViewControllers([homeNC, mapNC, socialNC, rewardNC], animated: true)
    }
}
