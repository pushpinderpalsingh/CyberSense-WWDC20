import UIKit
import PlaygroundSupport


public class LaunchViewController : UIViewController {
    let newViewController = IntroViewController()
    let logo = UIImageView()
    let getStarted = UIButton()
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setLogo()
        setButton()
    }
    
    func setLogo(){
        view.addSubview(logo)
        logo.image = UIImage(named: "cybersense.png")
        setLogoConstaints()
        logoAnimate()
    }
    
    func setButton(){
        view.addSubview(getStarted)
        getStarted.setTitle("Get Started", for: .normal)
        getStarted.setTitleColor(.black, for: .normal)
        getStarted.backgroundColor = .lightText
        getStarted.layer.cornerRadius = 5
        getStarted.layer.borderWidth = 1
        getStarted.layer.borderColor = UIColor.white.cgColor
        setButtonConstraints()
        getStarted.addTarget(self,action: #selector(getStartedClicked),for: .touchUpInside)
        
    }
    @objc func getStartedClicked(){
        PlaygroundPage.current.liveView = newViewController

    }
    
    func setButtonConstraints(){
        getStarted.translatesAutoresizingMaskIntoConstraints = false
        getStarted.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150).isActive = true
        getStarted.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150).isActive = true
        getStarted.heightAnchor.constraint(equalToConstant: 50).isActive = true
        getStarted.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
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
