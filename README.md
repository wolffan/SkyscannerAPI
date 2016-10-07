# SkyscannerAPI
Example project for the Skyscanner API usage

# Documentation

Thanks for checking out our API - we're excited to see what you will build with our Flights and Car Hire data. We've compiled this guide to give you some pointers to get the most out of this Hackathon.

	Please use the same email address you have provided to the Hackathon organiser when signing up for 	the API!
	
##Picking the right dataset

You can access Skyscanner datasets in a few different ways. We want you to get started with our data as quickly as possible so you can focus on building your project! 
The [APIs we provide](http://business.skyscanner.net/portal/en-GB/Documentation/ApiOverview%5D):

* Live Pricing for [Flights](http://business.skyscanner.net/portal/en-GB/Documentation/FlightsLivePricingList) and [Car Hire](http://business.skyscanner.net/portal/en-GB/Documentation/CarHireLivePricing%5D) Searches (Might add some deeplink to actual skyscanner pages here for demonstration/context?)
* Cached Prices for Flights Searches. Before you jump right in to either API consider how our data fits in to your project.

Used the **Browse Cached Pricing API** if your project:

* Require a single price between specific airports or a list of prices between all airports in a city or country (to another city, country or worldwide)
* Not require any comparison of prices on specific routes
* Require minimal setup, or if you're new to HTTP APIs, Response Headers and Polling.

Browse Cached Pricing is a really great place to start. If you require price comparison or Car Hire prices then take a look at the **Live Pricing API**.

We encourage you to start with the **Browse Cached Pricing API** unless you definitely need Live Pricing and are comfortable with HTTP APIs.

	We want to see what you can build with our data! Spend your time wisely and focus on buidling as much of your project as you can.

Upgrading from **Browse Cached Pricing** to **Live Pricing** can always be done later!

##Accessing the API

Accessing the Skyscanner API is super simple:

1. Sign up here. Remember to use the same email address you have provided to the Hackathon organiser! Only one team member needs to sign up.
2. Fill in some details in you Account Settings and then go to the Dashboard
3. In the Add Apps section of the Dasbhoard, add a new Travel API and name it after your Project or Team Name.
4. You should see your API key appear in the Apps section of the Dashboard - you're good to go 
5. Replace the `<API_KEY>` (including the angle brackets!) with the API key in your dashboard. <http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/GB/GBP/en-GB/LHR/CDG/2017-02-11/2017-02-15?apiKey=<API_KEY>>
6. Open the URL in your browser and you'll see an XML representation of some prices from London Heathrow to Charles de Gaulle from 11/02/2017 to 15/02/2017 (you can get JSON by setting the Accept header to `application/json`).
7. (Optional) Try out the [Live Pricing API Test Harness](http://business.skyscanner.net/portal/en-GB/Documentation/FlightsLivePricingQuickStart).

##Tell Us What You're Building

We'd love to hear what you're up to - show us how you're changing the world! Tweet us with a link to your project.

##Some Project Ideas

We'd love to see what inventive project ideas you'll come up with during this Hackathon but if you're a bit stuck then you could try something like this:

* Meet Your Friends - Imagine you have a group of friends who live in different countries or cities, can you create a way for you and your friends to meet up using our data?
* Trip Planning - There's more to travel than how you get there! How could you improve the planning process? Could you make it easier to track your holiday when you're there?
* Events and Gigs - Lots of people travel for events: World Cup, F1, Festivals. Can you bring together this information in a new way?
* 
Think about how **you travel**. Build something you wish you had!

Happy Hacking!
