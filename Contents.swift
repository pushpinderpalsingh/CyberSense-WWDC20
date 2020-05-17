import UIKit
import PlaygroundSupport

//let vc = LaunchViewController()
//vc.preferredContentSize = CGSize(width:600, height:400)
//PlaygroundPage.current.liveView = vc
let vc = IntroViewController1()
vc.preferredContentSize = CGSize(width:600, height:400)
PlaygroundPage.current.liveView = vc

public class IntroViewController1 : UIViewController{
    //    let newViewController = IntroViewController()
    
    let nextButton = UIButton()
    let headingLabel = UILabel()
    let
    
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setUpNextButton()
    }
    
    func setUpNextButton(){
        
        view.addSubview(nextButton)
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.backgroundColor = .lightText
        nextButton.layer.cornerRadius = 5
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor.white.cgColor
        setButtonConstraints()
        setUpTitle()
        //        nextButton.addTarget(self,action: #selector(getStartedClicked),for: .touchUpInside)
        //
        //    }
        //    @objc func getStartedClicked(){
        //        newViewController.preferredContentSize = CGSize(width:600, height:400)
        //        PlaygroundPage.current.liveView = newViewController
        
    }
    func setUpTitle(){
        view.addSubview(heading)
        headingLabel.text = "What is CyberSense?"
        headingLabel.textColor = .white
        headingLabel.textAlignment = .center
        headingLabel.font = UIFont(name: headingLabel.font.fontName, size: 30)
        setTitleConstrains()
    }
    func setTitleConstrains(){
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        headingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        headingLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    func setButtonConstraints(){
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
    }
}
