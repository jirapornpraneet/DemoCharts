//
//  ViewController.swift
//  DemoCharts
//
//  Created by Nut Jiraporn on 30/8/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var contentView: UIView!
    internal weak var pieChartView: PieChartViewXib?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        guard pieChartView == nil else { return }
        self.pieChartView = contentView.addViewFromNib()
    }

}

