import UIKit

//public extension UIViewController {
//    //MARK: UIAlertController with cancel and confirm buttons
//    func presentUmaDefaultAlert(title: String,
//                                message: String? = nil,
//                                isCancelActionIncluded: Bool = false,
//                                actionDoneButtonTitle: String? = "Ok",
//                                actionCancelButtonTitle: String = "Cancel",
//                                preferredStyle style: UIAlertController.Style = .alert,
//                                handler: ((UIAlertAction) -> Void)? = nil) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
//        let actionDone = UIAlertAction(title: actionDoneButtonTitle, style: .default, handler: handler)
//        alert.addAction(actionDone)
//
//        if isCancelActionIncluded {
//            let actionCancel = UIAlertAction(title: actionCancelButtonTitle, style: .cancel, handler: nil)
//            alert.addAction(actionCancel)
//        }
//
//        self.present(alert, animated: true, completion: nil)
//    }
//
//    // MARK: UIAlertController with Custom UIAction
//    func presentUmaActionAlert(title: String,
//                                    message: String? = nil,
//                                    isCancelActionIncluded: Bool = false,
//                                    actionCancelButtonTitle: String = "Cancel",
//                                    preferredStyle style: UIAlertController.Style = .alert,
//                                    with actions: UIAlertAction ...) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
//        actions.forEach { alert.addAction($0) }
//
//        if isCancelActionIncluded {
//            let actionCancel = UIAlertAction(title: actionCancelButtonTitle, style: .cancel, handler: nil)
//            alert.addAction(actionCancel)
//        }
//
//        self.present(alert, animated: true, completion: nil)
//    }
//
//    // MARK: 커스텀 하단 경고창
//    func presentUmaBottomAlert(message: String) {
//        let alertSuperview = UIView()
//        alertSuperview.backgroundColor = UIColor.black.withAlphaComponent(0.9)
//        alertSuperview.layer.cornerRadius = 10
//        alertSuperview.isHidden = true
//
//        let alertLabel = UILabel()
//        alertLabel.font = .systemFont(ofSize: 15)
//        alertLabel.textColor = .white
//
//        self.view.addSubview(alertSuperview)
//        alertSuperview.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            alertSuperview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12),
//            alertSuperview.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
//        ])
//
//        alertSuperview.addSubview(alertLabel)
//        alertLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            alertLabel.topAnchor.constraint(equalTo: alertSuperview.topAnchor, constant: 6),
//            alertLabel.bottomAnchor.constraint(equalTo: alertSuperview.bottomAnchor, constant: -6),
//            alertLabel.leadingAnchor.constraint(equalTo: alertSuperview.leadingAnchor, constant: 12),
//            alertLabel.trailingAnchor.constraint(equalTo: alertSuperview.trailingAnchor, constant: -12)
//        ])
//
//        alertLabel.text = message
//        alertSuperview.alpha = 1.0
//        alertSuperview.isHidden = false
//        UIView.animate(
//            withDuration: 2.0,
//            delay: 1.0,
//            options: .curveEaseIn,
//            animations: { alertSuperview.alpha = 0 },
//            completion: { _ in
//                alertSuperview.removeFromSuperview()
//            }
//        )
//    }
//}

public protocol Alertable {}
public extension Alertable where Self: UIViewController {
    func showDefaultAlert(
        title: String,
        message: String? = nil,
        isCancelActionIncluded: Bool = false,
        actionDoneButtonTitle: String? = "Ok",
        actionCancelButtonTitle: String = "Cancel",
        preferredStyle style: UIAlertController.Style = .alert,
        handler: ((UIAlertAction) -> Void)? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let actionDone = UIAlertAction(title: actionDoneButtonTitle, style: .default, handler: handler)
        alert.addAction(actionDone)
        
        if isCancelActionIncluded {
            let actionCancel = UIAlertAction(title: actionCancelButtonTitle, style: .cancel, handler: nil)
            alert.addAction(actionCancel)
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func showActionAlert(
        title: String,
        message: String? = nil,
        isCancelActionIncluded: Bool = false,
        actionCancelButtonTitle: String = "Cancel",
        preferredStyle style: UIAlertController.Style = .alert,
        with actions: UIAlertAction ...
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        actions.forEach { alert.addAction($0) }
        
        if isCancelActionIncluded {
            let actionCancel = UIAlertAction(title: actionCancelButtonTitle, style: .cancel, handler: nil)
            alert.addAction(actionCancel)
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func showBottomAlert(message: String) {
        let alertSuperview = UIView()
        alertSuperview.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        alertSuperview.layer.cornerRadius = 10
        alertSuperview.isHidden = true
        
        let alertLabel = UILabel()
        alertLabel.font = .systemFont(ofSize: 15)
        alertLabel.textColor = .white
        
        self.view.addSubview(alertSuperview)
        alertSuperview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            alertSuperview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12),
            alertSuperview.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        
        alertSuperview.addSubview(alertLabel)
        alertLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            alertLabel.topAnchor.constraint(equalTo: alertSuperview.topAnchor, constant: 6),
            alertLabel.bottomAnchor.constraint(equalTo: alertSuperview.bottomAnchor, constant: -6),
            alertLabel.leadingAnchor.constraint(equalTo: alertSuperview.leadingAnchor, constant: 12),
            alertLabel.trailingAnchor.constraint(equalTo: alertSuperview.trailingAnchor, constant: -12)
        ])
        
        alertLabel.text = message
        alertSuperview.alpha = 1.0
        alertSuperview.isHidden = false
        UIView.animate(
            withDuration: 2.0,
            delay: 1.0,
            options: .curveEaseIn,
            animations: { alertSuperview.alpha = 0 },
            completion: { _ in
                alertSuperview.removeFromSuperview()
            }
        )
    }
}
