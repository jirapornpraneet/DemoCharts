//
//  ViewController.swift
//  DemoCharts
//
//  Created by Nut Jiraporn on 30/8/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var contentView: UIView!
//    internal weak var chartView: PieChartViewXib?
    internal weak var chartView: LineChartViewXib?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        guard chartView == nil else { return }
        self.chartView = contentView.addViewFromNib()
    }

}

