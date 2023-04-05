import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {


  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  void dashBoardOption(){
    Text('Building');
  }

  @override
  Widget build(BuildContext context) {
          final theme =  Theme.of(context);

    return Scaffold(
        
        backgroundColor: theme.colorScheme.surface,

        body: Row(children: [
          SafeArea(
            child:
             NavigationRail(
              extended: true,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.abc_rounded),
                  label: Text('Favorites'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.abc_rounded),
                  label: Text('option2'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.abc_sharp),
                  label: Text('option2'),
                ),
              ], selectedIndex: null,
              
            ),
          ),
         Expanded(
            child: Container(
              child: dashboardPageOne(),
            ),
          ),]

        )
      
      
   
    );
  }
}

class dashboardPageOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String _selectedItem;
    return  

          Column(
            
  children: [TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
              hintText: 'Company Name',
              border: OutlineInputBorder(),
              
            ),
            
            ),
          TextField(
              
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
              hintText: 'State',
              border: OutlineInputBorder(),
              
            ),
            
            ),
            TextField(
              
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
              hintText: 'City',
              border: OutlineInputBorder(),
              
            ),
            
            ),
            TextField(
              
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
              hintText: 'Address',
              border: OutlineInputBorder(),
              
            ),
            
            ),
            TextField(
              
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
              hintText: 'Contact',
              border: OutlineInputBorder(),
              
            ),
            
            ),
            TextField(
              
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(),
              
            ),
            
            ),
            DropdownButton(
    value: "New York",
    items: [ //add items in the dropdown 
      DropdownMenuItem(
        child: Text("New York"),
        value: "New York"
      ),

      DropdownMenuItem(
        child: Text("Tokyo"),
        value: "Tokyo",
      ),

      DropdownMenuItem(
        child: Text("Moscow"),
        value: "Moscow",
      )
    ],
    onChanged: (value){ //get value when changed
        print("You selected $value");
    },
),
            TextField(
              
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(),
              
            ),
            
            ),
            const SizedBox(height: 16.0),
          ElevatedButton(onPressed:(){Text:('submitted');},
  child: const Text('Submit')),
    
    
  ],
);
   

  }

}