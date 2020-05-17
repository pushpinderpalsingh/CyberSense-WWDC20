import UIKit
import PlaygroundSupport

//let vc = LaunchViewController()
//vc.preferredContentSize = CGSize(width:600, height:400)
//PlaygroundPage.current.liveView = vc
let vc = IntroViewController()
vc.preferredContentSize = CGSize(width:600, height:400)
PlaygroundPage.current.liveView = vc

public class IntroViewController : UIViewController{
    let logo = UIImageView()
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
    }
}
