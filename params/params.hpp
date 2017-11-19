class Params
{
  class msot_dummy_info_line1
  {
  title = "---------------------- Missions Einstellungen ---------------------";
  values[] = {-99999};
  default = -99999;
  texts[] = {""};
  };

  class Daytime
  {
    title = "Time of Day:";
    texts[] = {"01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00"};
    values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,0};
		default = 10;
		function = "BIS_fnc_paramDaytime";
  };

  class play_faction
  {
    title = "Gegen welche Fraktion willst du spielen:";
    texts[] = {"CSAT","CSAT Pazifik","FIA Red","AAF","FIA Green","Syndicat"};
    values[] = {1,2,3,4,5,6};
    default = 1;
  };
  class mission_difficulty
  {
    title = "Schwierigkeitsgrad:";
    texts[] = {"Easy","Normal","Hard","Ultra"};
    values[] = {0,2,3,4};
    default = 2;
  };
  class play_intro
  {
    title = "Spiele Intro ab:";
    texts[] = {"Nein","Ja"};
    values[] = {0,1};
    default = 1;
    isGlobal = 1;
  };
  class start_with_nothing
  {
    title = "Starte ohne Ausrüstung:";
    texts[] = {"Nein","Ja"};
    values[] = {0,1};
    default = 1;
    isGlobal = 1;
  }
  class debug_modus
  {
    title = "DEBUG MODUS:";
    texts[] = {"Nein","Ja"};
    values[] = {0,1};
    default = 1;
    isGlobal = 1;
  }
  class msot_dummy_info_line2
  {
  title = "--------------------- ACE Missions Einstellung --------------------";
  values[] = {-99999};
  default = -99999;
  texts[] = {""};
  };
  class ace_hearing_autoAddEarplugsToUnits
  {
      //Füge Ohrenstöpsel hinzu
      title = "Automatisch Ohrenstöpsel hinzufügen:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_hearing_enableCombatDeafness
  {      //Taubheit im Gefecht
      title = "Taubheit im Gefecht:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_advanced_fatigue_enabled
  {      //ACE Ausdauersystem einschalten
      title = "Erweitertes Ausdauersystem:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_gforces_enabledFor
  {    //GKräfte für 0:Deaktiviert, 1:Fluggeräte,2:Aktiviert
      title = "G-Kräfte einstellen:";
      ACE_setting = 1;
      texts[] = {"Deaktiviert","Fluggeräte","Aktiviert"};
      values[] = {0,1,2};
      default = 1;
      isGlobal = 1;
  };
  class ace_interaction_enableTeamManagement
  {      //Team Managment
      title = "Team Management nutzen:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_viewdistance_enabled
  {      //Sichtweite Bechränkung
      title = "Max. Sichtweite einstellen:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_viewdistance_limitViewDistance
  {      //Maximale Sichtweite
      title = "Max. Sichtweite in Meter:";
      ACE_setting = 1;
      texts[] = {"2000m","2500m","3000m","3500m","4000m","4500m","5000m","5500m","6000m","6500m","7000m","7500m","8000m"};
      values[] = {2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000};
      default = 4000;
      isGlobal = 1;
  };
  class ace_refuel_rate
  {           //Treibstoff Fließgeschwindigkeit
      title = "Treibstoff Fließgeschwindigkeit:";
      ACE_setting = 1;
      texts[] = {"5","10","15","20","25","30"};
      values[] = {5,10,15,20,25,30};
      default = 10;
      isGlobal = 1;
  };
  class ace_overheating_enabled
  {           //Überhitzung einschalten
      title = "Überhitzen einschalten:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_overheating_overheatingDispersion
  {       //Streuung bei Überhitzung
      title = "Streuung der Waffe bei Überhitzung:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_overheating_unJamOnreload
  {           //Behebt Ladehemmung beim Nachladen
      title = "Nachladen behebt Ladehemmung:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_nametags_playerNamesViewDistance
  {      //Zeigt NameTags innerhalb angegebener Distanz
      title = "Max. Entfernung für NameTag Anzeige:";
      ACE_setting = 1;
      texts[] = {"5m","6m","7m","8m","9m","10m","11m","12m","13m","14m","15m","20m","30m","50m"};
      values[] = {5,6,7,8,9,10,11,12,13,14,15,20,30,50};
      default = 10;
      isGlobal = 1;
  };
  class ace_finger_enabled
  {      // HandRichtung zeigen
      title = "Handrichtung zeigen:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_finger_maxRange
  {     ////Max Distanz in der Handzeichen gesehen wird
      title = "Max. Entfernung der Sichtbarkeit der Handrichtung:";
      ACE_setting = 1;
      texts[] = {"5m","6m","7m","8m","9m","10m","15m","20m","30m","40m","50m"};
      values[] ={5,6,7,8,9,10,15,20,30,40,50};
      default = 10;
      isGlobal = 1;
  };
  class msot_dummy_info_line3
  {
    title = "---------------------- ACE Karten Einstellung ---------------------";
    values[] = {-99999};
    default = -99999;
    texts[] = {""};
  };
  class ace_map_mapIllumination
  {
      //Karten Beleuchtung
      title = "Kartenansicht nutzt Umgebungslicht:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_map_mapGlow
  {         //Umgebungslicht für Karten nutzen
      title = "Spielerbeleuchtung beeinflusst Kartenansicht:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_map_mapShake
  {        // Karte bewegt sich beim laufen
      title = "Karte bewegt sich beim laufen:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_map_mapShowCursorCoordinates
  {      //KartenCursor zeigt Koordinaten
      title = "Kartencursor zeigt Koordinaten:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_map_gestures_enabled
  {      //Karten Cursor ist für andere sichtbar
      title = "Kartencursor ist für andere sichtbar:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_map_gestures_maxRange
  {     //Kartencursor ist im max Umkreis Sichtbar
      title = "Max. Entfernung der Sichtbarkeit des Kartencursors:";
      ACE_setting = 1;
      texts[] = {"5m","6m","7m","8m","9m","10m","15m","20m","30m","40m","50m"};
      values[] ={5,6,7,8,9,10,15,20,30,40,50};
      default = 7;
      isGlobal = 1;
  };
  class ace_map_BFT_Enabled
  {           //BlueForceTracking aktivieren
      title = "BlueForceTracking aktivieren:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_map_BFT_ShowPlayerNames
  {     //BlueforceTracking Zeige Spielernamen

      title = "BlueForceTracking zeigt Spielernamen:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_map_BFT_Interval
  {          //BlueforceTracking intervall
      title = "BlueForceTracking intervall:";
      ACE_setting = 1;
      texts[] = {"1 sek","2 sek","3 sek","4 sek","5 sek"};
      values[] ={1,2,3,4,5};
      default = 2;
      isGlobal = 1;
  };
  class msot_dummy_info_line4
  {
      title = "------------------- ACE Verwundungs Einstellung -------------------";
      values[] = {-99999};
      default = -99999;
      texts[] = {""};
  };
  class who_is_medic
  {
      title = "Wer ist Sanitäter:";
      texts[] = {"nur Sanitäter","alle Spieler"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  }
  class ace_medical_preventInstaDeath
  {       //Verhindere direkten Tod
      title = "Verhindere direkten Tod:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_enableRevive
  {        //Erlaube Wiederbeleben 0:Deaktiviert,1:Spieler,2:Spieler&KI
      title = "Erlaube Wiederbeleben:";
      ACE_setting = 1;
      texts[] = {"Deaktiviert","nur Spieler","Spieler + KI"};
      values[] = {0,1,2};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_amountOfReviveLives
  {       //Anzahl der Leben -1 Unendlich, Anzahl = Leben
      title = "Anzahl der Leben:";
      ACE_setting = 1;
      texts[] = {"Unendlich","1x","2x","3x","4x","5x","6x","7x","8x","9x","10x","15x","20x","25x","30x","35x","40x","45","50"};
      values[] = {-1,1,2,3,4,5,6,7,8,9,10,15,20,25,30,35,40,45,50};
      default = -1;
      isGlobal = 1;
  };
  class ace_medical_maxReviveTime
  {       //Maximale Wiederbelebzeit
      title = "Max. Zeit zum Wiederbeleben:";
      ACE_setting = 1;
      texts[] = {"1 min","2 min","3 min","4 min","5 min","10 min","15 min","20 min","25 min","30 min"};
      values[] = {60,120,,180,240,300,600,900,1200,1500,1800};
      default = 900;
      isGlobal = 1;
  };
  class ace_medical_enableScreams
  {       //Erlaube Schreie
      title = "Soundeffekt - Erlaube Schreie:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_respawn_savePreDeathGear
  {   // Speichere Ausrüstung vor Tod
      title = "Speichere Ausrüstung vor Tod:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_enableVehicleCrashes
  {    //Erlaube Schaden durch Fahrzeugunfälle
      title = "Erlaube Verletzungen durch Fahrzeugunfälle:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_enableUnconsciousnessAI
  {     //Erlaube Bewusstlosigkeit bei KI
      title = "KI kann Bewusstlos werden:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_medical_blood_enabledFor
  {     //Blutspritzer 0:Deaktiviert,1:Spieler,2:Aktiviert
      title = "Blutspritzer zeigen:";
      ACE_setting = 1;
      texts[] = {"Deaktiviert","nur Spieler","Aktiviert"};
      values[] = {0,1,2};
      default = 2;
      isGlobal = 1;
  };
  class msot_dummy_info_line5
  {
      title = "-------------------- ACE Sanitäter Einstellung --------------------";
      values[] = {-99999};
      default = -99999;
      texts[] = {""};
  };
  class ace_medical_level
  {           // Medizin Level -Basic-Advanced
      title = "Medizin Level:";
      ACE_setting = 1;
      texts[] = {"Deaktiviert","Basic","Advanced"};
      values[] = {0,1,2};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_medicSetting
  {        // Sanitätseinstellung 0:Deaktiviert,1:Normal,2:Advanced
      title = "Simulationslevel für Sanitäter:";
      ACE_setting = 1;
      texts[] = {"Deaktiviert","Normal","Advanced"};
      values[] = {0,1,2};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_medicSetting_basicEpi
  {     //Wer darf Epi geben 0:Jeder,1:Sanitäter,2:Arzt
      title = "Wer darf EPI geben:";
      ACE_setting = 1;
      texts[] = {"Jeder","nur Sanitäter","nur Arzt"};
      values[] = {0,1,2};
      default = 0;
      isGlobal = 1;
  };
  class ace_medical_medicSetting_PAK
  {        //Wer kann ErstHilfe für Endheilung verwenden 0:Jeder,1:Sanitäter,2:Ärzte
      title = "Wer darf Erste-Hilfe Pakete verwenden:";
      ACE_setting = 1;
      texts[] = {"Jeder","nur Sanitäter","nur Arzt"};
      values[] = {0,1,2};
      default = 0;
      isGlobal = 1;
  };
  class ace_medical_medicSetting_SurgicalKit
  {      //Wer kann Operationskästen verwenden  0:Jeder,1:Sanitäter,2:Ärzte
      title = "Wer kann Operationskästen verwenden:";
      ACE_setting = 1;
      texts[] = {"Jeder","nur Sanitäter","nur Arzt"};
      values[] = {0,1,2};
      default = 2;
      isGlobal = 1;
  };
  class ace_medical_enableOverdosing
  {    //Erlaube Überdosierung
      title = "Erlaube Überdosierung:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_enableAdvancedWounds
  {    //Aktiviere Erweiterte Wunden
      title = "Erweiterte Wunden einschalten:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_medical_enableFractures
  {   //Erlaube Brüche
      title = "Erlaube Knochenbrüche:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 0;
      isGlobal = 1;
  };
  class ace_medical_bleedingCoefficient
  {    //Verblutungsfaktor
      title = "Verblutungsfaktor:";
      ACE_setting = 1;
      texts[] = {"0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
      values[] = {0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1};
      default = 0.5;
      isGlobal = 1;
  };
  class ace_medical_allowLitterCreation
  {      //Erzeuge medizinischen Abfall
      title = "Erzeuge medizinische Abfälle:";
      ACE_setting = 1;
      texts[] = {"Nein","Ja"};
      values[] = {0,1};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_litterSimulationDetail
  {    //AbfallDetailLevel 0:Off,1:Low,2:Medium,3:High,4:Ultra
      title = "Detaillevel des med. Abfall:";
      ACE_setting = 1;
      texts[] = {"Aus","Niedrig","Mittel","Hoch","Ultra"};
      values[] = {0,1,2,3,4};
      default = 1;
      isGlobal = 1;
  };
  class ace_medical_litterCleanUpDelay
  {        //Abfall Timer
      title = "Med. Abfall löschen nach:";
      ACE_setting = 1;
      texts[] = {"1 min","2 min","3 min","4 min","5 min","10 min","15 min"};
      values[] = {60,120,,180,240,300,600,900};
      default = 300;
      isGlobal = 1;
  };

};
