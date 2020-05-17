import UIKit
import PlaygroundSupport

let vc = Pass1ViewController()
vc.preferredContentSize = CGSize(width:600, height:400)
PlaygroundPage.current.liveView = vc

//MARK: - Class
public class Pass1ViewController: UIViewController{
    
    let nextButton = UIButton()
    let headingLabel = UILabel()
    let descLabel = UILabel()
    let lockImage = UIImageView()
    let keyImage = UIImageView()
    
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setUpNextButton()
        setUpTitle()
        setDescLabel()
        setLockImage()
    }

}
//MARK: - Setting UP UI
extension Pass1ViewController {
    
    func setLockImage(){
           view.addSubview(lockImage)
           lockImage.image = UIImage(named: "lock.png")
           setLockImageConstraints()
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
        //        nextButton.addTarget(self,action: #selector(getStartedClicked),for: .touchUpInside)
        //
        //    }
        //    @objc func getStartedClicked(){
        //        newViewController.preferredContentSize = CGSize(width:600, height:400)
        //        PlaygroundPage.current.liveView = newViewController
        //
    }
    
    func setUpTitle(){
        view.addSubview(headingLabel)
        headingLabel.text = "Why Should you create strong passwords?"
        headingLabel.textColor = .white
        headingLabel.textAlignment = .center
        headingLabel.font = UIFont(name: headingLabel.font.fontName, size: 30)
        setTitleConstrains()
    }
    
    func setDescLabel(){
        view.addSubview(descLabel)
        descLabel.textAlignment = .center
        descLabel.textColor = .white
        descLabel.text = "To explain all this, I will use a key and lock analogy. If your key is very simple, anyone can break the lock of your digital world by very simple tools or even possibly brute force their way in!!"
        descLabel.numberOfLines = 8
        descLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        descLabel.font = UIFont(name: descLabel.font.fontName, size: 18)
        setDescConstraints()
    }
}


//MARK: - Setting UP UI Constraints

extension Pass1ViewController{
     
     func setLockImageConstraints(){
         lockImage.translatesAutoresizingMaskIntoConstraints = false
         lockImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
         lockImage.heightAnchor.constraint(equalTo: lockImage.widthAnchor, multiplier: 1.0/1.0).isActive = true
         lockImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 125).isActive = true
         lockImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
         
     }
     
     func setButtonConstraints(){
         nextButton.translatesAutoresizingMaskIntoConstraints = false
         nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
         nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
         nextButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
         nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
     }
     
     func setDescConstraints(){
         descLabel.translatesAutoresizingMaskIntoConstraints = false
         descLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
         descLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
         descLabel.heightAnchor.constraint(equalToConstant: 500).isActive = true
         descLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
     }
    
     func setTitleConstrains(){
         headingLabel.translatesAutoresizingMaskIntoConstraints = false
         headingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
         headingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
         headingLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
         headingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
     }
}
//MARK: - Setting up Animations

extension Pass1ViewController{
    
}
