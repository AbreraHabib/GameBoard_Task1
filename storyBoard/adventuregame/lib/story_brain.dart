//-TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//-TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
  List<Story> _storyData = [
    Story('Story0:\nDon\’t chase happiness. Enjoy your life.',
        'Choice 1: Go to Story # 2', 'Choice 2: Go to Story # 1'),
    Story(
        'Story1:\nWorrying won\’t solve your problems, it\’ll just waste your time and energy.',
        'Choice 1: Go to Story # 2',
        'Choice 2: Go to Story # 3'),
    Story('Story2:\nLuck won\’t favor always.', 'Choice 1: Go to Story # 5',
        'Choice 2: Go to Story # 4'),
    Story(
        'Story3:\nDon\’t value the things you have in your life. But value who you have in your life.',
        'Choice 1:  Finished!!!Restart it',
        'Choice 2:  Finished!!!Restart it'),
    Story('Story4:\nTake responsibility or you will learn your lesson.',
        'Choice 1:  Finished!!!Restart it', 'Choice 2:  Finished!!!Restart it'),
    Story(
        'Story5:\nOne should help others in need, we get the rewards of our helpful acts in return.',
        'Choice 1:  Finished!!!Restart it',
        'Choice 2:  Finished!!!Restart it'),
  ];

//-TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
//Done this to do
//-TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.
//Updated
//-TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//-TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//-TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

//-TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.
//done
//-TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;
//-TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

//-TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//-TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.
//done with this todo
//-TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that restarts the storyNumber to 0.
  void restart() {
    _storyNumber = 0;
  }

//-TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    if (_storyNumber < 3) {
      return true;
    } else {
      return false;
    }
  }
}
