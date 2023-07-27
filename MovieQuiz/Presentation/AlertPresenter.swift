//
//  AlertPresenter.swift
//  MovieQuiz
//
//

import Foundation
import UIKit

protocol AlertPresentorProtocol {
    
    func show(alertModel: AlertModel)
}

final class AlertPresentor: AlertPresentorProtocol {
    private weak var viewController: UIViewController?
    
    init(viewController:UIViewController? = nil) {
        self.viewController = viewController
    }
    
    func show(alertModel: AlertModel) {
        let alert = UIAlertController(
            title: alertModel.title,
            message: alertModel.message,
            preferredStyle: .alert
        )
        
        alert.view.accessibilityIdentifier = "Game Results"
        
        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            alertModel.buttonAction()
        }
        
        alert.addAction(action)
        
        viewController?.present(alert, animated: true)
    }
}
