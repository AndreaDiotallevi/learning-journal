# Week 7 Notes

[Monday](#monday-6th-january-2019) | [Tuesday](#tuesday-7th-january-2019) | [Wednesday](#wednesday-8th-january-2019) | [Thursday](#thursday-9th-january-2019) | [Friday](#friday-10th-january-2019)

By the end of the week all developers can:

- Build a front-end app in Javascript
- Work competently in Javascript *
- Reason about asynchronous behaviour in Javascript

* This week is analogous to week 2 in that developers will be wrestling with some underlying language concepts that are not well understood (by Makers).

Most of the work and interventions we have run historically are meant to 'de-magic' Javascript and force developers to confront the pieces they are glossing over in an attempt to get work done.

## Monday 6th January 2019

- **Michael's answers to my questions**

  - A controller route should contain instructions in relation to the HTTP header (get, post, etc.) and the resource (```/themes/:id```). It is best not to manipulate data not in relation with that resource.
  
  - The location of forms and how the user inputs data depends on the interface we want to achieve. As long as when a new user is registering, we use a post request, it doesn't matter whether we create a new page for it or not (```users/new```).
  
  - URIs don't necessarily need to contain the resource id (```blogs/:id```). They can show the title and you can find that resource by title (```blog/the-new-blog```).
  
  - When you need to persist data, it is ok to have a single ```ajax``` request with different variables inside (temperature, power saving mode, city).

  - Also in the real world log in can be done with cookies and sessions.
  
  - If you want to build a portfolio with no user interaction, you don't need and api. It can be just a static website (check ```jekyll```).
  
  - REST is just a convention. SOUP is another one for instance.
  
  - The database is used to store data. Operations and calculations on the data should be carried out by the model.
  
- **Writing tests without a testing library**

  Test:
  
  ```js
  // assert.js

  var assert = {
    isTrue: function(assertionToCheck) {
      if (!assertionToCheck) {
        throw new Error("Assertion failed: " + assertionToCheck + " is not truthy");
      }
    };
  };
  ```

  ```js
  // circle-tests.js

  function testCircleRadiusDefaultsTo10() {
    var circle = new Circle();
    assert.isTrue(circle.radius === 10);
  };

  testCircleRadiusDefaultsTo10();
  ```
  
  Code:
  
  ```js
  // circle.js

  (function(exports) {
    function Circle() {
      this.radius = 10;
    };

    exports.Circle = Circle;
  })(this);
  ```

- **Immediately Invoked Function Expression (IIFE)**

  ```
  (function() {
    console.log("hi");
  })();
  ```
  
  [JavaScript Module Pattern](https://github.com/makersacademy/course/blob/master/pills/javascript_module_pattern.md)
  
  
