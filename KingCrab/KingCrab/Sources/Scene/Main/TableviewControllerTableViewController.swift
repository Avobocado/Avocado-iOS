import UIKit
import SnapKit
import Then

class TableviewControllerTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    // Define the tableView
    let tableView = UITableView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        $0.rowHeight = UITableView.automaticDimension
        $0.estimatedRowHeight = UITableView.automaticDimension
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setConstraint()
    }
    
    private func setConstraint() {
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(view.snp.top)
            $0.bottom.equalTo(view.snp.bottom)
            $0.leading.equalTo(view.snp.leading)
            $0.trailing.equalTo(view.snp.trailing)
        }
    }
}

// Extend ViewController to conform to UITableViewDelegate and UITableViewDataSource
extension TableviewControllerTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}

// Custom UITableViewCell
class CodingCustomTableViewCell: UITableViewCell {
    // Initialize the cell with any custom views and constraints here
    
    let img = UIImageView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let label = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraint() {
        contentView.addSubview(img)
        contentView.addSubview(label)
        
        img.snp.makeConstraints {
            $0.leading.equalTo(contentView).offset(16)
            $0.top.equalTo(contentView).offset(10)
            $0.bottom.equalTo(contentView).offset(-10)
            $0.width.equalTo(64)
            $0.height.equalTo(64)
        }
        
        label.snp.makeConstraints {
            $0.leading.equalTo(img.snp.trailing).offset(15)
            $0.trailing.equalTo(contentView).offset(-16)
            $0.centerY.equalTo(img)
        }
    }
}

