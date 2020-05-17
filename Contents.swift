import UIKit
import PlaygroundSupport

public class IntroViewController : UIViewController{
    let logo = UIImageView()
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .red
        self.view = view
        setLogo()

    }
    func setLogo(){
          view.addSubview(logo)
          logo.image = UIImage(named: "cybersense.png")
          setLogoConstaints()
          logoAnimate()
      }
    func setLogoConstaints(){
           logo.translatesAutoresizingMaskIntoConstraints = false
           logo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
           logo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
           logo.topAnchor.constraint(equalTo: view.topAnchor, constant:180).isActive = true
           logo.heightAnchor.constraint(equalTo: logo.widthAnchor, multiplier: 1.0/5.0).isActive = true
       }
       
       func logoAnimate(){
           logo.topAnchor.constraint(equalTo: view.topAnchor, constant:80).isActive = true
           UIView.animate(withDuration: 0.5) {
               self.view.layoutIfNeeded()
           }
}
}

let vc = LaunchViewController()
vc.preferredContentSize = CGSize(width:600, height:400)
PlaygroundPage.current.liveView = vc




