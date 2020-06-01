import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!

   var imageArray             = ["1","2","3","4","5"]

    override func viewDidLoad() {
        super.viewDidLoad()

   scrollView.isPagingEnabled = true
   scrollView.contentSize     = CGSize(width: view.frame.size.width*5, height: view.frame.size.height)


        for i in 0...4{
            print(i)

   let imageView              = UIImageView()
   let imageName              = imageArray[i]
   imageView.image            = UIImage(named: "\(imageName).jpg")
   imageView.frame            = CGRect(x: CGFloat(i)*view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
   imageView.contentMode      = .scaleAspectFit

            scrollView.addSubview(imageView)
        }
    }
}

