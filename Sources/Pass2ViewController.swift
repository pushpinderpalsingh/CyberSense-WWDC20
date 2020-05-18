import UIKit
import PlaygroundSupport


private let previousView = Pass1ViewController()

public class Pass2ViewController: UIViewController{
    
    let nextButton = UIButton()
    let headingLabel = UILabel()
    let descLabel = UILabel()
    let keyImage = UIImageView()
    let previousButton = UIButton()
    let specialCharLabel = UILabel()
    
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setUpNextButton()
        setUPPreviousButton()
        setUpTitle()
        setDescLabel()
        setKeyImage()
        setSpecialCharLabel()
    }
    public override func viewWillAppear(_ animated: Bool) {
        specialCharLabel.center.y += 90
        specialCharLabel.center.x += 50
        animateImage()
    }
    
}
//MARK: - Setting UP UI
extension Pass2ViewController {
    
    func setSpecialCharLabel(){
        view.addSubview(specialCharLabel)
        specialCharLabel.text = "#+!?/-@$"
        specialCharLabel.textAlignment = .center
        specialCharLabel.textColor = .white
        setSpecialCharConstraints()
    }
    
    func setKeyImage(){
        view.addSubview(keyImage)
        keyImage.image = UIImage(named: "key.png")
        setKeyImageConstraints()
    }
    
    func setUPPreviousButton(){
        view.addSubview(previousButton)
        previousButton.setTitle("Back", for: .normal)
        previousButton.setTitleColor(.black, for: .normal)
        previousButton.backgroundColor = .lightText
        previousButton.layer.cornerRadius = 5
        previousButton.layer.borderWidth = 1
        previousButton.layer.borderColor = UIColor.white.cgColor
        setPreviousButtonConstraints()
        previousButton.addTarget(self,action: #selector(previousClicked),for: .touchUpInside)
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
        //        nextButton.addTarget(self,action: #selector(nextClicked),for: .touchUpInside)
        //
    }
    
    func setUpTitle(){
        view.addSubview(headingLabel)
        headingLabel.text = "How can you create stronger passwords?"
        headingLabel.textColor = .white
        headingLabel.textAlignment = .center
        headingLabel.font = UIFont(name: headingLabel.font.fontName, size: 30)
        setTitleConstrains()
    }
    
    func setDescLabel(){
        view.addSubview(descLabel)
        descLabel.textAlignment = .center
        descLabel.textColor = .white
        descLabel.text = "To make your password more secure, simply add special characters such as numbers and special characters. Also making your password as long as possible makes your password exponentially stronger. Hacker Edward Snowden says changing our mentality from Password to Passphrase! "
        descLabel.numberOfLines = 8
        descLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        descLabel.font = UIFont(name: descLabel.font.fontName, size: 18)
        setDescConstraints()
    }
}


//MARK: - Setting UP UI Constraints

extension Pass2ViewController{
    
    func setSpecialCharConstraints(){
        specialCharLabel.translatesAutoresizingMaskIntoConstraints = false
        specialCharLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
        specialCharLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        specialCharLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 125).isActive = true
        specialCharLabel.widthAnchor.constraint(equalTo: keyImage.heightAnchor, multiplier: 1.0/1.0).isActive = true
    }
    
    func setKeyImageConstraints(){
        keyImage.translatesAutoresizingMaskIntoConstraints = false
        keyImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 125).isActive = true
        keyImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
        keyImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        keyImage.heightAnchor.constraint(equalTo: keyImage.widthAnchor, multiplier: 1.0/1.0).isActive = true
    }
    
    func setPreviousButtonConstraints(){
        previousButton.translatesAutoresizingMaskIntoConstraints = false
        previousButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        previousButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        previousButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        previousButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
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
        descLabel.heightAnchor.constraint(equalToConstant: 450).isActive = true
        descLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    }
    
    func setTitleConstrains(){
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        headingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        headingLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        headingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    }
}
//MARK: - Actions

extension Pass2ViewController{
    // @objc func nextClicked(){
    //                newViewController.preferredContentSize = CGSize(width:600, height:400)
    //                PlaygroundPage.current.liveView = newViewController
    //
    //    }
    @objc func previousClicked(){
        previousView.preferredContentSize = CGSize(width:600, height:400)
        PlaygroundPage.current.liveView = previousView
        
    }
}



//MARK: - Setting up Animations

extension Pass2ViewController{
    
    func animateImage(){
        
        UIView.animate(withDuration: 0.8, delay: 1, options: .curveLinear, animations: {
            self.specialCharLabel.center.y -= 90
            self.specialCharLabel.center.x -= 50
        }, completion: nil)
        
    }
}
