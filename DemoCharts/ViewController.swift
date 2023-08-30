//
//  ViewController.swift
//  DemoCharts
//
//  Created by Nut Jiraporn on 30/8/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var contentPieChartView: UIView!
    @IBOutlet var contentLineChartView: UIView!
    internal weak var pieChartView: PieChartViewXib?
    internal weak var lineChartView: LineChartViewXib?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPieChartView()
        setupLineChartView()
    }

    func setupPieChartView() {
        guard pieChartView == nil else { return }
        self.pieChartView = contentPieChartView.addViewFromNib()
    }

    func setupLineChartView() {
        guard lineChartView == nil else { return }
        self.lineChartView = contentLineChartView.addViewFromNib()
    }

}

