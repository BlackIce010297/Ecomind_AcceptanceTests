#User Story 27: Explanatory videos
#title hu27-explanatory-videos
Feature: Explanatory videos
  As a student
  I want to watch explanatory videos within the application
  So that I can reinforce what I read in the guides

  Scenario: Successful playback of an explanatory video
    Given the student accesses an educational guide
    When they select "Watch explanatory video"
    Then the application opens the video player
    And plays the video from the beginning

  Scenario: Unsuccessful video playback
    Given the student accesses a video
    When the video file is not available on the device
    Then the application shows the message "This video is not available"
    And does not start playback
