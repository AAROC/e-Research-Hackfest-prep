This is the master checklist for a Sci-GaIA Open Science Hackfest. There are more specific checklists for each of the specific actors

  * [organisers](organisers/checklist.md)
  * [service deployment](services/checklist.md)
  * [participants](participants/checklist.md)

# Event overview

  1. **Open the dances** :
     1. [ ] Decide where and when to have your event.
     1. [ ] Pick a name for the event ( _e.g._ 'Area Hackfest')
     1. [ ] Set up a page with a link to the survey
  1. **Send a call for applications** with a deadline giving suffient time to arrange travel and accomodation for participants
  1. **Select participants** :
     1. [ ] Create a review committee and set a deadline by which reviews should be done.
     1. [ ] Create a mailing list for the selected [participants](#MailingList)
     1. [ ] Send notification to passing applicants, with a [welcome pack](participants/welcome-pack.md) (TODO)
     1. [ ] Request that all participants [register for the event as soon as possible](#registration) - Send periodic reminders to those who have not registered.
    1. Request that the participants complete the [participant checklist](participants/checklist.md)
  1. **Create the event prep website**
     1. [ ] clone the master website
     1. [ ] Create the new repository where you will host your event
     1. [ ] Update the event metadata
     1. [ ] Update team metadata
     1. [ ] Publish the website
     1. [ ] Update the sci-gaia website with link to the hackfest prep website.
     1. [ ] Send update email to registrants with links to the checklists
  1. **Create the event issues board** - TODO
  1. **Deploy services for the event** - TODO
     1. **CI/CD** - Configure the Jenkins CI environment for the projects - TODO
     1. **Dev Environment** - Deploy the dev environment for the warmups - TODO
     1. **Integration platform** - Deploy the integration platform OSP components - TODO
  1. **Check content** - TODO
  1. **Populate the Agenda** - TODO.
  1. **Run final tests** - TODO
  1. **Execute the event** - TODO
      1. **OSP component overview** - TODO
      1. **Use Case presentaitons** - TODO
      1. **The Hack** - TODO

# The event


## Event venue

It's the organiser's job to identify and book a suitable room (or rooms) for the workshop.

You'll need a room with:

  * Front-facing tables so that attendees can watch an instructor and use their laptop at the same time.
  * High-speed WiFi or network access that can withstand everyone using it at the same time. It is good practice to ensure that there are redundant access points. Wired access points are always preferable.
  * Power outlets for all the computers. This often involves extension cords; make sure they're taped down.
  * Space for mingling without squeezing between chairs and tripping over cables. This is essential: if helpers cannot reach learners who are having problems quickly and easily, those learners will fall further and further behind as the day goes on. Again, theater-style lecture rooms are not recommended as their banked floors and fixed seating makes it very difficult for helpers to mingle.
  * High table or one that can be raised, to allow instructors to stand when live coding.
  * A microphone if the room is large or has poor acoustics, or if the workshop will be recorded.
  * Disabled access. (Make sure the washrooms are accessible as well.)
  * Air-conditioning, because all those computers (and attendees) will generate a lot of heat.
  * Space to serve coffee and snacks, because learning is hungry work. A separate room is ok - consider whether the refreshment arrangements will disrupt proceedings.

## Event Equipment

In addition to booking a room and catering, the organiser is responsible for providing an assortment of equipment and supplies for the workshop. The organiser should check that the following equipment and information is available and working:

  * A **projector** (and a spare if you can find one, or a spare bulb if you can't).
  * A Mac **VGA adapter** if anyone is presenting with a Mac.
  * **Extension cords** and power bars if necessary.
  * Two different colors of **sticky notes** for use as flags and for feedback during the first two days
    - You'll need enough for each learner to have four of each color per day.
    - The two colors should be very distict and preferably clearly recognizable as "good" and "bad"—red and green work well (but be conscious of color vision deficiencies).
  * If possible, a couple of **spare computers** in case someone can't get access to the network, forgets their machine, has hardware problems, etc.
  * **Sneakernet** - A handful of USB sticks in case there are network problems, for distributing large files (docker / VM images, source tarballs, _etc_ )
  * **Photo release forms** (if required).
  * Name **badges** or stickers for instructors, helpers, and attendees.

# Notes and Suggestions


## Mailing Lists <a id="MailingList"></a>
If you don't have an easy way to create mailing lists, you can use [MailGun](http://www.mailgun.com/) or [SendGrid](https://sendgrid.com/) to quickly set up mailing lists with REST APIs.

# Credit

Inspired by [https://software-carpentry.org/workshops/operations/](Software Carpentry workshop operations.)
