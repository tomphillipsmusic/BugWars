#  Bug Wars

Welcome to Bug Wars! 

The app is broken into four distinct tabs:

1. Starship Search - Allows users to search for starship names
2. Age On Mars - Allows users to enter their Earth age and calculates what their Mars age is
3. Vehicles - Allows users to add vehicles to a shopping cart
4. People - Displays a list of names of Star Wars Characters

Unfortunately the app is experiencing a number of bugs and it is up to you as the developer to explore the codebase to identify why the bugs are happening and how to fix them.

# Debugging Tools & Strategies

1. Use print statements
2. Rubber Duck Programming
3. Setting breakpoints and using Xcode's debugger (LLDB)

## Resources 
Text Resource - Beginner - https://www.appypie.com/debugging-with-xcode-ios-how-to
Xcode Debugging Documentation - https://developer.apple.com/documentation/xcode/stepping-through-code-and-inspecting-variables-to-isolate-bugs
Video Resource - Basic Debugging - https://www.youtube.com/watch?v=qPWfOkHcKdU
Video Resource - Debugging in Xcode Tips & Tricks - https://www.youtube.com/watch?v=ZAqnJQn7xp4
LLDB Documentation - https://lldb.llvm.org

# Bugs

##1. Starship Searchbar Not Displaying Results

Steps to Reproduce:
1. Tap on the Starship Search tab
2. Tap on the search bar
3. Enter 'Death' into the search bar

Expected Result: 'Death Star' should be displayed in a list

Actual Result: Nothing is displayed  

##2. Age on Mars Calculator Displaying Incorrect Results 

Steps to Reproduce: 
1. Tap on the Age on Mars Tab
2. Enter the value '18' for the year stepper.
3. Enter the value '9' for the month stepper.

Expected Result: The calculated age on mars should be '9.97'

Actual Result: The calculated age on mars is '9.574468'

##3. Vehicle Cart Deleting Multiple Entries

Steps to Reproduce: 
1. Tap on the Vehicles Tab
2. Tap the 'Add to Cart' button on the Snowspeeder row to add 3 Snowspeeders to the Cart
3. Tap the cart button in the top trailing corner to open the cart sheet.
4. Tap the 'Remove' button by one of the snowspeeders.

Expected Result: One snowspeeder is removed from the cart

Actual Result: All three snowspeeders are removed from the cart

##4. No people are displayed in the People Tab

Steps to Reproduce:
1. Tap on the People tab

Expected Result: A list of Star Wars characters names are displayed

Acutal Result: No names are displayed
