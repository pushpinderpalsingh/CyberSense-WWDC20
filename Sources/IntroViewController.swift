import UIKit
import PlaygroundSupport

public class IntroViewController : UIViewController{
    let newViewController = IntroViewController()
    let nextButton = UIButton()
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
        nextButton.addTarget(self,action: #selector(getStartedClicked),for: .touchUpInside)
        
    }
    @objc func getStartedClicked(){
        newViewController.preferredContentSize = CGSize(width:600, height:400)
        PlaygroundPage.current.liveView = newViewController
        
    }
    func setButtonConstraints(){
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
    }
}
