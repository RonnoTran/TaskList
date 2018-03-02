* Tutorial to create a To Do List 

Step 1: 
- Create a new project type Tabbed App, which has two controller views

Step 2:

- In main storyboard, you need to add a table view to your FirstViewController.
- Simply doing by searching for Table view on filter (Bottom right of the screen), and drag it to cover your whole
FirstViewController
- Then, you need to add a table view cell to your table, search and drag it to top of your table view 
- Click on your prototype cell, and give it an identifier name that you want (I name it "cell" here)
- These are all things we need for your first Controller.

Step 3 :
- make a reference to your TableView, hold CTRL and drag your TableView to your FirstViewController.swift.
- your reference will look like this : 
	@IBOutlet weak var myTableView: UITableView! 

Step 4 : Make your data appear on the list 
- create a global variable contains all the things that you plan to do and put this before your class 
	Ex : var list = ["Buy milk", "Prepare for presentation", "Study for Quiz"]
- This function will define number of element in your array and create rows for these elements (numberofRowsInSection) :
	 
	 // define how many rows we want in our table view
   	 public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    	{
        		return (list.count)
    	}

- Then we need a function that identity the cell of the TableView and put the data in there (cellforRowAt) :
	
	 public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        // go through all of the items in the query
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }

Step 5 : Delete your cell by swiping 
- This function will allow you to delete cell by swiping (UITableViewCellEditingStyle) :
	
	 func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        // check if the deleting swipe wasn't deleting swipe
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            // refresh/update the table
            myTableView.reloadData()
        }
    }

- Note: make sure you reload your table after deleting :  myTableView.reloadData()
- Also put this function here to refresh the table when the view is loaded 
		
		override func viewDidAppear(_ animated: Bool) 
		{
        	myTableView.reloadData()
    	}	

Step 6 : Add Textfield and Button To SecondViewController
- Go back to your mainStoryBoard 
- Search for TextField and Button and add them to your SecondViewController 

Step 7 : Append your data to cell of the table view 
- Hold CTRL and drag your TextField to your SecondViewController to make a reference 
	
	 @IBOutlet weak var input: UITextField!

- Hold CTRL and drag your button to your SecondViewController to make a reference, choose the Action instead of Outlet this time cause we are going to make a button action
- put these inside the body of your button action:
	
	 if (input.text != "")
        {
            list.append(input.text!)
            // refresh the input so the user can enter new one 
            input.text = ""
        }

- Basically this will trigger when you click on the button
- It will check if the TextField is empty or not, if it is not empty, append the text to the cell of your Table View 
- Note: remember to add this after append to clear the TextField for the next use


That's it ! Have fun playing around ^__^

	


