# holiday_expenses

#### I am writing this program to get confortable using GitHub. I have never designed a program before and have limited experience using Ruby, so I do not expect the end result to set the world on fire!

The *holiday_expenses* program is for a group of people on holiday where expenses are paid by one person and shared amongst the whole group (or subgroups).

The program keeps track of who paid what and can be queried to find out how much each person owes the others.

In a nutshell, the program will consist of 2 classes, `Person` and `Receipt`. An instance of the latter is created for each trip, and stores every expense as an array of hashes. Every time an expense is added, the relevant persons involved are updated, as is the total expenditure, which is to be an instance variable of a `Receipt` object.

Once the two classes above are written to an acceptable standard, the main logic will be developed to run the program in IRB; the user should be able to open an existing session, add expenses, query who owes who/what and save the session.

Any input/feedback is appreciated
