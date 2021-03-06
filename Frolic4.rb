use_bpm 120
intro = "C:/Users/vaughn_arjavac/Desktop/intro.wav" #Sample linked into song
use_synth :piano
i=0
x=[ :B4, :B4, :Bb4, :a4, :a4, :gs4, :b4, :gs4, :a4, :a4, :gs4, :a4, :as4, :b4, :b4, :as4, :a4, :a4, :as4, :b4, :g5, :a4, :a4, :ab4, :g4, :g4, :fs4, :a4, :fs4, :g4, :g4, :fs4, :g4, :gs4, :a4, :a4, :gs4, :g4, :g4, :gs4]
z=[ 1, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 1, 0.75, 0.25, 1, 1, 1, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 1, 0.75, 0.25]
v=[ :C3, :g2, :g2, :g2, :b2, :fs2, :b2, :bb2, :f2, :bb2, :f2, :a2, :e2]
n=[ 2, 2, 2, 2, 2, 4, 1, 2, 2, 2, 2, 2, 2] #The arrays contain all the notes and rest to the song

define :back do #Created a function so it's more convient to refer to
  play :C3, amp: rrand(1,4) #Randomizing the volume of the notes
  sleep 2
  play :g2, amp: rrand(1,4)
  sleep 2
  play :g2, amp: rrand(1,4)
  sleep 2
  play :g2, amp: rrand(1,4)
  sleep 2
  play :b2, amp: rrand(1,4)
  sleep 2
  play :fs2, amp: rrand(1,4)
  sleep 4
  play :b2, amp: rrand(1,4)
  sleep 1
  play :bb2, amp: rrand(1,4)
  sleep 2
  play :f2, amp: rrand(1,4)
  sleep 2
  play :bb2, amp: rrand(1,4)
  sleep 2
  play :f2, amp: rrand(1,4)
  sleep 2
  play :a2, amp: rrand(1,4)
  sleep 2
  play :e2, amp: rrand(1,4)
  sleep 2
end

define :start do
  play :G2
  sleep 1
  play :A2
  sleep 1
  play :B2
  sleep 1
end

1.times do
  sample intro #Plays the linked sample
  sleep 30
end

1.times do
  start #refering to function
end

live_loop :Con do
  i=0
  40.times do
    play x[i] #Refering to the notes in the array
    sleep z[i] #Refering to sleep times
    i=i+1 #adding one to the index so that next time it loops it plays a different note/sleep 
  end
end

live_loop :Bass do
  back #Refering to Function
end
