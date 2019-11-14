# Makers daily notes

[Day 1](#day-1) | [Day 2](#week-2) | [Day 3](week-3) | [Day 4](#week-4)

### Day 1 - Monday 11th November 2019

- Nice first day! Met my cohort-mates and had the opportunity to chat in small groups, getting to know each other. Also went for lunch with a few of them to Spitalfields Market and was fun.
- Really enjoyed how logically Alice elaborated our motivations to become software developers, while integrating our comments. It was very organic.
- Found very interesting the pyramid "concretes" -> "concept" -> "process" -> "behaviour", from bottom to top. The course will focus on the top 2, while touching on the bottom two, which are easier to be learnt on your own.
- Alice suggested to book more than 4 reviews throughout the entire course, since not everybody is going to need 4. The advice is to start from week 6, but, if confident, even after week 2.
- Will try to write down my learning progress following the "goal" -> "do / practice" -> "reflect" structure. The "reflect" part also includes "can I explain it to someone else?", which leads to validation.
- Enjoyed Dana's energy and I am looking forward to the yoga session tomorrow. My spirit animal is "eagle", to describe a sometimes solitary soul who likes movement.

### Day 2 - Tuesday 12th November 2019

- Week 1 goals:
  - TTD a simple program using objects and methods.
  - Pair using the driver-navigator style.
  - Follow an effective debugging process.
  - Describe some basic OO principles like encapsulation, SRP.
- Discussed about how to validate goals at the end of week 1:
  - Getting feedback from the pairing partner and coaches, screen recording and commit history.
  - Taking breaks, being mindful about whose time to drive, writing down an explaination or blog post about how to pair well.
  - Create a diagram of the process of debugging to describe the concepts to someone else.
- Really enjoyed the debugging workshop, and got the systematic approach for understanding what the problem is and how to fix it:
  - Tighten the loop: read carefully error messages, with the bug being in the line of code closest to the named error.
  - Get visibility: use `p` to inspect the code, but never put it at the end of a method as it might change its behaviour.
- Type of errors: SyntaxError and RuntimeError (NameError, ArgumentError etc.).
- Paired with Harry. The most challenging thing was being able to talk while getting my head around the current task.
- The challenge for the week was "Boris-bikes" and the learning objectives covered today were:
  - Transform an User Story (short, simple descriptions of a feature told from the perspective of the person who desires the new capability, usually a user or customer of the system) into a Domain Model (an abstraction, model of an area of interest, domain).
  - Define a Feature Test: the process of making changes in software system to add one or more new features or to make modifications in the already existing features.
  - Define a stack trace: a report of the active stack frames at a certain point in time during the execution of a program.
  - Use `irb` to run a Feature Test: `dock_station = DockStation.new` before creating the DockStation class.
  - Explain how to use a stack trace to debug errors, debug an error using a stack trace.
  - Define RSpec as a testing framework, create a spec file, describe an object using a specification.
  - Set up a Unit Test, pass a Unit test, move between Feature and Unit Test.
- Yoga was amazing. It was the first time in my life I have ever done a yoga session and I really loved it. Will be there on Thursday as well!

### Day 3 - Wednesday 13th November 2019

- Pairing with Jade was so much fun! At the end of the session we had a great chat and highlighted the following feedback points:
  - Well respected driver and navigator roles, letting the driver think and find the right solution, with the navigator supervising and googling questions.
  - Balanced interaction opposed to one sided.
  - Both of us had a chance to verbally explain a concept to the other person (the attr_accessor role to Jane and the Feature Test objective to me), and we both understood it well.
  - Relaxed and free to speak honestly since the beginning, making a lot of fun jokes.
  - Very motivated and assertive throughout the process with a good team spirit.
  - Celebrated failures and successes with a positive attitude.
  - Let the other person try out things without imposing ourselves.
  - Sometimes anticipating the thought or the pairing partner helping to smooth the process.
  - Not getting mad at each at the end, regardless the consistent error messages on the screen.
  - Probably we should have taken more breaks, but we both enjoyed the experience and were happy to continue coding.

  ### Day 4 - Thursday 14th November

  - The TDD workshop was great, with continuous interaction and practical examples.
  - What is TTD? A process of writing tests to guide the writing of code to meet the user needs.
  - Why to use it? To help breaking down the problem, to serve as documentation, to act as a safety net (true for tests in general).
  - Piggy bank example. The detailed TDD process includes the following steps:
    - Define user needs: store money, discourage people from taking it out, destroy and take all the money out, shake it to find out if there is money.
    - Write user stories:
      - As a user (entity that can do the things - this line is less useful until we have several roles in a program, like owner, guests etc.).
      - So I can save money (context - it doesn't describe the method and it is not integral part of the functionality of the program).
      - I want to store it in a piggy bank (most important line).
    - Define a domain model (nouns & verbs, objects & messages).
    - Write a feature test:
    
      `piggy_bank = piggyBank.new`

      `piggy_bank.store(1)`

      => `"clink"`
    - Write a unit test: to test something, ask yourself what is the behaviour of the think you want to test - with an input / output table.
      - Input: 1    Output: "clink"
      - Input: 2    Output: "clink"
      - Input: 0    Output: nil
    - Rspec: only syntax to remember is `describe`, `it`, `expect` and the matchers `.to eq`, `.to raise_error`, `.to output`.
    - Refactor the code if necessary.
    - Continue writing tests until you feel the method is covered.
    - Testing state v behaviour: the test is written from the point of view of the user. You should never look inside, but instead use methods to check things inside the class. As soon as the user needs something, the store method will need to change, but not the tests.
    - Rspec -fd: shows a more detailed message.



