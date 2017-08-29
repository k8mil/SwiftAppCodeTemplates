#### initVC

import UIKit

class $NAME$ViewController: UIViewController {
    private var viewModel: $NAME$ViewModel

    required init?(coder aDecoder: NSCoder) {
        fatalError("coder not implemented")
    }

    init(viewModel: $NAME$ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    override func loadView() {
        super.loadView()
        createMainView()
    }

    private func createMainView() {
        let mainView = $NAME$View(viewModel: viewModel)
        view.addSubview(mainView)
        mainView.fillParent()
    }
}

#### initVIEW

import UIKit

class $NAME$View: UIView {
    fileprivate let viewModel: $NAME$ViewModel

    init(viewModel: $NAME$ViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("coder not implemented")
    }

    private func setupView() {
        backgroundColor = .white
        createComponents()
        applyConstraints()
    }

    private func createComponents() {
    }

    private func applyConstraints() {
    }
}