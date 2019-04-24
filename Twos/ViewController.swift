import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtalas: UITextField!
    
    @IBOutlet weak var txtTinggi: UITextField!
    
    @IBOutlet weak var btnHitung: UIButton!
    
    @IBOutlet weak var txtHasil: UILabel!
    
    
    var alas: Double = 0.0
    var tinggi : Double = 0.0
    var hasil : Double = 0.0
    
    @IBAction func hitungClick(_ sender: UIButton) {
        
        if(checkInput()){
            let xalas: String = txtalas.text!
            let xtinggi : String = txtTinggi.text!
            
            alas = Double(xalas)!
            tinggi = Double(xtinggi)!
            
            hasil = 0.5 * alas * tinggi
            txtHasil.text = String(hasil)
        }
        
    }
    
    func checkInput() -> Bool {
        
        let alasValue = txtalas.text!
        let tinggiValue = txtTinggi.text!
        
        if !alasValue.isEmpty && !tinggiValue.isEmpty {
            
            return true
            
        }else {
            let alert = UIAlertController(title: "Tidak boleh ada kolom kosong!", message: "Anda harus memasukan bilangan desimal.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Baik", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Nanti Saja Deh!", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
            return false
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

