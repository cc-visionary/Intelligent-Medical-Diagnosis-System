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