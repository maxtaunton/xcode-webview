import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var henl: WKWebView!
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//set your url at "URL(string:"https://www.google.com")"
        let myURL = URL(string:"https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
