EXTERNAL change_background(x)
EXTERNAL add_character(x,y) 
EXTERNAL play_voiceline(x)
Tomorrow is the big day you spent the night revising for the interview 
~change_background(3)
~play_voiceline(11)
*Stay up a little longer
->Stayuplate
*Wake up early 
->wakeupearly
*You're too cool to revise for an interview
->you_lost
==wakeupearly==
~change_background(16)
you took enough sleep , and started revising the notes you prepared recently for the interview.
*Change your clothes
~change_background(4)
~add_character(0,0)
~play_voiceline(1)
-Now you are ready to go 
*Driveyourcar
->Driveyourcar
==Driveyourcar==
~change_background(8)
~play_voiceline(8)
-Be Careful while driving..Phone ringing
~play_voiceline(15)
*Pickup your phone
->you_lost
*Ignore the call
->Reaching_the_Building
==Reaching_the_Building
~change_background(1)
-You reached safely and on time
*Enter the building
~change_background(6)
~add_character(8,0)
->pickingelevorstair
==pickingelevorstair
*Take the elevator
~change_background(5)
~add_character(7,0)
->Go_to_the_reception
*Take the stairs 
~change_background(9)
~add_character(7,0)
->Go_to_the_reception
==Go_to_the_reception
~change_background(11)
~add_character(9,0)
+[Ask where is the interview room rudely]
->you_lost
*Greet the reciptionist and ask where is the interview room 
->Enteroom
==Enteroom
~change_background(10)
~add_character(0,0)
~play_voiceline(21)

-She leads you to the interview hallway
+[Barge In]
->you_lost
~play_voiceline(9)
+[Knock knock politely] 

->Interview_starts
==Interview_starts
~change_background(12)
->interviewer_ask_question
 
  ==interviewer_ask_question
  ~play_voiceline(16)
-Good Morning Mr Sam,how are you doing today , please have a seat and briefly introduce yourself ?
//azzatetkalem
->candidate_answer
==candidate_answer==
 * answer in a serious voice
//belha
 ->seriousness
 * answer in a montonous voice
 //blha
 ->montoonous
 * answer in a stressed voice
//belha
 ->stressedvoice
==unusual_situation
  ~play_voiceline(9)
-All of a sudden a knon broke out , interrupting your interview ,one of the interviewers rushed  to open the door
+[open door]

  ~play_voiceline(17)
-Oh there seems to be a problem going on
*askthem 
  ~play_voiceline(3)
->x
==x==
*approach the interviewer
  ~play_voiceline(18)
-Oh it seems like our server got hacked and we are loosing all of our data
*helpout 
  ~play_voiceline(13)
->solving
*Bursted out of the interview room 
 ->gohome
 ==solving
 *Solve the problem and amaze the team 
->validation
==gohome
  ~play_voiceline(12)
  ~change_background(1)
  ~add_character(4,0)
->burstout
==burstout
*go home
->you_lost
==validation== 
 ~play_voiceline(19)
-Thank you for helping ,the interview is almost done but one last thing before you can finally leave
let's take you on a tour and introduce you to our company 
*Agree
->agrremnt
*Disagree 
->you_lost
==agrremnt==
Let's start with the server room
~change_background(15)
*go to the financial department
->financial
*go to the security department
->security
*go to the big data department
->bigdata
*go to the meetings room
->meetings

==financial==
~change_background(7)
*done
->you_won

==bigdata==
~change_background(0)
*done
->you_won

==security==
~change_background(15)
*done
->you_won

==meetings==
~change_background(14)
~add_character(2,0)
~add_character(0,0)
*checkitout
~change_background(13)
~add_character(2,0)
~add_character(0,0)
-Suddenly the lights went off 
*Panick
->you_lost
*Staycalm
->you_won
==you_won
~change_background(18)//won
->END
==seriousness==
   ~play_voiceline(5)
   ->text
==montoonous==
   ~play_voiceline(0)
    ->text
==stressedvoice==
   ~play_voiceline(14)
   ->text
==text
+[Go on]
->unusual_situation
==Stayuplate==
*Get up from bed
->wakeupearly
*Stay in bed a little longer
~play_voiceline(20)
~change_background(20)
->stayinginbed
==stayinginbed==
You Lazily stay in bed and miss the interview
->you_lost
==you_lost
~play_voiceline(10)
~change_background(17)
You Lost,But you learned ;)
->END



