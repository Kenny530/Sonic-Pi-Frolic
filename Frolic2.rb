# Name Of Song: Frolic (Curb Your Enthusiasm Theme)
# Sheet Music: https://store.gogustaf.com/en/article/msg-cd65ce2e9cdb0d8382d00280ec269fb1/Frolic-theme-from-Curb-Your-Enthusiasm-Luciano-Michelini-Piano-Movie-Tv-Games
# BPM Used: https://store.gogustaf.com/en/article/msg-cd65ce2e9cdb0d8382d00280ec269fb1/Frolic-theme-from-Curb-Your-Enthusiasm-Luciano-Michelini-Piano-Movie-Tv-Games
use_bpm 120
use_synth :piano
i=0
x=[ :B4, :B4, :Bb4, :a4, :a4, :gs4, :b4, :gs4, :a4, :a4, :gs4, :a4, :as4, :b4, :b4, :as4, :a4, :a4, :as4, :b4, :g5, :a4, :a4, :ab4, :g4, :g4, :fs4, :a4, :fs4, :g4, :g4, :fs4, :g4, :gs4, :a4, :a4, :gs4, :g4, :g4, :gs4]
z=[ 1, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 1, 0.75, 0.25, 1, 1, 1, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 0.75, 0.25, 1, 0.75, 0.25, 1, 0.75, 0.25]
v=[ :C3, :g2, :g2, :g2, :b2, :fs2, :b2, :bb2, :f2, :bb2, :f2, :a2, :e2]
n=[ 2, 2, 2, 2, 2, 4, 1, 2, 2, 2, 2, 2, 2]

1.times do
  play :G2
  sleep 1
  play :A2
  sleep 1
  play :B2
  sleep 1
end

live_loop :Con do
  i=0
  40.times do
    play x[i]
    sleep z[i]
    i=i+1
  end
end

live_loop :Bass do
  play :C3
  sleep 2
  play :g2
  sleep 2
  play :g2
  sleep 2
  play :g2
  sleep 2
  play :b2
  sleep 2
  play :fs2
  sleep 4
  play :b2
  sleep 1
  play :bb2
  sleep 2
  play :f2
  sleep 2
  play :bb2
  sleep 2
  play :f2
  sleep 2
  play :a2
  sleep 2
  play :e2
  sleep 2
end
