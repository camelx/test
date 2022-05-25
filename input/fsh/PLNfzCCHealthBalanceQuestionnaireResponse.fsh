// Kwestionariusz bilansowy
Profile: PLNfzCCHealthBalanceQuestionnaireResponse
Id: PLNfzCCHealthBalanceQuestionnaireResponse
Parent: QuestionnaireResponse
Title: "Kwestionariusz bilansowy"
Description: "Kwestionariusz bilansowy"
* identifier 1..1 MS
* basedOn 0..0
* partOf 0..0
* questionnaire 0..1 MS 
* questionnaire only Canonical(Questionnaire)
* status 1..1 MS 
* subject 1..1 MS 
* subject only Reference(PLNfzCCPatient)
* encounter 0..1 MS
* encounter only Reference(Encounter)
* authored 1..1 MS
* author 1..1 MS 
* author only Reference(PLNfzCCPractitioner)
* source 0..0
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    healthStatusOverview 1..1 MS and
    familyMemberHistory 1..1 MS and
    history 1..1 MS and
    preventiveProgramParticipation 1..1 MS and
    mentalStateAssessment 1..1 MS and
    summary 1..1 MS
// Ocena ogólnego stanu zdrowia, aktywności fizycznej
* item[healthStatusOverview] ^short = "Ocena ogólnego stanu zdrowia, aktywności fizycznej"
* item[healthStatusOverview].linkId = "KBOS"
* item[healthStatusOverview].text = "Ocena ogólnego stanu zdrowia, aktywności fizycznej"
* item[healthStatusOverview].item ^slicing.discriminator.type = #value
* item[healthStatusOverview].item ^slicing.discriminator.path = "linkId"
* item[healthStatusOverview].item ^slicing.rules = #closed
* item[healthStatusOverview].item contains 
    SOP1 1..1 MS and
    SOP2 1..1 MS and
    SOP3 1..1 MS and
    SOP4 0..1 MS and
    SOP5 1..1 MS and
    SOP6 0..1 MS and
    SOP7 1..1 MS
//      Jak ocenia Pan/i swój aktualny stan zdrowia
* item[healthStatusOverview].item[SOP1] ^short = "Jak ocenia Pan/i swój aktualny stan zdrowia"
* item[healthStatusOverview].item[SOP1] insert QuestionnaireCodeAnswer(
    SOP1,Jak ocenia Pan/i swój aktualny stan zdrowia, Skala1)
//      Jak ocenia Pan/i swoją sprawność fizyczną?
* item[healthStatusOverview].item[SOP2] ^short = "Jak ocenia Pan/i swoją sprawność fizyczną?"
* item[healthStatusOverview].item[SOP2] insert QuestionnaireCodeAnswer(
    SOP2,Jak ocenia Pan/i swoją sprawność fizyczną?,Skala1)
//      Ile razy w tygodniu uprawia Pan/i umiarkowaną aktywność fizyczną?
* item[healthStatusOverview].item[SOP3] ^short = "Ile razy w tygodniu uprawia Pan/i umiarkowaną aktywność fizyczną?"
* item[healthStatusOverview].item[SOP3] insert QuestionnaireCodeAnswer(
    SOP3,Ile razy w tygodniu uprawia Pan/i umiarkowaną aktywność fizyczną?,Skala2)
//      Łączny czas (min) tygodniowo (umiarkowana aktywność fizyczna)
* item[healthStatusOverview].item[SOP4] ^short = "Łączny czas (min) tygodniowo (umiarkowana aktywność fizyczna)"
* item[healthStatusOverview].item[SOP4] insert QuestionnaireCodeAnswer(
    SOP4,Łączny czas min tygodniowo umiarkowana aktywność fizyczna,Skala20a)
//      Ile razy w tygodniu uprawia Pan/i intensywną aktywność fizyczną?
* item[healthStatusOverview].item[SOP5] ^short = "Ile razy w tygodniu uprawia Pan/i intensywną aktywność fizyczną?"
* item[healthStatusOverview].item[SOP5] insert QuestionnaireCodeAnswer(
    SOP5,Ile razy w tygodniu uprawia Pan/i intensywną aktywność fizyczną?,Skala2)
//      Łączny czas (min) tygodniowo (intensywna aktywność fizyczna)
* item[healthStatusOverview].item[SOP6] ^short = "Łączny czas (min) tygodniowo (intensywna aktywność fizyczna)"
* item[healthStatusOverview].item[SOP6] insert QuestionnaireCodeAnswer(
    SOP6,Łączny czas min tygodniowo intensywna aktywność fizyczna,Skala20b)
//      Ocena stopnia aktywności fizycznej
* item[healthStatusOverview].item[SOP7] ^short = "Ocena stopnia aktywności fizycznej"
* item[healthStatusOverview].item[SOP7] insert QuestionnaireCodeAnswer(
    SOP7,Ocena stopnia aktywności fizycznej,OcenaAktywnosciFizycznej)
// Wywiadz rodzinny
* item[familyMemberHistory] ^short = "Wywiad rodzinny"
* item[familyMemberHistory].linkId = "KBWR"
* item[familyMemberHistory].text = "Wywiad rodzinny"
* item[familyMemberHistory].item ^slicing.discriminator.type = #value
* item[familyMemberHistory].item ^slicing.discriminator.path = "linkId"
* item[familyMemberHistory].item ^slicing.rules = #closed
* item[familyMemberHistory].item contains 
    CCRPS 0..* MS and 
    CDCR 0..* MS
//      Choroba członka rodziny pierwszego stopnia
* item[familyMemberHistory].item[CCRPS] ^short = "Choroba członka rodziny pierwszego stopnia"
* item[familyMemberHistory].item[CCRPS].item ^slicing.discriminator.type = #value
* item[familyMemberHistory].item[CCRPS].item ^slicing.discriminator.path = "linkId"
* item[familyMemberHistory].item[CCRPS].item ^slicing.rules = #closed
* item[familyMemberHistory].item[CCRPS].item contains 
    CCRPSR 1..1 MS and 
    CCRPSCZ 1..1 MS and 
    CCRPSRO 1..1 MS
* item[familyMemberHistory].item[CCRPS].item[CCRPSR] ^short = "Rodzaj członka rodziny pierwszego stopnia"
* item[familyMemberHistory].item[CCRPS].item[CCRPSR] insert QuestionnaireCodeAnswer(
    CCRPSR,Rodzaj członka rodziny pierwszego stopnia,StopienPokrewienstwa)
* item[familyMemberHistory].item[CCRPS].item[CCRPSCZ] ^short = "Czy członek rodziny pierwszego stopnia żyje?"
* item[familyMemberHistory].item[CCRPS].item[CCRPSCZ] insert QuestionnaireBooleanAnswer(
    CCRPSCZ,Czy członek rodziny pierwszego stopnia żyje?)
* item[familyMemberHistory].item[CCRPS].item[CCRPSRO] ^short = "Rozpoznanie choroby członka rodziny pierwszego stopnia"
* item[familyMemberHistory].item[CCRPS].item[CCRPSRO] insert QuestionnaireCodeAnswer(
    CCRPSRO,Rozpoznanie choroby członka rodziny pierwszego stopnia,ICD-10Codes)
//      Choroba dalszego członka rodziny
* item[familyMemberHistory].item[CDCR] ^short = "Choroba dalszego cłonka rodziny"
* item[familyMemberHistory].item[CDCR].item ^slicing.discriminator.type = #value
* item[familyMemberHistory].item[CDCR].item ^slicing.discriminator.path = "linkId"
* item[familyMemberHistory].item[CDCR].item ^slicing.rules = #closed
* item[familyMemberHistory].item[CDCR].item contains CDCRR 1..1 MS and CDCRRO 1..1 MS
* item[familyMemberHistory].item[CDCR].item[CDCRR] ^short = "Rodzaj dalszego członka rodzin"
* item[familyMemberHistory].item[CDCR].item[CDCRR] insert QuestionnaireCodeAnswer(
    CCRPSR,Rodzaj dalszego członka rodziny,StopienDalszegoPokrewienstwa)
* item[familyMemberHistory].item[CDCR].item[CDCRRO] ^short = "Rozpoznanie dalszego członka rodziny"
* item[familyMemberHistory].item[CDCR].item[CDCRRO] insert QuestionnaireCodeAnswer(
    CCRPSRO,Rozpoznanie dalszego członka rodziny,ICD-10Codes)
//Wywiad/badanie przedmiotowe
* item[history] ^short = "Wywiad/badanie przedmiotowe"
* item[history].linkId = "KBBP"
* item[history].text = "Wywiad/badanie przedmiotowe"
* item[history].item ^slicing.discriminator.type = #value
* item[history].item ^slicing.discriminator.path = "linkId"
* item[history].item ^slicing.rules = #closed
* item[history].item contains 
    disorder 1..* MS and
    tobaccoUse 1..1 MS and
    alcoholUse 1..1 MS and
    otherNonmedicalDrugUse 1..1 MS and
    otherThenBaseCareTreatment 1..1 MS and
    medicationUse 1..1 MS and
    immunization 1..1 MS and
    condition 1..* MS 
//      Historia aktualnych lub przebytych chorób pacjenta
* item[history].item[disorder] ^short = "Historia aktualnych lub przebytych chorób pacjenta"
* item[history].item[disorder].linkId = "KBBPAPC"
* item[history].item[disorder].text = "Historia aktualnych lub przebytych chorób pacjenta"
* item[history].item[disorder].item ^slicing.discriminator.type = #value
* item[history].item[disorder].item ^slicing.discriminator.path = "linkId"
* item[history].item[disorder].item ^slicing.rules = #closed
* item[history].item[disorder].item contains 
    CAPR 1..1 MS and
    CAPA 1..1 MS and
    CAPO 0..1 MS
            //Rozpoznanie choroby
* item[history].item[disorder].item[CAPR] ^short = "Rozpoznanie choroby"
* item[history].item[disorder].item[CAPR] insert QuestionnaireCodeAnswer(
    CAPR,Rozpoznanie choroby,ICD-10Codes)
            //Choroba aktualna/przebyta?
* item[history].item[disorder].item[CAPA] ^short = "Choroba aktualne/przebyte?"
* item[history].item[disorder].item[CAPA] insert QuestionnaireCodeAnswer(
    CAPA,Choroba aktualna/przeebyta?,AktualnaLubPrzebyta)
            // Opis rozpoznania choroby
* item[history].item[disorder].item[CAPO] ^short = "Opis rozpoznania choroby"
* item[history].item[disorder].item[CAPO] insert QuestionnaireStringAnswer(
    CAPO,Opis rozpoznania choroby)
//      Używki: palenie tytoniu
* item[history].item[tobaccoUse] ^short = "Używki: palenie tytoniu"
* item[history].item[tobaccoUse].linkId = "KBBPUPT"
* item[history].item[tobaccoUse].text = "Używki: palenie tytoniu"
* item[history].item[tobaccoUse].item ^slicing.discriminator.type = #value
* item[history].item[tobaccoUse].item ^slicing.discriminator.path = "linkId"
* item[history].item[tobaccoUse].item ^slicing.rules = #closed
* item[history].item[tobaccoUse].item contains
    PTA 1..1 MS and
    PTIL 0..1 MS and
    PTKPP 0..1 MS and
    PTNPO 0..1 MS and
    PTP 0..1 MS and
    PTWTF 0..1 MS
//          Palenie tytoniu (aktualnie)
* item[history].item[tobaccoUse].item[PTA] ^short = "Palenie tytoniu (aktualnie)"
* item[history].item[tobaccoUse].item[PTA] insert QuestionnaireBooleanAnswer(
    PTA,Palenie tytoniu aktualnie)
//          Palenie tytoniu (od ilu lat)
* item[history].item[tobaccoUse].item[PTIL] ^short = "Palenie tytoniu (od ilu lat)"
* item[history].item[tobaccoUse].item[PTIL] insert QuestionnaireIntegerAnswer(
    PTIL,Palenie tytoniu od ilu lat)
//          Czy kiedykolwiek palił/a Pan/i papierosy?
* item[history].item[tobaccoUse].item[PTKPP] ^short = "Czy kiedykolwiek palił/a Pan/i papierosy?"
* item[history].item[tobaccoUse].item[PTKPP] insert QuestionnaireBooleanAnswer(
    PTKPP,Czy kiedykolwiek palił/a Pan/i papierosy)
//          Nie palę od
* item[history].item[tobaccoUse].item[PTNPO] ^short = "Nie palę od"
* item[history].item[tobaccoUse].item[PTNPO] insert QuestionnaireIntegerAnswer(
    PTNPO, Nie palę od)
//          Paliłam/em
* item[history].item[tobaccoUse].item[PTP] ^short = "Paliłam/em"
* item[history].item[tobaccoUse].item[PTP] insert QuestionnaireIntegerAnswer(
    PTP,Paliłam/em)
//          Wynik testu Fagerstroma
* item[history].item[tobaccoUse].item[PTWTF] ^short = "Wynik testu Fagerstroma"
* item[history].item[tobaccoUse].item[PTWTF] insert QuestionnaireIntegerAnswer(
    PTWTF,Wynik testu Fagerstroma)
//      Używki: picie alkoholu       
* item[history].item[alcoholUse] ^short = "Używki: picie alkoholu"
* item[history].item[alcoholUse].linkId = "KBBPUPA"
* item[history].item[alcoholUse].text = "Używki: picie alkoholu"
* item[history].item[alcoholUse].item ^slicing.discriminator.type = #value
* item[history].item[alcoholUse].item ^slicing.discriminator.path = "linkId"
* item[history].item[alcoholUse].item ^slicing.rules = #closed
* item[history].item[alcoholUse].item contains
    PACPNA 1..1 MS and
    PAIPA 0..1 MS and
    PA6WPA 0..1 MS 
//          Jak często pije Pan/i napoje zawierające alkohol?
* item[history].item[alcoholUse].item[PACPNA] ^short = "Jak często pije Pan/i napoje zawierające alkohol?"
* item[history].item[alcoholUse].item[PACPNA] insert QuestionnaireCodeAnswer(
    PAPCNA,Jak często pije Pan/i napoje zawierające alkohol,Skala3)
//          Ile porcji alkoholu wypija Pan/i przeciętnie w okresie kiedy Pan/i pije alkohol? 
* item[history].item[alcoholUse].item[PAIPA] ^short = "Ile porcji alkoholu wypija Pan/i przeciętnie w okresie kiedy Pan/i pije alkohol?"
* item[history].item[alcoholUse].item[PAIPA] insert QuestionnaireCodeAnswer(
    PAIPA,Ile porcji alkoholu wypija Pan/i przeciętnie w okresie kiedy Pan/i pije alkohol,Skala4)
//          Jak często wypija Pan/i sześć albo więcej porcji alkoholu przy jednej okazji?
* item[history].item[alcoholUse].item[PA6WPA] ^short = "Jak często wypija Pan/i sześć albo więcej porcji alkoholu przy jednej okazji?"
* item[history].item[alcoholUse].item[PA6WPA] insert QuestionnaireCodeAnswer(
    PA6WPA,Jak często wypija Pan/i sześć albo więcej porcji alkoholu przy jednej okazji,Skala5)
//      Uzywki: inne
* item[history].item[otherNonmedicalDrugUse] ^short = "Uzywki: inne"
* item[history].item[otherNonmedicalDrugUse].linkId = "KBBPUIN"
* item[history].item[otherNonmedicalDrugUse].text = "Uzywki: inne"
//          Inna uzywka
* item[history].item[otherNonmedicalDrugUse].item 0..*
* item[history].item[otherNonmedicalDrugUse].item insert QuestionnaireStringAnswer(IUN, Nazwa innej używki)
//      Leczenie poza POZ
* item[history].item[otherThenBaseCareTreatment] ^short = "Leczenie poza POZ"
* item[history].item[otherThenBaseCareTreatment].linkId = "KBBPLPP"
* item[history].item[otherThenBaseCareTreatment].text = "Leczenie poza POZ"
* item[history].item[otherThenBaseCareTreatment].item ^slicing.discriminator.type = #value
* item[history].item[otherThenBaseCareTreatment].item ^slicing.discriminator.path = "linkId"
* item[history].item[otherThenBaseCareTreatment].item ^slicing.rules = #closed
* item[history].item[otherThenBaseCareTreatment].item contains
    LPPIWD 1..1 MS and
    LPPIWDO 0..1 MS and
    LPPH 1..1 MS and
    LPPHO 0..1 MS and
    LPPO 1..1 MS and
    LPPOO 0..1 MS and
    LPPPS 0..* MS
//          Czy przebył/a Pan/i inwazyjne zabiegi diagnostyczne?
* item[history].item[otherThenBaseCareTreatment].item[LPPIWD] ^short = "Czy przebył/a Pan/i inwazyjne zabiegi diagnostyczne?"
* item[history].item[otherThenBaseCareTreatment].item[LPPIWD] insert QuestionnaireBooleanAnswer(
    LPPIWD,Czy przebył/a Pan/i inwazyjne zabiegi diagnostyczne?)
//          Czy przebył/a Pan/i inwazyjne zabiegi diagnostyczne? (opis)
* item[history].item[otherThenBaseCareTreatment].item[LPPIWDO] ^short = "Czy przebył/a Pan/i inwazyjne zabiegi diagnostyczne? (opis)"
* item[history].item[otherThenBaseCareTreatment].item[LPPIWDO] insert QuestionnaireStringAnswer(
    LPPIWDO,Czy przebył/a Pan/i inwazyjne zabiegi diagnostyczne? opis)
//          Czy była Pan/Pani hospitalizowana/y (nie dotyczy operacji)
* item[history].item[otherThenBaseCareTreatment].item[LPPH] ^short = "Czy była Pan/Pani hospitalizowana/y (nie dotyczy operacji)"
* item[history].item[otherThenBaseCareTreatment].item[LPPH] insert QuestionnaireBooleanAnswer(
    LPPH,Czy była Pan/Pani hospitalizowana/y nie dotyczy operacji)
//          Czy była Pan/Pani hospitalizowana/y (nie dotyczy operacji)? (opis)
* item[history].item[otherThenBaseCareTreatment].item[LPPHO] ^short = "Czy była Pan/Pani hospitalizowana/y (nie dotyczy operacji)? (opis)"
* item[history].item[otherThenBaseCareTreatment].item[LPPHO] insert QuestionnaireStringAnswer(
    LPPHO,Czy była Pan/Pani hospitalizowana/y nie dotyczy operacji? opis)
//          Czy była Pani/Pan operowana/y?
* item[history].item[otherThenBaseCareTreatment].item[LPPO] ^short = "Czy była Pani/Pan operowana/y?"
* item[history].item[otherThenBaseCareTreatment].item[LPPO] insert QuestionnaireBooleanAnswer(
    LPPO,Czy była Pani/Pan operowana/y?)
//          Czy była Pani/Pan operowana/y? (opis)
* item[history].item[otherThenBaseCareTreatment].item[LPPOO] ^short = "Czy była Pani/Pan operowana/y? (opis)"
* item[history].item[otherThenBaseCareTreatment].item[LPPOO] insert QuestionnaireStringAnswer(
    LPPOO,Czy była Pani/Pan operowana/y? opis)
//          Opieka poradni specjalistycznej
* item[history].item[otherThenBaseCareTreatment].item[LPPPS] ^short = "Opieka poradni specjalistycznej"
* item[history].item[otherThenBaseCareTreatment].item[LPPPS] insert QuestionnaireCodeAnswer(
    LPPPS,Opieka poradni specjalistycznej,TypPoradni)
//      Farmakoterapia
* item[history].item[medicationUse] ^short = "Farmakoterapia"
* item[history].item[medicationUse].linkId = "KBBPFTR"
* item[history].item[medicationUse].text = "Farmakoterapia"
* item[history].item[medicationUse].item ^slicing.discriminator.type = #value
* item[history].item[medicationUse].item ^slicing.discriminator.path = "linkId"
* item[history].item[medicationUse].item ^slicing.rules = #closed
* item[history].item[medicationUse].item contains
    FTPL 1..1 MS and
    FTUL 1..1 MS and
    FTULO 0..1 MS and
    FTLEK 0..* MS
//          Czy przyjmuje Pan/i leki na stałe?
* item[history].item[medicationUse].item[FTPL] ^short = "Czy przyjmuje Pan/i leki na stałe?"
* item[history].item[medicationUse].item[FTPL] insert QuestionnaireBooleanAnswer(FTPL,Czy przyjmuje Pan/i leki na stałe?)
//          Czy jest Pan/i uczulony/a na jakikolwiek lek?
* item[history].item[medicationUse].item[FTUL] ^short = "Czy jest Pan/i uczulony/a na jakikolwiek lek?"
* item[history].item[medicationUse].item[FTUL] insert QuestionnaireBooleanAnswer(FTUL,Czy jest Pan/i uczulony/a na jakikolwiek lek?)
//          Czy jest Pan/i uczulony/a na jakikolwiek lek? (jaki?)
* item[history].item[medicationUse].item[FTULO] ^short = "Czy jest Pan/i uczulony/a na jakikolwiek lek? (jaki?)"
* item[history].item[medicationUse].item[FTULO] insert QuestionnaireStringAnswer(
    FTULO,Czy jest Pan/i uczulony/a na jakikolwiek lek? jaki?)
//          Przyjmowany lek
* item[history].item[medicationUse].item[FTLEK] ^short = "Przyjmowany lek"
* item[history].item[medicationUse].item[FTLEK].linkId = "FTLEK"
* item[history].item[medicationUse].item[FTLEK].text = "Przyjmowany lek"
* item[history].item[medicationUse].item[FTLEK].item ^slicing.discriminator.type = #value
* item[history].item[medicationUse].item[FTLEK].item ^slicing.discriminator.path = "linkId"
* item[history].item[medicationUse].item[FTLEK].item ^slicing.rules = #closed
* item[history].item[medicationUse].item[FTLEK].item contains 
    FTLEKEAN 0..1 MS and
    FTLEKNL 1..1 MS and
    FTLEKDL 1..1 MS and
    FTLEKILD 1..1 MS and
    FTLEKOK 1..1 MS
//              Kod EAN leku
* item[history].item[medicationUse].item[FTLEK].item[FTLEKEAN] ^short = "Kod EAN leku"
* item[history].item[medicationUse].item[FTLEK].item[FTLEKEAN] insert QuestionnaireStringAnswer(
    FTLEKEAN,Kod EAN leku)
//              Nazwa leku
* item[history].item[medicationUse].item[FTLEK].item[FTLEKNL] ^short = "Nazwa leku"
* item[history].item[medicationUse].item[FTLEK].item[FTLEKNL] insert QuestionnaireStringAnswer(
    FTLEKNL,Nazwa leku)
//              Dawka leku
* item[history].item[medicationUse].item[FTLEK].item[FTLEKDL] ^short = "Dawka leku"
* item[history].item[medicationUse].item[FTLEK].item[FTLEKDL] insert QuestionnaireStringAnswer(
    FTLEKDL,Dawka leku)
//              Dawkowanie leku (ile razy dziennie)
* item[history].item[medicationUse].item[FTLEK].item[FTLEKILD] ^short = "Dawkowanie leku (ile razy dziennie)"
* item[history].item[medicationUse].item[FTLEK].item[FTLEKILD] insert QuestionnaireStringAnswer(
    FTLEKILD,Dawkowanie lkeu ile razy dziennie)
//              Od kiedy
* item[history].item[medicationUse].item[FTLEK].item[FTLEKOK] ^short = "Od kiedy"
* item[history].item[medicationUse].item[FTLEK].item[FTLEKOK] insert QuestionnaireStringAnswer(
    FTLEKOK,Od kiedy)
//      Inne (informacje o szczepieniach)
* item[history].item[immunization] ^short = "Inne (informacje o szczepieniach)"
* item[history].item[immunization].linkId = "KBBPIIS"
* item[history].item[immunization].text = "Inne (informacje o szczepieniach)"
* item[history].item[immunization].item ^slicing.discriminator.type = #value
* item[history].item[immunization].item ^slicing.discriminator.path = "linkId"
* item[history].item[immunization].item ^slicing.rules = #closed
* item[history].item[immunization].item contains
    INSPG 1..1 MS and
    INSPGR 0..1 MS and
    INSPWB 1..1 MS and
    INSPWBR 0..1 MS
//          Czy pacjent/ka miał/a wykonywane szczepienie przeciwko grypie?
* item[history].item[immunization].item[INSPG] ^short = "Czy pacjent/ka miał/a wykonywane szczepienie przeciwko grypie?"
* item[history].item[immunization].item[INSPG] insert QuestionnaireBooleanAnswer(
    INSPG,Czy pacjent/ka miał/a wykonywane szczepienie przeciwko grypie?)
//          Czy pacjent/ka miał/a wykonywane szczepienie przeciwko grypie? (kiedy - rok?)
* item[history].item[immunization].item[INSPGR] ^short = "Czy pacjent/ka miał/a wykonywane szczepienie przeciwko grypie? (kiedy - rok?)"
* item[history].item[immunization].item[INSPGR] insert QuestionnaireIntegerAnswer(
    INSPG,Czy pacjent/ka miał/a wykonywane szczepienie przeciwko grypie? kiedy - rok?)
//          Czy kiedykolwiek pacjent/ka miał/a wykonywanie szczepienie przeciwko WZW typu B?
* item[history].item[immunization].item[INSPWB] ^short = "Czy kiedykolwiek pacjent/ka miał/a wykonywanie szczepienie przeciwko WZW typu B?"
* item[history].item[immunization].item[INSPWB] insert QuestionnaireBooleanAnswer(
    INSPWB,Czy kiedykolwiek pacjent/ka miał/a wykonywanie szczepienie przeciwko WZE typu B?)
//          Czy kiedykolwiek pacjent/ka miał/a wykonywanie szczepienie przeciwko WZE typu B? (kiedy - rok?)
* item[history].item[immunization].item[INSPWBR] ^short = "Czy kiedykolwiek pacjent/ka miał/a wykonywanie szczepienie przeciwko WZE typu B? (kiedy - rok?)"
* item[history].item[immunization].item[INSPWBR] insert QuestionnaireBooleanAnswer(
    INSPWBR,Czy kiedykolwiek pacjent/ka miał/a wykonywanie szczepienie przeciwko WZE typu B? kiedy - rok?)
//      Zgłaszane dolegliwości
* item[history].item[condition] ^short = "Zgłaszane dolegliwości"
* item[history].item[condition].linkId = "KBBPZDL"
* item[history].item[condition].text = "Zgłaszane dolegliwości"
* item[history].item[condition].item ^slicing.discriminator.type = #value
* item[history].item[condition].item ^slicing.discriminator.path = "linkId"
* item[history].item[condition].item ^slicing.rules = #closed
* item[history].item[condition].item contains
    ZDZO 1..1 MS and
    ZDZD 0..* MS
//          Czy w ostatnim czasie zauważyła Pani/Pan któreś z objawów z listy?
* item[history].item[condition].item[ZDZO] ^short = "Czy w ostatnim czasie zauważyła Pani/Pan któreś z objawów z listy?"
* item[history].item[condition].item[ZDZO] insert QuestionnaireBooleanAnswer(
    ZDZO, Czy w ostatnim czasie zauważyła Pani/Pan któreś z objawów z listy?)
//          Zgłaszana dolegliwość
* item[history].item[condition].item[ZDZD] ^short = "Zgłaszana dolegliwość"
* item[history].item[condition].item[ZDZD] insert QuestionnaireCodeAnswer(
    ZDZD,Zgłaszana dolegliwość,Dolegliwosc)

//Uczestnictwo w programach profilaktycznych/przesiewowych
* item[preventiveProgramParticipation] ^short = "Uczestnictwo w programach profilaktycznych/przesiewowych"
* item[preventiveProgramParticipation].linkId = "KBUP"
* item[preventiveProgramParticipation].text = "Uczestnictwo w programach profilaktycznych/przesiewowych"
* item[preventiveProgramParticipation].item ^slicing.discriminator.type = #value
* item[preventiveProgramParticipation].item ^slicing.discriminator.path = "linkId"
* item[preventiveProgramParticipation].item ^slicing.rules = #closed
* item[preventiveProgramParticipation].item contains
    programUse 0..* MS and
    programQualification 5..* MS
//      Korzystanie z programu profilaktycznego
* item[preventiveProgramParticipation].item[programUse] ^short = "Korzystanie z programu profilaktycznego"
* item[preventiveProgramParticipation].item[programUse].linkId = "PPKO"
* item[preventiveProgramParticipation].item[programUse].text = "Korzystanie z programu profilaktycznego"
* item[preventiveProgramParticipation].item[programUse].item ^slicing.discriminator.type = #value
* item[preventiveProgramParticipation].item[programUse].item ^slicing.discriminator.path = "linkId"
* item[preventiveProgramParticipation].item[programUse].item ^slicing.rules = #closed
* item[preventiveProgramParticipation].item[programUse].item contains
    PPDOB 0..1 MS and
    PPWCN 1..1 MS and
    PPZAL 0..1 MS
//          Data ostatniego badania
* item[preventiveProgramParticipation].item[programUse].item[PPDOB] ^short = "Data ostatniego badania"
* item[preventiveProgramParticipation].item[programUse].item[PPDOB] insert QuestionnaireDateAnswer(PPDOB,Data ostatniego badania)
//          Wynik (czy w normie)
* item[preventiveProgramParticipation].item[programUse].item[PPWCN] ^short = "Wynik (czy w normie)"
* item[preventiveProgramParticipation].item[programUse].item[PPWCN] insert QuestionnaireBooleanAnswer(PPWCN,Wynik czy w normie)
//          Zalecenia
* item[preventiveProgramParticipation].item[programUse].item[PPZAL] ^short = "Zalecenia"
* item[preventiveProgramParticipation].item[programUse].item[PPZAL] insert QuestionnaireStringAnswer(PPZAL,Zalecenia)
//      Kwalifikacja do programu profilaktycznego
* item[preventiveProgramParticipation].item[programQualification] ^short = "Kwalifikacja do programu profilaktycznego"
* item[preventiveProgramParticipation].item[programQualification].linkId = "PPKW"
* item[preventiveProgramParticipation].item[programQualification].text = "Kwalifikacja do programu profilaktycznego"
* item[preventiveProgramParticipation].item[programQualification].item ^slicing.discriminator.type = #value
* item[preventiveProgramParticipation].item[programQualification].item ^slicing.discriminator.path = "linkId"
* item[preventiveProgramParticipation].item[programQualification].item ^slicing.rules = #closed
* item[preventiveProgramParticipation].item[programQualification].item contains
    PPNP 1..1 MS and
    PPKWW 1..1 MS 
//          Nazwa programu profilaktycznego
* item[preventiveProgramParticipation].item[programQualification].item[PPNP] ^short = "Nazwa programu profilaktycznego"
* item[preventiveProgramParticipation].item[programQualification].item[PPNP] insert QuestionnaireCodeAnswer(
    PPNP,Nazwa programu profilaktycznego,ProgramProfilaktyczny)
//          Czy zakwalifikowany/a do progrmu profilaktycznego?
* item[preventiveProgramParticipation].item[programQualification].item[PPKWW] ^short = "Czy zakwalifikowany/a do progrmu profilaktycznego?"
* item[preventiveProgramParticipation].item[programQualification].item[PPKWW] insert QuestionnaireBooleanAnswer(
    PPNP,Czy zakwalifikowany/a do progrmu profilaktycznego?)
// Ocena stanu psychicznego
* item[mentalStateAssessment] ^short = "Ocena stanu psychicznego"
* item[mentalStateAssessment].linkId = "KBOP"
* item[mentalStateAssessment].text = "Ocena stanu psychicznego"
* item[mentalStateAssessment].item ^slicing.discriminator.type = #value
* item[mentalStateAssessment].item ^slicing.discriminator.path = "linkId"
* item[mentalStateAssessment].item ^slicing.rules = #closed
* item[mentalStateAssessment].item contains SPPDZ 1..1 MS and
    SPMZP 1..1 MS and
    SPCHP 1..1 MS and
    SPWOS 1..1 MS
//      Czy w ciągu ostatniego miesiąca czuł/a się Pan/i przygnębiony/a, depresyjny/a lub zrozpaczony/a?
* item[mentalStateAssessment].item[SPPDZ] ^short = "Czy w ciągu ostatniego miesiąca czuł/a się Pan/i przygnębiony/a, depresyjny/a lub zrozpaczony/a?"
* item[mentalStateAssessment].item[SPPDZ] insert QuestionnaireBooleanAnswer(
    SPPDZ,Czy w ciągu ostatniego miesiąca czuł/a się Pan/i przygnębiony/a depresyjny/a lub zrozpaczony/a?)
//      Czy w ciągu ostatniego miesiąca był/a Pan/i mniej zainteresowany/a większością spraw lub odczuwał/a mniejszą przyjemność z wykonywanych zajęć?
* item[mentalStateAssessment].item[SPMZP] ^short = "Czy w ciągu ostatniego miesiąca był/a Pan/i mniej zainteresowany/a większością spraw lub odczuwał/a mniejszą przyjemność z wykonywanych zajęć?"
* item[mentalStateAssessment].item[SPMZP] insert QuestionnaireBooleanAnswer(
    SPMZP,Czy w ciągu ostatniego miesiąca był/a Pan/i mniej zainteresowany/a większością spraw lub odczuwał/a mniejszą przyjemność z wykonywanych zajęć?)
//      Czy jest coś, w czym chciał(a)by Pan/i, by Pani/u pomóc?
* item[mentalStateAssessment].item[SPCHP] ^short = "Czy jest coś, w czym chciał(a)by Pan/i, by Pani/u pomóc?"
* item[mentalStateAssessment].item[SPCHP] insert QuestionnaireBooleanAnswer(
    SPCHP,Czy jest coś w czym chciał/a by Pan/i by Pani/u pomóc?)
//      Wynik oceny samopoczucia psychicznego
* item[mentalStateAssessment].item[SPWOS] ^short = "Wynik oceny samopoczucia psychicznego"
* item[mentalStateAssessment].item[SPWOS] insert QuestionnaireCodeAnswer(
    SPWOS,Wynik oceny samopoczucia psychicznego,OcenaSamopoczuciaPsychicznego)
// Podsumowanie bilansu
* item[summary] ^short = "Podsumowanie bilansu"
* item[summary].linkId = "KBPB"
* item[summary].text = "Podsumowanie bilansu"
* item[summary].item ^slicing.discriminator.type = #value
* item[summary].item ^slicing.discriminator.path = "linkId"
* item[summary].item ^slicing.rules = #closed
* item[summary].item contains
    followUpVisits 1..1 MS 
//       Dalsze wizyty
* item[summary].item[followUpVisits] ^short = "Dalsze wizyty"
* item[summary].item[followUpVisits].linkId = "KBPBDW"
* item[summary].item[followUpVisits].text = "Dalsze wizyty"
* item[summary].item[followUpVisits].item ^slicing.discriminator.type = #value
* item[summary].item[followUpVisits].item ^slicing.discriminator.path = "linkId"
* item[summary].item[followUpVisits].item ^slicing.rules = #closed
* item[summary].item[followUpVisits].item contains
    DWWE 1..1 MS and
    DWWEZ 0..1 MS and
    DWWSD 1..1 MS and
    DWWSP 1..1 MS
//              Kwalifikacja pacjenta do wizyty edukacyjnej
* item[summary].item[followUpVisits].item[DWWE] ^short = "Kwalifikacja pacjenta do wizyty edukacyjnej"
* item[summary].item[followUpVisits].item[DWWE] insert QuestionnaireBooleanAnswer(
    DWWE,Kwalifikacja pacjenta do wizyty edukacyjnej)
//              Kwalifikacja pacjenta do wizyty edukacyjnej? (zakres tematyczny)
* item[summary].item[followUpVisits].item[DWWEZ] ^short = "Kwalifikacja pacjenta do wizyty edukacyjnej? (zakres tematyczny)"
* item[summary].item[followUpVisits].item[DWWEZ] insert QuestionnaireStringAnswer(
    DWWEZ,Kwalifikacja pacjenta do wizyty edukacyjnej? zakres tematyczny)
//              Kwalifikacja pacjenta do wizyt specjalistycznych dietetycznych
* item[summary].item[followUpVisits].item[DWWSD] ^short = "Kwalifikacja pacjenta do wizyt specjalistycznych dietetycznych"
* item[summary].item[followUpVisits].item[DWWSD] insert QuestionnaireBooleanAnswer(
    DWWSD,Kwalifikacja pacjenta do wizyt specjalistycznych dietetycznych)
//              Kwalifikacja pacjenta do wizyt specjalistycznych psychologicznych
* item[summary].item[followUpVisits].item[DWWSP] ^short = "Kwalifikacja pacjenta do wizyt specjalistycznych psychologicznych"
* item[summary].item[followUpVisits].item[DWWSP] insert QuestionnaireBooleanAnswer(
    DWWSP,Kwalifikacja pacjenta do wizyt specjalistycznych psychologicznych)

// Wykonane badanie diagnostyczbne w bilansie podstawowym
Profile: PLNFzCCBaseDiagnosticTest
Id: PLNFzCCDiagnosticTest
Parent: Observation
Title: "Badanie diagnostyczne w bilansie podstawowym"
Description: "Badanie diagnostyczne w bialnsie podstawowym"
* identifier 1..1 MS
* basedOn 0..0
* partOf 0..0
* status 1..1 MS
* category 0..0
* code 1..1 MS 
* code from BadaniaWBilansiePodstawowym
* subject 1..1 MS 
* subject only Reference(PLNfzCCPatient)
* focus 0..0
* encounter 0..1 MS 
* encounter only Reference(Encounter)
* issued 0..1 MS
* performer 1..1 MS 
* performer only Reference(PLNfzCCPractitioner)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept = $Snomed#280413001 "Normal result (qualifier value)"

// Wykonane badanie diagnostyczbne w bilansie pogłębionym
Profile: PLNFzCCExtendedDiagnosticTest
Id: PLNFzCCExtendedDiagnosticTest
Parent: Observation
Title: "Badanie diagnostyczne w bilansie pogłębionym"
Description: "Badanie diagnostyczne w bilansie pogłębionym"
* identifier 1..1 MS
* basedOn 0..0
* partOf 0..0
* status 1..1 MS
* category 0..0
* code 1..1 MS
* code from BadaniaWBilansiePodstawowym
* subject 1..1 MS 
* subject only Reference(PLNfzCCPatient)
* focus 0..0
* encounter 0..1 MS 
* encounter only Reference(Encounter)
* issued 0..1 MS
* performer 1..1 MS 
* performer only Reference(PLNfzCCPractitioner)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept = $Snomed#280413001 "Normal result (qualifier value)"

// Skierowanie do poradni specjalistycznej
Profile: PLNFzCCSpecialistVisitRequest
Id: PLNFzCCSpecialistVisitRequest
Parent: ServiceRequest
Title: "Skierowanie do poradni specjalistycznej"
Description: "Skierowanie do poradni specjalistycznej"

// Zlecenie badania diagnostycznego
Profile: PLNFzCCDiagnosticTestRequest
Id: PLNFzCCDiagnosticTestRequest
Parent: ServiceRequest
Title: "Zlecenie badania diagnostycznego"
Description: "Zlecenie badania diagnostycznego"

// Skierowania na leczenie onkologiczne (wydanie karty DILO)
Profile: PLNFzCCOncologicTreatmentRequest
Id: PLNFzCCOncologicTreatmentRequest
Parent: ServiceRequest
Title: "Skierowania na leczenie onkologiczne (wydanie karty DILO)"
Description: "Skierowania na leczenie onkologiczne (wydanie karty DILO)"


// Skierowanie do programu profilaktycznego
Profile: PLNFzCCPreventiveProgramRequest
Id: PLNFzCCPreventiveProgramRequest
Parent: ServiceRequest
Title: "Skierowanie do programu profilaktycznego"
Description: "Skierowanie do programu profilaktycznego"

// Kwalifikacja do programi zarządzania chorobą
// TODO

/* 
    Contained resoureces profiles
*/

// Aktualna lub przebyta choroba pacjenta 
Profile: PLNFzCCCurrentOrPastDisease
Id: PLNFzCCCurrentOrPastDisease
Parent: Condition
Title: "Aktualna lub przebyta choroba pacjenta"
Description: "Aktualna lub przebyta choroba pacjenta"
* identifier 1..1 MS
* category 0..0
* code 1..1 MS
* code = $Snomed#439401001 "Diagnosis (observable entity)"
* subject 1..1 MS 
* subject only Reference(PLNfzCCPatient)
* encounter 0..1 MS 
* encounter only Reference(Encounter)

// // Przyjmowany lek
// Profile: PLNFzCCMedicalStatement
// Id: PLNFzCCMedicalStatement
// Parent: MedicalStatement
// Title: "Przyjmowany lek"
// Description: "Przyjmowany lek"

// Ocena narządu/ukłądu w badaniu przedmiotowym
Profile: PLNFzCCBodySiteFinding
Id: PLNFzCCBodySiteFinding
Parent: Observation
Title: "Ocena narządu/układu w badaniu przedmiotowym"
Description: "Ocena narządu/układu w badaniu przedmiotowym"
* identifier 1..1 MS
* basedOn 0..0
* partOf 0..0
* status 1..1 MS
* category 0..0
* code 1..1 MS
* code from OcenaNarzaduLubUkladuWBadaniuFizykalnym
* subject 1..1 MS 
* subject only Reference(PLNfzCCPatient)
* focus 0..0
* encounter 0..1 MS
* encounter only Reference(Encounter)
* issued 0..1 MS
* performer 1..1 MS 
* performer only Reference(PLNfzCCPractitioner)
* value[x] only boolean
* valueBoolean 1..1 MS

// Pomiar antorpometyrczny
Profile: PLNFzCCAnthorpometricMeasurement
Id: PLNFzCCAnthorpometricMeasurement
Parent: Observation
Title: "Pomiar antorpometyrczny"
Description: "OPomiar antorpometyrczny"
* identifier 1..1 MS
* basedOn 0..0
* partOf 0..0
* status 1..1 MS
* category 0..0
* code 1..1 MS
* code from PomiarAntropometryczny
* subject 1..1 MS
* subject only Reference(PLNfzCCPatient)
* focus 0..0
* encounter 0..1 MS 
* encounter only Reference(Encounter)
* issued 0..1 MS
* performer 1..1 MS 
* performer only Reference(PLNfzCCPractitioner)
* value[x] only Quantity
* valueQuantity 1..1 MS

// Parametr zyciowy
Profile: PLNFzCCVitalSign
Id: PLNFzCCVitalSign
Parent: Observation
Title: "Parametr życiowy"   
Description: "Parametr życiowy"
* identifier 1..1 MS
* basedOn 0..0
* partOf 0..0
* status 1..1 MS
* category 0..0
* code 1..1 MS
* code from ParametrZyciowy
* subject 1..1 MS 
* subject only Reference(PLNfzCCPatient)
* focus 0..0
* encounter 0..1 MS 
* encounter only Reference(Encounter)
* issued 0..1 MS
* performer 1..1 MS 
* performer only Reference(PLNfzCCPractitioner)
* value[x] only Quantity
* valueQuantity 1..1 MS