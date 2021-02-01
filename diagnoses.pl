/* http://www.dailyfreecode.com/code/prolog-medical-diagnostic-system-3075.aspx */
/* https://github.com/sjbushra/Medical-Diagnosis-system-using-Prolog/blob/master/medical-diagnosis.pl */

symptom(name, indication).

symptom(patient, headache):-
    write("Have you experience headache?"),
    response(reply),
    reply = 'y'.

symptom(patient, shortness_of_breath):-
    write("Do you have shortness of breath?"),
    response(reply),
    reply = 'y'.

symptom(patient, runny_nose):-
    write("Do you have runny nose?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, chest_pain):-
    write("Do you have chest pain?"),
    response(reply),
    reply = 'y'.
     
symptom(patient, chest_discomfort):-
    write("Do you have chest discomfort?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, wheezing_when_exhaling):-
    write("Do you wheeze while exhaling?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, cough_with_phlegm):-
    write("Do you have cough with phlegm?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, dry_cough):-
    write("Do you have dry cough?"),
    response(reply),
    reply = 'y'.

symptom(patient, coughing_up_blood):-
    write("Do you cough with blood?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, not_mentally_alert):-
    write("Are you not mentally alert sometimes?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, fatigue):-
    write("Do you experience fatigue?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, fever):-
    write("Do you have fever?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, nausea):-
    write("Do you experience nausea?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, loss_of_appetite):-
    write("Do you sometimes have loss of appetite?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, anxiety):-
    write("Do you have anxiety?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, bluish_lips):-
    write("Do you have bluish lips?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, palpitations):-
    write("Do you have palpitations?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, bone_pain):-
    write("Do you have pain in the bone?"),
    response(reply),
    reply = 'y'.
    
symptom(patient, low_blood_pressure):-
    write("Do you have low blood pressure?"),
    response(reply),
    reply = 'y'.

symptom(patient, trouble_sleeping_due_to_symptoms):-
    write("Do you have trouble sleeping due to symptoms?"),
    response(reply),
    reply = 'y'.

symptom(patient, rapid_weight_gain):-
    write("Did you gain weight rapidly?"),
    response(reply),
    reply = 'y'.
 
symptom(patient, unintentional_weight_loss):-
    write("Did you lose weight unintentionally?"),
    response(reply),
    reply = 'y'.

hypothesis(patient, asthma):-
    symptom(patient, shortness_of_breath),
    symptom(patient, chest_pain),
    symptom(patient, wheezing_when_exhaling),
    symptom(patient, cough_with_phlegm),
    symptom(patient, trouble_sleeping_due_to_symptoms).

hypothesis(patient, emphysema):-
    symptom(patient, shortness_of_breath),
    symptom(patient, not_mentally_alert).

hypothesis(patient, bronchitis):-
    symptom(patient, cough_with_phlegm),
    symptom(patient, fatigue),
    symptom(patient, shortness_of_breath),
    symptom(patient, chest_discomfort),
    symptom(patient, fever),
    symptom(patient, runny_nose).
    
hypothesis(patient, pneumonia):-
    symptom(patient, chest_pain),
    symptom(patient, cough_with_phlegm),
    symptom(patient, fever),
    symptom(patient, nausea),
    symptom(patient, shortness_of_breath),
    symptom(patient, fatigue).
    
hypothesis(patient, tuberculosis):-
    symptom(patient, dry_cough),
    symptom(patient, coughing_up_blood),
    symptom(patient, chest_pain),
    symptom(patient, unintentional_weight_loss),
    symptom(patient, fatigue),
    symptom(patient, fever),
    symptom(patient, loss_of_appetite).

hypothesis(patient, pulmonary_edema):-
    symptom(patient, shortness_of_breath),
    symptom(patient, cough_with_phlegm),
    symptom(patient, coughing_up_blood),
    symptom(patient, anxiety),
    symptom(patient, wheezing_when_exhaling),
    symptom(patient, bluish_lips),
    symptom(patient, palpitations).

hypothesis(patient, lung_cancer):-
    symptom(patient, dry_cough),
    symptom(patient, coughing_up_blood),
    symptom(patient, shortness_of_breath),
    symptom(patient, chest_pain),
    symptom(patient, unintentional_weight_loss),
    symptom(patient, bone_pain),
    symptom(patient, headache).

hypothesis(patient, acute_respiratory_distress_syndrome):-
    symptom(patient, shortness_of_breath),
    symptom(patient, low_blood_pressure),
    symptom(patient, fatigue).

hypothesis(patient, interstitial_lung_disease):-
    symptom(patient, shortness_of_breath),
    symptom(patient, dry_cough).
    
hypothesis(patient, pneumothorax):-
    symptom(patient, chest_pain),
    symptom(patient, shortness_of_breath).

response(reply):-
    readchar(reply),
    write(reply), nl.

start:-
    write("What is the name of the patient? "),
    read(patient),
    hypothesis(patient, disease),
    write(patient, " probably has ", disease, "."), nl.