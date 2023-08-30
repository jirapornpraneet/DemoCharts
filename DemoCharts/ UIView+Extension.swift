//
//   UIView+Extension.swift
//  DemoCharts
//
//  Created by Nut Jiraporn on 30/8/2566 BE.
//

import UIKit
// MARK: - Embed

extension UIView {

    /// Embed UIView to UIView (no response)
    func embed(_ contentView: UIView) {
        let _ = self.embed(with: contentView)
    }

    /// Embed UIView to UIView
    func embed(with contentView: UIView) -> UIView? {
        self.addSubview(contentView)
        self.sendSubviewToBack(contentView)
        //self.bringSubviewToFront(contentView)

        /// Layout Constraint
        contentView.translatesAutoresizingMaskIntoConstraints = false
        let leading = contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0)
        let trailing = contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0)
        let top = contentView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0)
        let bottom = contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        self.addConstraints([leading, trailing, top, bottom])
        return contentView
    }

    /// Remove all subviews.
    func removeAllSubviews() {
        self.subviews.forEach({ $0.removeFromSuperview() })
    }

    /// Load nib
    public class func instantiateFromNib<T: UIView>(viewType: T.Type) -> T? {
        return Bundle.main.loadNibNamed(String(describing: viewType), owner: self, options: nil)?.first as? T
    }

    public class func instantiateFromNib() -> Self? {
        return instantiateFromNib(viewType: self) ?? nil
    }

    /// Add view with class
    public class func addNib<T: UIView>(into sourceView: UIView) -> T? {
        guard let v = T.instantiateFromNib()  else { return nil }
        return sourceView.embed(with: v) as? T
    }

    func addViewFromNib<T: UIView>() -> T? {
        guard let v = T.instantiateFromNib()  else { return nil }
        return self.embed(with: v) as? T
    }
}
