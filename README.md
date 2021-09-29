# Hack Technology / Project Attempted


## What you built? 

For hack-a-thing 2, I continued working on my iOS messaging app. I figured continuing with this app would be useful because it would give me both a pretty solid Firebase and general iOS refresher. Back when I worked with Firebase for the first time, my partner did most of the backend. The entire tutorial series is almost 14 hours long, and throughout the hack-a-thing process, I made it through slightly over 10 hours worth of videos.  In this chunk, I learned how to do Google authenticiation, how to save and load images from Firebase, how to use various external packages (MessageKit, SDWebImage, etc.), how to search for users in a database, and how to send real-time messages back and forth between users. 

## Screenshots

Here is a screenshot of open conversations: 
![open conversations](https://github.com/dartmouth-cs98/hack-a-thing-21f-2-maria-roodnitsky/blob/master/28616079-B43B-40C6-9025-ACBD6E1366CB.PNG)

Here is a conversation with sent and received messages: 
![conversation](https://github.com/dartmouth-cs98/hack-a-thing-21f-2-maria-roodnitsky/blob/master/28F7036F-5581-4A7E-A76D-2BD8FB98FDB3.JPG)

Here is a gif of me searching for another user (Lucy):
![searching](https://github.com/dartmouth-cs98/hack-a-thing-21f-2-maria-roodnitsky/blob/master/searching.gif)

Most excitingly, here is a gif of us messaging in real time!:
![messaging](https://github.com/dartmouth-cs98/hack-a-thing-21f-2-maria-roodnitsky/blob/master/texting.gif)


## Who Did What?

I worked on this myself!

## What you learned

Ugh, besides learning that I cannot keep up with tutorials in real time, I learned some cool stuff. First off, simulators do not always tell the full story. I spent a few hours trying to fix a bug that ended up being a problem with the simulator (the simulator requires arm64 support but some of my dependencies did not allow for it). Conclusion: if doing native mobile app development, it's worth it to be testing on a physical device. 

I learned that in regards to authentication and staying logged in, there are a lot of edge cases. I still have a lot of various lifecycle issues where a view should be updated but is currently out of sync. `DispatchQueue.main.async` is something I hadn't worked with much before but is a way of handling UI on the main thread.

While testing with Lucy, we also discovered that I had some issues with the database where I wasn't quite updating everything so I would have pieces of our conversation that were never displayed on her side. Moral of the story: when working on user-to-user features, each little piece should be tested on both ends as its being built. I pretty incorrectly assumed that because my end worked correctly, hers would as well.  

Big takeaways: use a physical device, lifecycle bugs are plentiful in mobile development, user-to-user features have to be tested in tandem. 

## Authors

@me here

## Acknowledgments

I followed this wonderful video [series](https://www.youtube.com/watch?v=Mroju8T7Gdo&list=PL5PR3UyfTWvdlk-Qi-dPtJmjTj-2YIMMf) through the end of the end-to-end messaging feature. I couldn't recommend iOS Academy more to other people who want to quickly learn iOS. This specific tutorial was at the perfect level for someone familiar with Swift and general iOS development. 

