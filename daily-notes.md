# Makers daily notes

### Day 1 - Monday 11th November 2019

- Nice first day! Met my cohort-mates and had the opportunity to chat in small groups, getting to know each other. Also went for lunch with a few of them to Spitalfields Market and was fun.
- Really enjoyed how logically Alice elaborated our motivations to become software developers, while integrating our comments. It was very organic.
- Found very interesting the pyramid "concretes" -> "concept" -> "process" -> "behaviour", from bottom to top. The course will focus on the top 2, while touching on the bottom two, which are easier to be learnt on your own.
- Alice suggested to book more than 4 reviews throughout the entire course, since not everybody is going to need 4. The advice is to start from week 6, but, if confident, even after week 2.
- Will try to write down my learning progress following the "goal" -> "do / practice" -> "reflect" structure. The "reflect" part also includes "can I explain it to someone else?", which leads to validation.
- Enjoyed Dana's energy and I am looking forward to the yoga session tomorrow. My spirit animal is "eagle", to describe a sometimes solitary soul who likes movement.

### Day 2 - Tuesday 12th November 2019

- Discussed about week 1 goals:
  - TTD a simple program using objects and methods.
  - Pair using the driver-navigator style.
  - Follow an effective debugging process.
  - Describe some basic OO principles like encapsulation, SRP.
- How to validate goals at the end of week 1:
  - Getting feedback from the pairing partner and coaches.
  - Screen recording and commit history.
  - Reflection.
  - Take breaks.
  - Be mindful about who is time to drive.
  - Write down an explaination or blog post about how to pair well.
  - Create a diagram of the process of debugging to describe it to someone else.
- The debugging workshop was very interesting and I learnt the systematic approach for understanding what the problem is and how to fix it:
  - Tighten the loop: read carefully error messages, the bug is in the line of code closest to the named error. 
  - Get visibility: use `p` to inspect the code, never put it at the end of a method as it might change its behaviour.
- Type of errors: SyntaxError and RuntimeError (NameError, ArgumentError etc.).
- I paired with Harry. The most challenging thing was being able to talk while getting my head around the current task.
- The challenge for the week is "boris-bikes". The learning objective covered today are:
  - Transform an user story (*short, simple descriptions of a feature told from the perspective of the person who desires the new capability, usually a user or customer of the system*) into a domain model (*an abstraction (a model) of an area of interest (domain)*).
  - Define a feature test: *the process of making changes in software system to add one or more new features or to make modifications in the already existing features*.
  - Define a stack trace: *a report of the active stack frames at a certain point in time during the execution of a program*.
  - Use `irb` to run a feature test: `dock_station = DockStation.new` (before even creating the DockStation class).
  - Explain how to use a stack trace to debug errors.
  - Debug an error using a stack trace.
  - Define RSpec as a testing framework
  - Create a spec file.
  - Describe an object using a specification.
  - Set up a Unit Test.
  - Pass a Unit test.
  - Use `require`.
  - Move between Feature and Unit Test.
  - Write a RSecp test using`it`.
  - Test that an Object responds to a Message.