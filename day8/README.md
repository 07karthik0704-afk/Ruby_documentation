Conditionals & Access Modifiers 

✅ if...else
Used to run code based on condition.
If condition true → if block runs, else → else block runs.

✅ Ternary Operator
Short form of if-else:
condition ? true_value : false_value

✅ elsif ladder
Used for multiple conditions.
Checks one by one; first matching block runs.

✅ unless
Opposite of if.
Runs when condition is FALSE.

✅ nil?
Checks if a value is nil.
Example: email=nil → email.nil? returns true.

✅ Access Modifiers (public / protected / private)
public: can call anywhere (default).
protected: can call inside class & subclasses only.
private: can call only inside same class (cannot call using object).

✅ Program Summary (Animal & Dog)
Animal has eat (public) and play (protected).
Dog overrides eat, calls sleep (private) and play (protected).
obj.eat works because eat is public.

✅ Output
Dog is eating..
Dog is sleeping
Dog is Playing
