//
//  PredictionResultsPresentable.swift
//  HashMe
//
//  Created by Dheeru on 9/23/17.
//  Copyright © 2017 Dheeru. All rights reserved.
//

import Foundation
import UIKit

public protocol PredictionResultsPresentable: class {
    func showPredictionResultsView(predictions: [String], withPredictionImage: UIImage)
}

public extension PredictionResultsPresentable where Self: HashTagFlowController {
    func showPredictionResultsView(predictions: [String], withPredictionImage: UIImage) {
        let storyboard = UIStoryboard(name: Constants.mainStoryboardIdentifier, bundle: nil)
        let predictionResultsVc = storyboard.instantiateViewController(withIdentifier: Constants.predictionsResultsVcIdentifier) as? PredictionResultsViewController
        
        let viewModel = PredictionsResultsViewModel(predictions: predictions, withPredictionImage: withPredictionImage)
        viewModel.flowDelegate = self
        predictionResultsVc?.viewModel = viewModel
        self.pushViewControllerWithAnimation(predictionResultsVc!, withAnimationType: .fade)
    }
}
