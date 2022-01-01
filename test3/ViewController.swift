//
//  ViewController.swift
//  test3
//
//  Created by 藤木祐孝 on 2021/11/28.
//

import UIKit
class ViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
    @IBOutlet weak var button: UIBarButtonItem!
    var tapGesture:UITapGestureRecognizer!
    
    @IBAction func button(_ sender: Any) {
            // カメラロール表示
            let imagePickerController = UIImagePickerController()
            imagePickerController.sourceType = .photoLibrary
            imagePickerController.delegate = self
            imagePickerController.mediaTypes = ["public.image"]
            present(imagePickerController,animated: true,completion: nil)
        }
    // カメラロール表示
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        let widthSize = UIScreen.main.bounds.size.width // 画面の横の大きさを取得
        let heightSize = UIScreen.main.bounds.size.height // 画面の縦の大きさを取得
        let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: widthSize, height: heightSize)) // 背景画像の大きさを設定
        imageViewBackground.image = (info[.originalImage] as! UIImage) // カメラロールから受け取った画像を設定
        self.view.addSubview(imageViewBackground) // 背景画像を追加する

        picker.dismiss(animated: true)
    }
    override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge {
        return .all
    }
    // アウトレット接続
    override func viewDidLoad() {
        super.viewDidLoad()
        // スリープをさせない行
        UIApplication.shared.isIdleTimerDisabled = true
        // Do any additional setup after loading the view.
        // 画像を設定
//        let widthSize = UIScreen.main.bounds.size.width // 画面の横の大きさを取得
//        let heightSize = UIScreen.main.bounds.size.height // 画面の縦の大きさを取得
//        let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: widthSize, height: heightSize)) // 背景画像の大きさを設定
//        imageViewBackground.image = UIImage(named: "pose_pien_uruuru_man.png") // 画像を設定
//        self.view.addSubview(imageViewBackground) // 背景画像を追加する
    }
    


}

