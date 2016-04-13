Built with Rails version 4.2.6


# Overview

**MilkNook** is an application that pairs breast milk donors who have a desire to help others with families that have a need for milk. At the moment, there are few marketplaces for the trading of breast milk and the donation of milk to a bank results in donated milk being sold for a price that is unaffordable for many families. Additionally, a milk bank requires a minimum donation from a given donor. 

Another issue related to this market is the selling of breast milk online, to be sent through the mail, without any oversight or insurance of quality. Breast milk purchased through dealers online have been found to contain viruses and bacteria such as salmonella. 

Though the above model is similar to the one that the MilkNook application would create, MilkNook’s aim would be to improve general safety by limiting the geographical scope of inquiries and sponsorships. Transactions through the site would be within easy driving distance, and encouraged to be among friends or friends of friends. Transactions outside of these parameters would be best facilitated through a milk bank or online marketplace. 

The point of this application is not to replace either of the aforementioned distribution vectors, but rather to appeal to that relatively small group of users within a given geographical area for whom both the free redistribution of resources to those in need and a moderate increase in safety is appealing.    



# Goals

- Create a web-based application to post simple profiles of infants in need, with the structure to assist mothers who would like to make a, however large or small, commitment to “sponsor” an infant of their choosing. 

- Tie the application in with Facebook to prevent anonymous users, and give control of the community itself to some form of democratic moderation.



# Specifications

MilkNook will be a database-driven Rails application with Facebook authentication with the future possibility of some other API integration.



# Milestones

**Minimum-Viable Product**

- Users can create an account with a short profile and statement of need.
- Users can create an account and view profiles of families in need, and make a pledge of support.

**Stage 2**

- Users can sign in with Facebook.
- Users can see the social proximity (in her Facebook network) of another given user.

**Stage 3**

- Users can schedule meetups, and view safe(r) sites for those meetings.
- Users can give their friends’ requests their endorsement, assuring further assurances of safety.
  


# UX

- User arrives at the website with the intention of either requesting a sponsorship from the community or offering a sponsorship or pledge of milk. 
On the homepage, there is a mission statement and a short description of the purpose for the site. 

- User clicks on “make an account”, and is led through a process of authentication including setting up a username and password. Required contact information is an email and an area e.g. Northwest Omaha, Midtown Omaha, Elkhorn, etc.

- Once logged in, the user is brought to a personal dashboard with a choice of making a short statement of need (each user may have only one request at a time) or browsing existing requests to potentially sponsor another user. 

- When a request is submitted, it is checked for spam, proper location, requests for or offers of money, and any other concerns, by site admin before being posted to the public. Once approved, a request cannot be edited. It can only be deleted and re-submitted for approval.

- When an offer of sponsorship is made, it is also checked for concerns by admin, and submitted to the requester for user approval. Along with the request, the site will offer safety guidelines ex: meeting in a public place.  
