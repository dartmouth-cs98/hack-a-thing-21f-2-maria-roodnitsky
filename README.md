# Hack Technology / Project Attempted


## What you built? 

For hack-a-thing 2, I continued working on my iOS messaging app. The entire tutorial series is almost 14 hours long, and throughout the hack-a-thing process, I made it through slightly over 10 hours worth of videos.  In this chunk, I learned how to do Google authenticiation, how to save and load images from Firebase, how to use various external packages (MessageKit, SDWebImage, etc.), how to search for users in a database, and how to send real-time messages back and forth between users. 

## Screenshots

Here is a log in flow with email authentication!

![Log In Flow](https://github.com/dartmouth-cs98/hack-a-thing-21f-1-maria-roodnitsky/blob/master/login.gif)

Here is a registration flow!

![Registration Flow](https://github.com/dartmouth-cs98/hack-a-thing-21f-1-maria-roodnitsky/blob/master/registration.gif)

Here is a Facebook flow!

![Registration Flow](https://github.com/dartmouth-cs98/hack-a-thing-21f-1-maria-roodnitsky/blob/master/facebook.gif)

Here is Firebase: 
![Firebase](https://github.com/dartmouth-cs98/hack-a-thing-21f-1-maria-roodnitsky/blob/master/Screen%20Shot%202021-09-22%20at%2010.10.50%20AM.png)

And here is Facebook development: 
![Facebook](https://github.com/dartmouth-cs98/hack-a-thing-21f-1-maria-roodnitsky/blob/master/Screen%20Shot%202021-09-22%20at%2010.11.16%20AM.png)

## Who Did What?

I worked on this myself. 
I also originally worked on this on this repo before porting it into the classroom repo. (Oops.) Here is a [link to my commit history]( https://github.com/maria-roodnitsky/messenger/tree/main) You should see a plethora of commits! (This actually saved me at one point because I used git for large files and that...broke everything...so I had to return to a previous commit.)

## What you learned

I ran into multiple issues working on this. Swift has changed slightly, so some imports needed to be hacky. Facebook has also changed how its authentication can be used in the last year, so I had to do some digging to figure out what I needed to adapt. Uploading to git was also challenging because the 'Pods/Realm' files are massive and wouldn't upload. At first, I got around this by using Git for large files, but this broke my build. I had to go back to a previous commit to return to a stable build. Eventually, I simply excluded the Pod directory from git, so I had both a stable build and could keep using source control. Overall, I got a good Swift refresher, a good iOS architecture refresher (view, model, view controller), and some practice using CocoaPods and external packages. 

## Authors

@me here

## Acknowledgments

I followed the first 10 videos of this 20 video [series](https://www.youtube.com/watch?v=Mroju8T7Gdo&list=PL5PR3UyfTWvdlk-Qi-dPtJmjTj-2YIMMf).

