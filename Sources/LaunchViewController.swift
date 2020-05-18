import UIKit
import PlaygroundSupport


private let newViewController = IntroViewController()

public class LaunchViewController : UIViewController {
    
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
        getStarted.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -500).isActive = true
        getStarted.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -650).isActive = true
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            newViewController.preferredContentSize = CGSize(width:600, height:400)
            PlaygroundPage.current.liveView = newViewController
                   
        }
       
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
