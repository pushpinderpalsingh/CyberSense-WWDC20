import UIKit
import PlaygroundSupport

let vc = Pass3ViewController()
vc.preferredContentSize = CGSize(width:600, height:400)
PlaygroundPage.current.liveView = vc


private let newViewController = UIViewController()
private let previousView = Pass2ViewController()

//MARK: - Class
public class Pass3ViewController: UIViewController{
    
    let nextButton = UIButton()
    let headingLabel = UILabel()
    let descLabel = UILabel()
    let lockImage = UIImageView()
    let lockImage1 = UIImageView()
    let keyImage = UIImageView()
     let keyImage1 = UIImageView()
    let previousButton = UIButton()
    
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setUpNextButton()
        setUPPreviousButton()
        setUpTitle()
        setDescLabel()
        setLockImage()
        setLockImage1()
        setKeyImage()
        setKeyImage1()
}
    public override func viewWillAppear(_ animated: Bool) {
        self.lockImage.image = UIImage(named: "lock.png")
        self.keyImage.center.x += 50
        animateLockKeyImage()
    }
}
//MARK: - Setting UP UI
extension Pass3ViewController {
    
    func setKeyImage(){
          view.addSubview(keyImage)
          keyImage.image = UIImage(named: "key.png")
          setKeyImageConstraints()
          animateLockKeyImage()
      }
      
      func setLockImage(){
          view.addSubview(lockImage)
          lockImage.image = UIImage(named: "lock.png")
          setLockImageConstraints()
      }
    func setKeyImage1(){
          view.addSubview(keyImage1)
          keyImage1.image = UIImage(named: "key.png")
          setKeyImage1Constraints()
          animateLockKeyImage1()
      }
      
      func setLockImage1(){
          view.addSubview(lockImage1)
          lockImage1.image = UIImage(named: "lock.png")
          setLockImage1Constraints()
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
        nextButton.setTitle("Finish", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.backgroundColor = .lightText
        nextButton.layer.cornerRadius = 5
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor.white.cgColor
        setButtonConstraints()
                nextButton.addTarget(self,action: #selector(nextClicked),for: .touchUpInside)
            }
    
    func setUpTitle(){
        view.addSubview(headingLabel)
        headingLabel.text = "Why you should have different password for different accounts?"
        headingLabel.textColor = .white
        headingLabel.textAlignment = .center
        headingLabel.font = UIFont(name: headingLabel.font.fontName, size: 22)
        setTitleConstrains()
    }
    
    func setDescLabel(){
        view.addSubview(descLabel)
        descLabel.textAlignment = .center
        descLabel.textColor = .white
        descLabel.text = "Using same passwords for multiple is a very common mistake. By using similar passwords, if a malicious user gains access one of your account,all other accounts with same password will be compromised.Use different passwords for different account people!"
        descLabel.numberOfLines = 8
        descLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        descLabel.font = UIFont(name: descLabel.font.fontName, size: 18)
        setDescConstraints()
    }
}


//MARK: - Setting UP UI Constraints

extension Pass3ViewController{
    
    func setKeyImageConstraints(){
        keyImage.translatesAutoresizingMaskIntoConstraints = false
        keyImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 125).isActive = true
        keyImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -160).isActive = true
        keyImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        keyImage.heightAnchor.constraint(equalTo: keyImage.widthAnchor, multiplier: 1.0/1.0).isActive = true
    }
    func setKeyImage1Constraints(){
        keyImage1.translatesAutoresizingMaskIntoConstraints = false
        keyImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 225).isActive = true
        keyImage1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -160).isActive = true
        keyImage1.widthAnchor.constraint(equalToConstant: 80).isActive = true
        keyImage1.heightAnchor.constraint(equalTo: keyImage.widthAnchor, multiplier: 1.0/1.0).isActive = true
    }
    
    func setLockImageConstraints(){
        lockImage.translatesAutoresizingMaskIntoConstraints = false
        lockImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
        lockImage.heightAnchor.constraint(equalTo: lockImage.widthAnchor, multiplier: 1.0/1.0).isActive = true
        lockImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 110).isActive = true
        lockImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    func setLockImage1Constraints(){
           lockImage1.translatesAutoresizingMaskIntoConstraints = false
           lockImage1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80).isActive = true
           lockImage1.heightAnchor.constraint(equalTo: lockImage.widthAnchor, multiplier: 1.0/1.0).isActive = true
           lockImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 209).isActive = true
           lockImage1.widthAnchor.constraint(equalToConstant: 80).isActive = true
           
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

extension Pass3ViewController{
     @objc func nextClicked(){
                    newViewController.preferredContentSize = CGSize(width:600, height:400)

        newViewController.view.backgroundColor = .black
                    PlaygroundPage.current.liveView = newViewController

        }
     @objc func previousClicked(){
                      previousView.preferredContentSize = CGSize(width:600, height:400)
                      PlaygroundPage.current.liveView = previousView
      
          }
}



//MARK: - Setting up Animations

extension Pass3ViewController{
    
    func animateLockKeyImage(){
        for i in 0...3{
            UIView.animate(withDuration: 0.7, delay: TimeInterval(i), options: .curveLinear, animations: {
                self.keyImage.center.x += 50
            }, completion: nil)
            
            UIView.animate(withDuration: 0.5, delay:TimeInterval(i), options: .curveLinear, animations: {
                self.keyImage.center.x -= 50
            }, completion: nil)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.7) {
            self.lockImage.image = UIImage(named: "open_lock.png")
        }
        
    }
    func animateLockKeyImage1(){
          for i in 0...3{
              UIView.animate(withDuration: 0.7, delay: TimeInterval(i), options: .curveLinear, animations: {
                  self.keyImage1.center.x += 50
              }, completion: nil)
              
              UIView.animate(withDuration: 0.5, delay:TimeInterval(i), options: .curveLinear, animations: {
                  self.keyImage1.center.x -= 50
              }, completion: nil)
          }
          
      }
}
