Hangman: a scaffolded (!) Software As A Service
=============================================================

This project demonstrates the basic cycle of SaaS development in a disciplined way.

What we Accomplished
--------------
* Created and deploy simple SaaS apps in your development environment, and deploy them to the public cloud
* Practice the basic workflow of test-driven development (TDD), in which tests are written before the code (so they fail when first run) and code is then added to make them pass
* Understand how SaaS frameworks such as Sinatra support the conceptual components of a three-tier SaaS application architecture
* Understand the challenges of adapting a non-SaaS application to a SaaS environment, including how to identify and manage application state
* Understand one use case of service-oriented architecture, in which your SaaS app relies on an external service's API (application programming interface) to provide part of the SaaS app's functionality.

Skills Required and References
-------------------------------
* Profficient in the Ruby Programming Language
* Usage of automated testing with cucumber
* Usage of Git, pushing code to GitHub (http://www.saasbook.info)
* Basic Unix command-line skills and facility with an editor to edit code files
* [ESaaS](http://www.saasbook.info) Chapter 2, "The Architecture of SaaS Applications"
* [MOOC](http://www.saas-class.org).


Development Proccess
--------------------
The full Agile/XP cycle we follow in ESaaS includes talking to the customer, using BDD to develop scenarios, turning those scenarios into runnable integration/acceptance tests with Cucumber, using those scenarios plus TDD to drive the creation of actual code, and deploying the result of each iteration's work to the cloud.

In this introductory assignment, we've provided RSpec unit tests to let you use TDD to develop game logic for the popular word-guessing game Hangman.  In the full Agile/XP cycle, you'd develop these tests yourself as you code.

You'll then use the Sinatra framework to make the Hangman game available as SaaS.  Adapting the game logic for SaaS will introduce you to thinking about RESTful routes and service-oriented architecture. As you develop the "SaaS-ified" Hangman game, you'll use Cucumber to describe how gameplay will work from the player's point of view and as "full stack" integration tests that will drive SaaS development.  In the full Agile/XP cycle, you'd develop Cucumber scenarios yourself based on consultation with the customer, and create the necessary *step definitions* (Cucumber code that turns plain-English scenarios into runnable tests).  In this assignment we provide both the scenarios and step definitions for you.

You'll deploy your game to the cloud using Render, giving you experience in automating SaaS deployment.


**Before you get started**

Run the command `rvm install 2.6.0` in your terminal.
Run `bundle` to install all gems.

Contents
---------

* Part 0: [Demystifying SaaS app creation](docs/part_0_create_saas_app.md)
* Part 1: [Hangperson](docs/part_1_hangperson.md)
* Part 2: [RESTful thinking for HangPerson](docs/part_2_restful_thinking.md)
* Part 3: [Connecting HangpersonGame to Sinatra](docs/part_3_connecting_hangperson_to_sinatra.md)
* Part 4: [Introducing Cucumber](docs/part_4_cucumber.md)
* Part 5: [Corner Cases](docs/part_5_corner_cases.md)
* Part 6: [Conclusion](docs/part_6_conclusion.md)
* Part 7: [Optional Challenge Assignment](docs/part_7_optional_challenge.md)
