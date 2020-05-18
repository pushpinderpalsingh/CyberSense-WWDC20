import UIKit
import PlaygroundSupport


private let newViewController = Pass1ViewController()

public class IntroViewController : UIViewController{
    
    let nextButton = UIButton()
    let headingLabel = UILabel()
    let descLabel = UILabel()
    
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setUpNextButton()
        setUpTitle()
        setDescLabel()
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
        
        nextButton.addTarget(self,action: #selector(getStartedClicked),for: .touchUpInside)
        
    }
    @objc func getStartedClicked(){
        newViewController.preferredContentSize = CGSize(width:600, height:400)
        PlaygroundPage.current.liveView = newViewController
        
    }
    func setUpTitle(){
        view.addSubview(headingLabel)
        headingLabel.text = "What is CyberSense?"
        headingLabel.textColor = .white
        headingLabel.textAlignment = .center
        headingLabel.font = UIFont(name: headingLabel.font.fontName, size: 30)
        setTitleConstrains()
        
    }
    func setDescLabel(){
        view.addSubview(descLabel)
        descLabel.textAlignment = .center
        descLabel.textColor = .white
        descLabel.text = "CyberSense is the basic common-sense you need to follow while browsing the internet. These tips will help you browse internet more securely and live a happy life. Click next to get started with tips regarding your passwords."
        descLabel.numberOfLines = 5
        descLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        descLabel.font = UIFont(name: descLabel.font.fontName, size: 20)
        setDescConstraints()
    }
    func setDescConstraints(){
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        descLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        descLabel.heightAnchor.constraint(equalToConstant: 300).isActive = true
        descLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
    }
    func setTitleConstrains(){
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        headingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        headingLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        headingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    }
    func setButtonConstraints(){
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
    }
}
