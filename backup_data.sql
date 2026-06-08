PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE lessons (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            content TEXT NOT NULL,
            sort_order INTEGER DEFAULT 0);
INSERT INTO lessons VALUES(1,'Lesson 0: Alphabets and Sounds',unistr('Language is based on sounds and symbols. A small set of sounds and symbols are combined in different manners to create words. Tens of thousands of words as different combinations of tens of sounds and symbols. Then the grammatical rules act as the backbone to drive forth meaning from these sounds. This lesson focuses on the alphabets and basic sounds of Amanikipaasi.\u000d\u000a\u000d\u000aAmanikipaasi has 19 letters. We are following the common Latin alphabet, the same as used in many languages like English, Spanish, etc. Letters are of uppercase and lowercase.\u000d\u000a\u000d\u000a\u000d\u000aLetters    Transciption \u000d\u000a-----------------------------------\u000d\u000aA, a                 /ɐ/\u000d\u000a\u000d\u000aB, b                 /ʋ/\u000d\u000a\u000d\u000aC, c                 /t͡ɕ/\u000d\u000a\u000d\u000aD, d                 /ɖ/\u000d\u000a\u000d\u000aE, e                 /e/\u000d\u000a\u000d\u000aG, g                 /g/\u000d\u000a\u000d\u000aH, h                 /h/\u000d\u000a\u000d\u000aI, i                    /i/\u000d\u000a\u000d\u000aJ, j                   /j/\u000d\u000a\u000d\u000aK, k                 /k/\u000d\u000a\u000d\u000aL, l                  /l/\u000d\u000a\u000d\u000aM, m              /m/ \u000d\u000a\u000d\u000aN, n                 /n̪/\u000d\u000a\u000d\u000aΟ, ο                 /o/\u000d\u000a\u000d\u000aP, p                 /p/\u000d\u000a\u000d\u000aR, r                  /ɾ/\u000d\u000a\u000d\u000aS, s                 /s/\u000d\u000a\u000d\u000aT, t                  /ʈ/\u000d\u000a\u000d\u000aU, u                 /u/\u000d\u000a\u000d\u000a\u000d\u000aa, e, i, o and u are the vowels. They have a very regular pronunciation. We can look at it as how you pronounce these vowels in Spanish. But if you don''t know how vowels in Spanish sounds like, not to worry. "a" is always pronounced as in father. "e" is pronounced as how you say the letter a, or how you pronounce the e in energy. "i" is pronounced as how you say the letter e or how you pronounce i in inability. "o" is pronounced just how you say the name of that letter in English. "u" is pronounced as how you say f*oo*d. Yeah. English has weird phonetics.\u000d\u000a\u000d\u000aFor lengthening the vowels, you simply put two vowels instead of one. Like "a" vs "aa" or "o" vs "oo".\u000d\u000a\u000d\u000aWe have a few diphthongs too.\u000d\u000a\u000d\u000aDiphthongs    Transciption \u000d\u000a------------------------------------------\u000d\u000aai                 \u000d\u000aau                 \u000d\u000aei                 \u000d\u000aou                 \u000d\u000aua                 \u000d\u000aui                 \u000d\u000a\u000d\u000a\u000d\u000aWe also have some more combinations of consonants.\u000d\u000a\u000d\u000aCombinations    Transcription \u000d\u000a\u000d\u000adh\u000d\u000an''\u000d\u000ang\u000d\u000anj\u000d\u000arr\u000d\u000ash\u000d\u000ath'),1);
INSERT INTO lessons VALUES(2,'Lesson 1: Amanikipaasi ',unistr('Let''s start the lesson by looking at the name of our language itself: "Amanikipaasi". Did I randomly make that word up? Not exactly. So what does that word mean?\u000d\u000a\u000d\u000aThe first question is, about how we talk about ownership in our language? The idea is simple. We use the particle "ama", then we add the owner of whatever we are talking about. Then we talk about the possessed object. Then we add a suffix to the end of the possessed. If the possessed ends in a consonant, we add the suffix "-i". For the ones ending in a vowel, you add the suffix "-ri" Basically, the owner and the owned are sandwiched between "ama" and "-i"/"-ri", making up a neat block.\u000d\u000a\u000d\u000aExamples: Ama Jon* kithi. - John''s book. \u000d\u000a                    Ama ni miari. - My cat.\u000d\u000a                    Ama bi eluatin''i. - Your pen.\u000d\u000a\u000d\u000a"Niki" is the word for the inclusive first person in the plural form. That means, it is like an inclusive versions of "us". Like in a context where when you say "us" to a person, you are also including them in that "us".\u000d\u000a\u000d\u000a"Paas" is the word for "language" in our language. \u000d\u000a\u000d\u000aSo what does the phrase "Ama niki paasi" mean? Ama...i has something sandwiched inside it. Niki is us inclusive. Paas is language. So, the phrase means, "Our language". Now remove all the spaces from it, and we got our language name: "Amanikipaasi", Our language.\u000d\u000a\u000d\u000a\u000d\u000a*Sometimes names have to be changed a bit to suit the phonetics of the language.\u000d\u000a\u000d\u000a\u000d\u000a'),2);
INSERT INTO lessons VALUES(3,'Lesson 2: Basic SOV Sentences ',unistr('The basic sentence structure of Amanikipaasi is Subject-Object-Verb. What does that mean?\u000d\u000a\u000d\u000aLet''s consider a simple English sentence: "John bought a book." We saw that someone is doing an action and someone or something else receives the action. John is doing the action. "John" is the subject. What is the action? He "bought" something. "Bought" is the verb. Who or what is experiencing the action? "A book" is experiencing the action. "A book" is the object.\u000d\u000a\u000d\u000aEnglish has a subject-verb-object structure (SOV). This structure is important. If I say "A book bought John", that sounds completely different. "Alan slapped Harry" is the opposite of "Harry slapped Alan". English cares a lot about word order. But in some languages, we can switch around these words and it will not change the meaning. Because they use markers for subject amd object. These markers are called cases.\u000d\u000a\u000d\u000aIn Amanikipaasi, we have the nominative case which represents the subject. It is quite easy to remember. You don''t change the noun at all.\u000d\u000a\u000d\u000aAccusative case marks the object. If the noun ends in a vowel, you add a suffix "-l" to it. If the noun ends in a consonant, you add the suffix "-il".\u000d\u000a\u000d\u000aSo technically, we can write these simple sentences in any word-order we like. But we keep the SOV as a standard.\u000d\u000a\u000d\u000aLet''s look at some examples:\u000d\u000a\u000d\u000aGoori mial alsjami. -  The girl likes the cat. \u000d\u000a\u000d\u000a"Mia" means cat. Here, "mia" as the object was changed into "mial".\u000d\u000a\u000d\u000aNi gran''il plaabami. - I drink juice.\u000d\u000a\u000d\u000a"Gra''n" stands for juice. When it became the object, it became "gra''nil".\u000d\u000a\u000d\u000a\u000d\u000aThe pronouns have some irregular forms for these two cases. This is how it looks.\u000d\u000a\u000d\u000aNominative\u000d\u000a=====================\u000d\u000ani       - I\u000d\u000aniki    - we (inclusive)\u000d\u000aeniki  - we (exclusive)\u000d\u000abi       - you (singular)\u000d\u000abiki    - you (plural)\u000d\u000athi      - he/she/it (singular)\u000d\u000athiki   - them\u000d\u000a-----------------------------------------\u000d\u000a\u000d\u000aAccusative\u000d\u000a=====================\u000d\u000ami       - me\u000d\u000amiki    - us (inclusive)\u000d\u000aemiki  - us (exclusive)\u000d\u000aji          - you (singular)\u000d\u000ajiki       - you (plural)\u000d\u000adhi      - him/her/it (singular)\u000d\u000adhiki   - them\u000d\u000a-----------------------------------------\u000d\u000a\u000d\u000aEniki ji bemarmi. - We praise you.\u000d\u000aNi ji praa''nami. - I love you.\u000d\u000a\u000d\u000a'),3);
INSERT INTO lessons VALUES(4,'Lesson 3: Plurality ',unistr('Goori mial alsjami. - The girl likes the cat. \u000d\u000a\u000d\u000a"Goori" stands for girl. "Mia" stands for cat. Both were in singular. So it read "The girl likes the cat." How do you say "The girl likes cats"? How do you write nouns in plural?\u000d\u000a\u000d\u000aMaking a noun plural is simple. If the noun ends in a vowel, you add the suffix "-ki". If it ends in a vowel, you add "-iki".\u000d\u000a\u000d\u000akith*iki*         -   books\u000d\u000abaash*iki*     -   houses\u000d\u000aeluati''ni*ki*   -   pens \u000d\u000apolla*ki*        -   bubbles\u000d\u000a\u000d\u000aGoori miakil alsjami. - The girl likes cats.\u000d\u000a\u000d\u000aHere, you saw that the "-l" for the accusative case came after the "-ki" for plural. That''s how it is ordered. Accusative case comes after plurality.\u000d\u000a\u000d\u000aOr you can even say,\u000d\u000a\u000d\u000aGooriki mial alsjami. - The girls like the cat.\u000d\u000a\u000d\u000aOr\u000d\u000a\u000d\u000aGooriki miakil alsjami. - The girls like cats.'),4);
INSERT INTO lessons VALUES(5,'Lesson 4: Indirect Object',unistr('"She gifts a book for Gokul." How do you write that in our language? Let''s look at the sentence. We have a subject, which is "She". A verb and the one receiving the verb is the book. Then what is Gokul doing here? "Gokul" is the indirect object. The action is done for Gokul. How do you mark indirect objects in Amanikipaasi?\u000d\u000a\u000d\u000aFor marking the indirect object, if the noun  ends in a vowel, you add the suffix "-ruupe". For nouns ending in consonants, you add "-uupe".\u000d\u000a\u000d\u000aThi kithil Gookuluupe par''nami. - She gifts a book for Gokul.\u000d\u000a\u000d\u000aNotice how I wrote "Gookul" instead of "Gokul". When writing names in this language, we must pay attention to the pronunciation. We have a long o while pronouncing "Gokul".\u000d\u000a\u000d\u000aAlso, look at the word order. We got subject-object-indiect object-verb. The verb always comes in the end.'),5);
CREATE TABLE dictionary (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            amanikipaasi TEXT NOT NULL,
            english TEXT NOT NULL,
            pos TEXT NOT NULL);
INSERT INTO dictionary VALUES(1,'ami','to be','verb');
INSERT INTO dictionary VALUES(2,'aag','fire','noun');
INSERT INTO dictionary VALUES(3,'aanng','eye','noun');
INSERT INTO dictionary VALUES(4,'aba','what','question');
INSERT INTO dictionary VALUES(5,'aba pa''ni','who','question');
INSERT INTO dictionary VALUES(6,'ajami','to see','verb');
INSERT INTO dictionary VALUES(7,'alsjami','to like','verb');
INSERT INTO dictionary VALUES(8,'a''numi','to want','verb');
INSERT INTO dictionary VALUES(9,'Anegila','English ','noun');
INSERT INTO dictionary VALUES(10,'asaragi','lemon','noun');
INSERT INTO dictionary VALUES(11,'atheshumi','to identify, to recognize ','verb');
INSERT INTO dictionary VALUES(12,'baash','house','noun');
INSERT INTO dictionary VALUES(13,'baajami','to eat ','verb');
INSERT INTO dictionary VALUES(14,'barnemi','to buy','verb');
INSERT INTO dictionary VALUES(15,'bemarmi ','to praise ','verb');
INSERT INTO dictionary VALUES(16,'besami','to devour ','verb');
INSERT INTO dictionary VALUES(17,'bi','you (nom, singular)','pronoun');
INSERT INTO dictionary VALUES(18,'biki','you (nom, plural)','pronoun');
INSERT INTO dictionary VALUES(19,'caaba','problem ','noun');
INSERT INTO dictionary VALUES(20,'cai','tea','noun');
INSERT INTO dictionary VALUES(21,'cooi','little','adj');
INSERT INTO dictionary VALUES(22,'culaaju','day','noun');
INSERT INTO dictionary VALUES(23,'daa''nami','to give','verb');
INSERT INTO dictionary VALUES(24,'dhooha','distant ','adjective ');
INSERT INTO dictionary VALUES(25,'dhoohajaari','airplane','noun');
INSERT INTO dictionary VALUES(26,'dhoohamirrmam','portal','noun');
INSERT INTO dictionary VALUES(27,'mirmam','door','noun');
INSERT INTO dictionary VALUES(28,'dolli','soil, ground','noun');
INSERT INTO dictionary VALUES(29,'eshumathu','knowledge ','noun');
INSERT INTO dictionary VALUES(30,'eshumi','to know ','verb');
INSERT INTO dictionary VALUES(31,'eshi','far','adjective ');
INSERT INTO dictionary VALUES(32,'gaashiban','beautiful ','adjective ');
INSERT INTO dictionary VALUES(33,'gandhi','strong ','adjective ');
INSERT INTO dictionary VALUES(34,'goori','girl','noun');
INSERT INTO dictionary VALUES(35,'gra''n','juice','noun');
INSERT INTO dictionary VALUES(36,'galu ','bad','adjective ');
INSERT INTO dictionary VALUES(37,'uri','good','adjective ');
INSERT INTO dictionary VALUES(38,'gusta','fun','adjective ');
INSERT INTO dictionary VALUES(39,'harum','weak','adjective ');
INSERT INTO dictionary VALUES(40,'ija','gas','noun');
INSERT INTO dictionary VALUES(41,'jaadh','ball, sphere','noun');
INSERT INTO dictionary VALUES(42,'jaari','vehicle ','noun');
INSERT INTO dictionary VALUES(43,'kad''nu','hot','adjective ');
INSERT INTO dictionary VALUES(44,'kalima','street','noun');
INSERT INTO dictionary VALUES(45,'karimi','to think','verb');
INSERT INTO dictionary VALUES(46,'karoo','hard','adjective ');
INSERT INTO dictionary VALUES(47,'karoojadh','planet','noun');
INSERT INTO dictionary VALUES(48,'karookhami ','to scream','verb');
INSERT INTO dictionary VALUES(49,'karrimi ','to scratch','verb');
INSERT INTO dictionary VALUES(50,'kasmi','to leave, to go','verb');
INSERT INTO dictionary VALUES(51,'keerami','to do','verb');
INSERT INTO dictionary VALUES(52,'kith','book','noun');
INSERT INTO dictionary VALUES(53,'paaskith','dictionary, grammar book','noun');
INSERT INTO dictionary VALUES(54,'maali','lizard','noun');
INSERT INTO dictionary VALUES(55,'saali','snake','noun');
INSERT INTO dictionary VALUES(56,'li''nami','to follow','verb');
INSERT INTO dictionary VALUES(57,'mil''ni','fish','noun');
INSERT INTO dictionary VALUES(58,'mirrmam','door ','noun');
INSERT INTO dictionary VALUES(59,'nema','hello','greeting ');
INSERT INTO dictionary VALUES(60,'nibashoki ','injustice ','noun');
INSERT INTO dictionary VALUES(61,'niila','big','adjective ');
INSERT INTO dictionary VALUES(62,'nimpa','long','adjective ');
INSERT INTO dictionary VALUES(63,'nimpajaari','train ','noun');
INSERT INTO dictionary VALUES(64,'paas','language ','noun');
INSERT INTO dictionary VALUES(65,'pabishami ','to pet','verb');
INSERT INTO dictionary VALUES(66,'palam','bird','noun');
INSERT INTO dictionary VALUES(67,'pa''ni','person','noun');
INSERT INTO dictionary VALUES(68,'parr''numi','to be afraid','verb');
INSERT INTO dictionary VALUES(69,'pasam','fruit','noun');
INSERT INTO dictionary VALUES(70,'phaari','boy','noun');
INSERT INTO dictionary VALUES(71,'phajaami','to understand ','verb');
INSERT INTO dictionary VALUES(72,'pjoori','forest','noun');
INSERT INTO dictionary VALUES(73,'plabaami','to drink','verb');
INSERT INTO dictionary VALUES(74,'pishjimi','to pick up','verb');
INSERT INTO dictionary VALUES(75,'plabaag','lava','noun');
INSERT INTO dictionary VALUES(76,'plabam','liquid','noun');
INSERT INTO dictionary VALUES(77,'prabja','name','noun');
INSERT INTO dictionary VALUES(78,'rusaragi','orange','noun');
INSERT INTO dictionary VALUES(79,'saarimi','to hug','verb');
INSERT INTO dictionary VALUES(80,'shoki','justice','noun');
INSERT INTO dictionary VALUES(81,'siila','small','adjective ');
INSERT INTO dictionary VALUES(82,'simpa','short','adjective ');
INSERT INTO dictionary VALUES(83,'thala','head','noun');
INSERT INTO dictionary VALUES(84,'thalampjoori ','hair on the head','noun');
INSERT INTO dictionary VALUES(85,'theli','water','noun');
INSERT INTO dictionary VALUES(86,'thelija','steam','noun');
INSERT INTO dictionary VALUES(87,'ukhami','to cry','noun');
INSERT INTO dictionary VALUES(88,'umparmi','to walk','verb');
INSERT INTO dictionary VALUES(89,'usi','close','-');
CREATE TABLE phrases (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            content TEXT NOT NULL);
INSERT INTO phrases VALUES(1,unistr('Nema - Hello/Hi\u000d\u000a\u000d\u000aUri prasanni. - Good morning.\u000d\u000a\u000d\u000aUri corjari - Good afternoon.\u000d\u000a\u000d\u000aUri malsjathu. - Good evening.\u000d\u000a\u000d\u000aNi ji praa''nami. - I love you.\u000d\u000a\u000d\u000aAma aarcha''ni. - Thank you.\u000d\u000a\u000d\u000aNi paabu karimi - Maybe. (As in something like"Maybe I''ll do it.")\u000d\u000a\u000d\u000aRroopi ni kaimi. - I think so.\u000d\u000a\u000d\u000aPlabaag mi baajami. - I am furious.\u000d\u000a\u000d\u000aThi palamil bolarmi. - He/she is talking rubbish. \u000d\u000a\u000d\u000aNi baargil ami. - I am feeling confident.'));
INSERT INTO phrases VALUES(2,unistr('Nema - Hello/Hi\u000d\u000a\u000d\u000aUri prasanni. - Good morning.\u000d\u000a\u000d\u000aUri corjari - Good afternoon.\u000d\u000a\u000d\u000aUri malsjathu. - Good evening.\u000d\u000a\u000d\u000aAma bi eim uriri? - How are you?\u000d\u000a\u000d\u000aAba giraaha?\u000d\u000a\u000d\u000aNi ji praa''nami. - I love you.\u000d\u000a\u000d\u000aAma aarcha''ni. - Thank you.\u000d\u000a\u000d\u000aNi paabu karimi - Maybe. (As in something like"Maybe I''ll do it.")\u000d\u000a\u000d\u000aRroopi ni kaimi. - I think so.\u000d\u000a\u000d\u000aPlabaag mi baajami. - I am furious.\u000d\u000a\u000d\u000aThi palamil bolarmi. - He/she is talking rubbish. \u000d\u000a\u000d\u000aNi baargil ami. - I am feeling confident.'));
INSERT INTO phrases VALUES(3,unistr('Nema - Hello/Hi\u000d\u000a\u000d\u000aUri prasanni. - Good morning.\u000d\u000a\u000d\u000aUri corjari - Good afternoon.\u000d\u000a\u000d\u000aUri malsjathu. - Good evening.\u000d\u000a\u000d\u000aAma bi eim uriri? - How are you?\u000d\u000a\u000d\u000aAba giraaha? - What''s up?\u000d\u000a\u000d\u000aNi ji praa''nami. - I love you.\u000d\u000a\u000d\u000aAma aarcha''ni. - Thank you.\u000d\u000a\u000d\u000aNi paabu karimi - Maybe. (As in something like"Maybe I''ll do it.")\u000d\u000a\u000d\u000aRroopi ni kaimi. - I think so.\u000d\u000a\u000d\u000aPlabaag mi baajami. - I am furious.\u000d\u000a\u000d\u000aThi palamil bolarmi. - He/she is talking rubbish. \u000d\u000a\u000d\u000aNi baargil ami. - I am feeling confident.'));
INSERT INTO phrases VALUES(4,unistr('Nema - Hello/Hi\u000d\u000a\u000d\u000aUri prasanni. - Good morning.\u000d\u000a\u000d\u000aUri corjari - Good afternoon.\u000d\u000a\u000d\u000aUri malsjathu. - Good evening.\u000d\u000a\u000d\u000aAma bi eim uriri? - How are you?\u000d\u000a\u000d\u000aAba giraaha ami? - What''s up?\u000d\u000a\u000d\u000aNi ji praa''nami. - I love you.\u000d\u000a\u000d\u000aAma aarcha''ni. - Thank you.\u000d\u000a\u000d\u000aNi paabu karimi - Maybe. (As in something like"Maybe I''ll do it.")\u000d\u000a\u000d\u000aRroopi ni kaimi. - I think so.\u000d\u000a\u000d\u000aPlabaag mi baajami. - I am furious.\u000d\u000a\u000d\u000aThi palamil bolarmi. - He/she is talking rubbish. \u000d\u000a\u000d\u000aNi baargil ami. - I am feeling confident.'));
CREATE TABLE quiz (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            question TEXT NOT NULL,
            option_a TEXT NOT NULL,
            option_b TEXT NOT NULL,
            option_c TEXT NOT NULL,
            option_d TEXT NOT NULL,
            correct_answer TEXT NOT NULL);
INSERT INTO quiz VALUES(1,'What does the word "dhoohajaari" mean?','far away','train ','distant place','airplane ','D');
INSERT INTO quiz VALUES(2,'What does the word "ilija''n" mean?','to play','game','a player','sports','C');
INSERT INTO quiz VALUES(3,'How do you conjugate the verb for "you" in simple future?','Add "-rr''nu" without dropping "-mi".','Add "-rr''nam" after dropping "-mi".','Add "-rr''nu" after dropping "-mi".','There is no conjugation for simple future.','D');
INSERT INTO quiz VALUES(4,'Among them, what is the correct suffix for essive case?','"-goom"','"-upami"','"-il"','Essive case doesn''t exist in Amanikipaasi.','A');
INSERT INTO quiz VALUES(5,'What is the correct suffix for indirect objects?','"-iki"','"-ruupe"','"-oom"','"-asimur"','B');
INSERT INTO quiz VALUES(6,'What is the definite article for abstract nouns?','oom','o','eim','ai','C');
INSERT INTO quiz VALUES(7,'"Ama niki kith." What is wrong with this sentence?','Possessed is not in accusative case.','Wrong vowel duration in "ama".','Indefinite article is not used.','Possessed does not have suffix "-i".','D');
INSERT INTO quiz VALUES(8,'How to change a adjective to an adverb?','Add the suffix "-asimur".','Change the article to abstract.','Add the prefix "im-".','Add the suffix "-giri" or "-agiri".','D');
INSERT INTO quiz VALUES(9,'Which of the following sentences are correct?','Ama thiki baash.','Ni mia alsjami.','Bi paasharr''nil ami.','Dhi chessilija''nil puthumi.','C');
INSERT INTO quiz VALUES(10,'What does the "paasharrmi" mean?','to treat','a nurse','treatment ','to feed','A');
INSERT INTO quiz VALUES(11,'Which of these sentences are wrong?','Ni a''numi miln''il.','Thi Aru''nuupe theli daa''nami.','Jeminiruupe ni bemarmi.','Bi gra''nil plabaami.','B');
INSERT INTO quiz VALUES(12,'What does the word "mia" means?','a cat ','a breeze','soft','siren','A');
PRAGMA writable_schema=ON;
CREATE TABLE IF NOT EXISTS sqlite_sequence(name,seq);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('lessons',5);
INSERT INTO sqlite_sequence VALUES('phrases',4);
INSERT INTO sqlite_sequence VALUES('dictionary',89);
INSERT INTO sqlite_sequence VALUES('quiz',12);
PRAGMA writable_schema=OFF;
COMMIT;
