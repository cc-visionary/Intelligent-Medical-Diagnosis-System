/* https://github.com/sjbushra/Medical-Diagnosis-system-using-Prolog/blob/master/medical-diagnosis.pl */

ask(Patient, Question):-
    write(Patient), write(", do you"), write(Question), write("? "),
    read(N),
    ((N == yes ; N == y) -> assert(yes(Question)) ; assert(no(Question)), fail).

:- dynamic yes/1,no/1.	

verify(P,S) :-
    (yes(S) -> true ;
    (no(S) -> fail ; ask(P,S))).

undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.

symptom(Patient, headache):-
    verify(Patient, " experience headache (y/n) ?").

symptom(Patient, shortness_of_breath):-
    verify(Patient, " have shortness of breath (y/n) ?").

symptom(Patient, runny_nose):-
    verify(Patient, " have runny nose (y/n) ?").
    
symptom(Patient, chest_pain):-
    verify(Patient, " have chest pain (y/n) ?").
     
symptom(Patient, chest_discomfort):-
    verify(Patient, " have chest discomfort (y/n) ?").
    
symptom(Patient, wheezing_when_exhaling):-
    verify(Patient, " wheeze while exhaling (y/n) ?").
    
symptom(Patient, cough_with_phlegm):-
    verify(Patient, " have cough with phlegm (y/n) ?").
    
symptom(Patient, dry_cough):-
    verify(Patient, " have dry cough (y/n) ?").

symptom(Patient, coughing_up_blood):-
    verify(Patient, " cough up blood (y/n) ?").
    
symptom(Patient, not_mentally_alert):-
    verify(Patient, " experience being not mentally alert (y/n) ?").
    
symptom(Patient, fatigue):-
    verify(Patient, " have fatigue (y/n) ?").
    
symptom(Patient, fever):-
    verify(Patient, " have fever (y/n) ?").
    
symptom(Patient, nausea):-
    verify(Patient, " have nausea (y/n) ?").
    
symptom(Patient, loss_of_appetite):-
    verify(Patient, " have loss of appetite (y/n) ?").
    
symptom(Patient, anxiety):-
    verify(Patient, " have anxiety (y/n) ?").
    
symptom(Patient, bluish_lips):-
    verify(Patient, " have bluish lips (y/n) ?").
    
symptom(Patient, palpitations):-
    verify(Patient, " have palpitations (y/n) ?").
    
symptom(Patient, bone_pain):-
    verify(Patient, " have bone pain (y/n) ?").
    
symptom(Patient, low_blood_pressure):-
    verify(Patient, " have low blood pressure (y/n) ?").

symptom(Patient, trouble_sleeping_due_to_symptoms):-
    verify(Patient, " have trouble sleeping due to symptoms (y/n) ?").

symptom(Patient, rapid_weight_gain):-
    verify(Patient, " gain weight rapidly (y/n) ?").
 
symptom(Patient, unintentional_weight_loss):-
    verify(Patient, " lose weight unintentionally (y/n) ?").

hypothesis(Patient, asthma):-
    symptom(Patient, shortness_of_breath),
    symptom(Patient, chest_pain),
    symptom(Patient, wheezing_when_exhaling),
    symptom(Patient, cough_with_phlegm),
    symptom(Patient, trouble_sleeping_due_to_symptoms).

hypothesis(Patient, emphysema):-
    symptom(Patient, shortness_of_breath),
    symptom(Patient, not_mentally_alert).

hypothesis(Patient, bronchitis):-
    symptom(Patient, cough_with_phlegm),
    symptom(Patient, fatigue),
    symptom(Patient, shortness_of_breath),
    symptom(Patient, chest_discomfort),
    symptom(Patient, fever),
    symptom(Patient, runny_nose).
    
hypothesis(Patient, pneumonia):-
    symptom(Patient, chest_pain),
    symptom(Patient, cough_with_phlegm),
    symptom(Patient, fever),
    symptom(Patient, nausea),
    symptom(Patient, shortness_of_breath),
    symptom(Patient, fatigue).
    
hypothesis(Patient, tuberculosis):-
    symptom(Patient, dry_cough),
    symptom(Patient, coughing_up_blood),
    symptom(Patient, chest_pain),
    symptom(Patient, unintentional_weight_loss),
    symptom(Patient, fatigue),
    symptom(Patient, fever),
    symptom(Patient, loss_of_appetite).

hypothesis(Patient, pulmonary_edema):-
    symptom(Patient, shortness_of_breath),
    symptom(Patient, cough_with_phlegm),
    symptom(Patient, coughing_up_blood),
    symptom(Patient, anxiety),
    symptom(Patient, wheezing_when_exhaling),
    symptom(Patient, bluish_lips),
    symptom(Patient, palpitations).

hypothesis(Patient, lung_cancer):-
    symptom(Patient, dry_cough),
    symptom(Patient, coughing_up_blood),
    symptom(Patient, shortness_of_breath),
    symptom(Patient, chest_pain),
    symptom(Patient, unintentional_weight_loss),
    symptom(Patient, bone_pain),
    symptom(Patient, headache).

hypothesis(Patient, acute_respiratory_distress_syndrome):-
    symptom(Patient, shortness_of_breath),
    symptom(Patient, low_blood_pressure),
    symptom(Patient, fatigue).

hypothesis(Patient, interstitial_lung_disease):-
    symptom(Patient, shortness_of_breath),
    symptom(Patient, dry_cough).
    
hypothesis(Patient, pneumothorax):-
    symptom(Patient, chest_pain),
    symptom(Patient, shortness_of_breath).

start:-
    write("What is the name of the Patient? "),
    read(Patient),
    hypothesis(Patient, Disease),
    write(Patient), write(" probably has "), write(Disease), write("."), nl.


start :-
    write("Sorry, I don't seem to be able to"),nl,
    write("diagnose the disease."),nl.