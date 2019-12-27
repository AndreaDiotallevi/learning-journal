# Week 6 Notes

[Monday](#monday-16th-december-2019) | [Tuesday](#tuesday-17th-december-2019) | [Wednesday](#wednesday-18th-december-2019) | [Thursday](#thursday-19th-december-2019) | [Friday](#friday-20th-december-2019)

By the end of the week all developers can:

- Break down projects into tasks and allocate them to pairs
- Build to a specificiation (rather than challenges)
- Run stand-ups and retrospectives
- Use a branch/PR/merge git workflow
- Give and receive meaningful code review

## Monday 16th December 2019

- **MakersBnB group project setup**

- **Retro**

  - Sam:
    I think we got quite a bit done
    We have been courteous
    We weren’t as direct and it cost us some time deliberating; How direct should we be?
    Excited to see
    I learned restful APIs
    
  - Tuan:
    Happy with everything
    We had all the basic features done, everything is set up for unit tests
    We could have maybe drawn more diagrams/planned out better (visually etc.)
    
  - Andrew:
    It was good to get something up and running quickly
    It helped to think more about the user stories; better idea of what’s needed
    Agrees with Andrea that we should have planned more thoroughly, but now we can use it to our advantage
    We should whiteboard site navigation after this retro
    Plan some, write code, reflect - more reviews mean a better gauge of direction towards end-goal
    We should split into pairs early to get things going quicker
    
  - Andrea:
    Feels we underestimated the difficulty of the challenge
    We may have been overcomplicating things too soon
    I’d prefer not to get too far ahead without a firm grasp on the basics
    'I was confused for a portion of the day’ - best to work systematically
    Happy with Active Record
    The amount of work we do isn’t an indicator of how the day went

  - Plan of action (evening):
    Everyone: think of database structure
    Andrea: look at restful routes, maybe ask a coach on specific issues
    Tuan: look at restful routes
    Andrew: Trello
    Sam: Think through rough class diagrams as they work with active record
    
## Tuesday 17th December 2019

- **Retro**

  - Andrea:
    Improved compared to previous day
    More clarity 
    Structured pairing and splitting task was great
    No problems with conflict
    Happy with half day split and mid day discussion
    Code review feedback, feels rushed
    Code review pushed to after lunch
    
  - Sam:
    Went well
    Uncomfortable with adjusted our whole layout to mock instead of following our own plan as real world wouldn’t be given a such mock-up but understands 
    It went well smoothly because we did some reading towards at home from yesterday retrospective
    Less aprehension compared to the day before
    Wish we could of ended the day with all passing test
    Our targets was too set too high for today
 
  - Andrew:
    Today went well
    Got a lot done
    Also happy with the delegation of task
    Focus and efficient
    
  - Tuan:
    Very happy with my the group collaboration and split into pairing
    1 step away from producing a MVP 
    Feels like we didn’t rush anything
    
  - Home study for the night
    Andrew: Read through the specs of additional requirements
    better understand in active records docs
    
## Wednesday 18th December 2019

- **Summary of days achievments**

  - Morning code review
  - Group merging session, went smoothly (VS code worked well for sorting merge conflicts)
  - Group stand up to discuss the activities for the day, most of the session was discussing the database structure for converting requests into bookings although other activities were listed (see previous image)
  - Debated 2 options for the bookings database
    1. Requests get transferred to a separate booking table when confirmed
    2. Add an extra column “status’ column to the requests table with options “Not Confirmed”,”Confirmed” or “Denied"
  - The final decision was to add an extra column to the request table with status
  - Group split 3:1, 3 looked at handling received requests/confirmation/database updates to suit, 1 looked at how to implement a calendar with greyed out invalid dates
  - Implememented the calendar into the main application

- **Retro**

  - Tuan:
    Prefers pairing to mobbing. Sees himself as more effective in a pair
    Happy with progress

  - Sam:
    Starting to appreciate Andreas’ approach of ‘doing less, but doing it well and in the correct process'
    The day less structured because of bugs
    Thought splitting small tasks like the calendar to one person worked well, should consider similar in the future
    Starting to get a better understanding of other peoples perspectives, feels will help for the remaining days of the week Feels like will understand everyones perspectives better tomorrow

  - Andrew:
    Initial thoughts were the day didn’t go as well as Tuesday when we worked in pairs. However on closer reflection this is probably biased by the fact that today had some more complex problems to solve, hence more bugs
    Agree with Sam that splitting smaller intricate tasks to a single person to solve can work well and definitely something to consider for the remainder of the week.
    Like the fact that there are strong personalities in the group with lots of opinions, this will likely lead to some differences of opinion but this is what makes a healthy project team. Its certainly better than the opposite where no opinions are given so we should embrace it
    And despite the strong personalities I feel we are resolving any differences in a efficient mature manner.

  - Andrea:
    Liked the review process in the morning, where everyone separated for 15-20 mins to individually review and comment on the code (worked better than the group reviews previously)
    Merge process was smooth, thought the VS code interface for resolving merge conflicts worked well. Perhaps should share around the driver for merging.
    Asked an open question: Should the standup be open or more structured? (Perhaps decide at the next standup???)
    Liked we tried a different way of pairing 3 and 1
    Maybe have more breaks - not enough balance between team bonding and task in hand
    
## Thursday 19th of December 2019

- **Retro**

  - Sam:
    Delegated tasks properly
    A lot of tough challenges that we got in the end
    Went a lot smoother in the standup
    Happy with everything
    Happy with pairing with Andrew - learnt a lot
    Merge went smoothly
    We should freeze features
    
  - Tuan:
    Pairing went really well
    Would have liked to be there when we merged everything in the end
    Standup in the morning - enjoyed that each of us had our own time to talk

  - Andrew
    Pleased how much we learnt on the calendar thing - it was tough to get it to work properly
    The morning standup wen well with the individual talking intent
    Would like to layout the app nicely
    Had a look at JOSN but probably it is not to implement now

  - Andrea
    Pleased how we improved in all fronts 
    Split the work work well
    Improved communication
    Took breaks and went for lunch together
    Happy about the app in terms of functionality
