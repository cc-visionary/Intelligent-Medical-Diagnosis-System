/* http://www.dailyfreecode.com/code/prolog-medical-diagnostic-system-3075.aspx */

symptom(Name, Indication).
age(Name, Number).

/* 
  Symptoms
   shortness_of_breath
   runny_nose
   chest_pain
   chest_discomfort
   wheezing_when_exhaling
   cough_with_phlegm
   dry_cough
   not_mentally_alert 
   fatigue
   fever
   nausea
   loss_of_appetite
   rapid_weight_gain
   anxiety
   bluish_lips
   palpitations
   fast_heartbeat
   bone_pain
   low_blood_pressure
*/

symptom(Patient, shortness_of_breath):-
    write("Does ", Patient, " have shortness of breath?")
    response(Reply),
    Reply = 'y'.


symptom(Patient, runny_nose):-
    write("Does ", Patient, " have runny nose?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, chest_pain):-
    write("Does ", Patient, " have chest pain?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, chest_discomfort):-
    write("Does ", Patient, " have chest discomfort?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, wheezing_when_exhaling):-
    write("Does ", Patient, " wheeze while exhaling?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, cough_with_phlegm):-
    write("Does ", Patient, " have cough with phlegm?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, dry_cough):-
    write("Does ", Patient, " have dry cough?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, not_mentally_alert):-
    write("Is ", Patient, " not mentally alert sometimes?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, fatigue):-
    write("Does ", Patient, " experience fatigue?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, fever):-
    write("Does ", Patient, " have fever?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, nausea):-
    write("Does ", Patient, " experience nausea?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, loss_of_appetite):-
    write("Does ", Patient, " sometimes have loss of appetite?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, anxiety):-
    write("Does ", Patient, " have anxiety?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, bluish_lips):-
    write("Does ", Patient, " have bluish lips?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, palpitations):-
    write("Does ", Patient, " have palpitations?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, fast_heartbeat):-
    write("Does ", Patient, " have fast heartbeat?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, bone_pain):-
    write("Does ", Patient, " have pain in the bone?")
    response(Reply),
    Reply = 'y'.
    
symptom(Patient, low_blood_pressure):-
    write("Does ", Patient, " have low blood pressure?")
    response(Reply),
    Reply = 'y'.

hypothesis(Patient, asthma):-
    symptom(Patient, shortness_of_breath),
    symptom(Patient, chest_pain),
    symptom(Patient, wheezing_when_exhaling),
    symptom(Patient, coughing_with_phlegm),
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
    symptom(Patient, ).
    
hypothesis(Patient, tuberculosis):-
    symptom(Patient, ),
    symptom(Patient, ).

hypothesis(Patient, pulmonary_edema):-
    symptom(Patient, ),
    symptom(Patient, ).

hypothesis(Patient, lung_cancer):-
    symptom(Patient, ),
    symptom(Patient, ).

hypothesis(Patient, acute_respiratory_distress_syndrome):-
    symptom(Patient, ),
    symptom(Patient, ).

hypothesis(Patient, interstitial_lung_disease):-
    symptom(Patient, ),
    symptom(Patient, ).
    
hypothesis(Patient, pneumothorax):-
    symptom(Patient, ),
    symptom(Patient, ).

response(Reply):-
    readchar(Reply),
    write(Reply), nl.

start:-
    write("What is the name of the patient? "),
    readln(Patient),
    hypothesis(Patient, Disease),
    write(Patient, " probably has ", Disease, "."), nl.