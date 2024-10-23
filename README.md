# Symptom-Based Disease Diagnosis System:
This project is an expert system built in Prolog that helps in diagnosing common diseases based on user-provided symptoms. By asking a series of yes/no questions, the system attempts to match symptoms to one of several predefined diseases. This is a simple implementation of a rule-based system used in medical diagnosis applications.

# Features:
Multiple Disease Diagnosis: The system can diagnose a range of diseases such as:
1. Cold
2. Flu
3. Ebola
4. Measles
5. Arthritis
# Interactive Symptom Queries: The system interacts with the user, asking questions about specific symptoms.
# Dynamic Response Handling: Based on user input (yes or no), the system confirms or rules out possible diseases.
# Undo Functionality: The system can undo all assertions (yes or no responses) after completing a diagnosis, allowing for a fresh diagnosis in a new session.
# Error Handling: If a disease hypothesis fails due to the absence of certain symptoms, the system moves to the next possible diagnosis without crashing.

# How It Works:
Start Diagnosis: The system begins by hypothesizing different diseases, starting with the most common.
Ask Questions: For each disease, the system asks the user questions about specific symptoms.
Match Disease: Based on the answers (yes or no), the system tries to match a disease to the symptoms.
Display Diagnosis: If a match is found, it outputs the diagnosis. If no disease matches, the system outputs 'unknown'.
Reset Responses: After each diagnosis, the system clears all responses to allow for another session.

# Usage Instructions:

# Clone the repository to your local machine:
bash
Copy code
git clone https://github.com/your-username/symptom-diagnosis-system.git
Open the Prolog file in your preferred Prolog environment.
Start the diagnosis by typing go. and follow the interactive prompts.

# Adding New Diseases:
You can extend the system by adding new disease hypotheses and their corresponding symptoms in the format of the existing disease rules. Simply add new rules in the same structure as:

prolog
Copy code
hypothesis(new_disease) :- new_disease, !.

new_disease :-
    verify(symptom1),
    verify(symptom2),
    verify(symptom3).
Example:
prolog
Copy code
?- go.
Does the patient have the following symptom: headache? yes
Does the patient have the following symptom: runny_nose? yes
Does the patient have the following symptom: sneezing? yes
Does the patient have the following symptom: sore_throat? yes
I believe you have: cold
Error Handling:
The system uses Prolog’s logical flow to handle errors by moving on to the next disease hypothesis if the symptoms don't match.
If no disease fits, the system outputs 'unknown' and resets itself for a new session.

# Key Takeaways:
Rule-Based System: Implemented a knowledge-based system that uses logical rules for decision-making.
User Interaction: Designed an interactive system that communicates dynamically with users.
Extendability: Easily extendable to include more diseases and symptoms.
Undo Functionality: Implemented the undo feature to reset all dynamic assertions for reuse in another session.

# License:
This project is licensed under the MIT License. Feel free to use, modify, and distribute this project.

# Contributing:
Contributions are welcome! Please feel free to submit a pull request or open an issue to suggest improvements or report bugs.
