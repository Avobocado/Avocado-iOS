import UIKit
import SnapKit
import Then

class ViewController04Cell: UITableViewCell {
    
    static let identifier = "ViewController04Cell"
    
    let img: UIImageView = UIImageView().then {
        $0.image = UIImage(systemName: "icon   ")
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    let label: UILabel = UILabel().then {
        $0.text = "상어상어"
        $0.textColor = UIColor.gray
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addContentView()
        autoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addContentView() {
        contentView.addSubview(img)
        contentView.addSubview(label)
    }
    
    private func autoLayout() {
        img.snp.makeConstraints {
            $0.leading.top.equalTo(5)
            $0.size.equalTo(100)
        }
        label.snp.makeConstraints {
            $0.leading.equalTo(img.snp.trailing).offset(5)
            $0.top.equalTo(5)
            $0.trailing.equalTo(-5)
        }
    }
}

class ViewController04: UIViewController {
    
    private let tableView: UITableView = UITableView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.register(ViewController04Cell.self, forCellReuseIdentifier: ViewController04Cell.identifier)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        addSubView()
        autoLayout()
    }
}

extension ViewController04 {
    
    private func configure() {
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.delegate = self
    }
    
    private func addSubView() {
        view.addSubview(tableView)
    }
    
    private func autoLayout() {
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
    }
}

extension ViewController04: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ViewController04Cell.identifier, for: indexPath) as! ViewController04Cell
        cell.img.image = UIImage(systemName: "ticket")
        cell.label.text = "PiCK: \(indexPath.row)"
        return cell
    }
}

extension ViewController04: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select \(indexPath.row)")
    }
}
