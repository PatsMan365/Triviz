//
//  TopicTableViewController.swift
//  Triviz
//
//  Created by Rohan I on 12/1/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//

import UIKit

class TopicTableViewController: UITableViewController {

    //MARK: Properties
    
    var topics: [Topic] = []
    
    //MARK: Private Methods
    
    //private func loadTopicsFromGame(_ aGame: Game) {
    //    self.topics = aGame.topics
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        let questionOne = Question(question: "Who scored the winning goal in the 94th minute to tie up the game against Borussia Dortmund from a 4-0 deposit at halftime?", arrayOfAnswers: ["Naldo", "Harit", "Di Santo", "Meyer"],  learnMore: "http://www.bbc.com/sport/football/42115328", correctAnswer: 0)
        
        let questionTwo = Question(question: "Which team beat Burnley 1-0 to rise to fourth place in the Priemer League table?", arrayOfAnswers: ["Manchester City","Southampton", "Arsenal", "Tottenham Hotspur"], learnMore: "http://www.telegraph.co.uk/football/2017/11/26/burnley-vs-arsenal-premier-league-live-score-updates/", correctAnswer: 2)
        
        let questionThree = Question(question: "How many goals were scored by Real Madrid against Malaga?", arrayOfAnswers: ["3","5", "2", "1"], learnMore: "http://www.bbc.com/sport/football/42115314", correctAnswer: 0)
        
        let questionFour = Question(question: "Which team has yet to earn a single point in the Serie A(Matchday 12)?", arrayOfAnswers: ["Las Palmas","Benevento","SPAL", "Cordoba"], learnMore: "https://en.wikipedia.org/wiki/Benevento_Calcio", correctAnswer: 1)
        
        let questionFive = Question(question: "Which Dallas quarterback recently beat the Redskins 38-14 by throwing two passes for a touchdown?", arrayOfAnswers: ["Tony Romo","Dak Prescott", "Kurt Cousins", "Tom Brady"], learnMore: "http://www.sportingnews.com/nfl/news/dallas-cowboys-washington-redskins-score-live-updates-results-highlights-thursday-night/2g40pqoh9il01qaa5zd8qs6ea", correctAnswer: 1)
        
        let questionSix = Question(question: "Which two European teams are in Peru's World Cup group matchup?", arrayOfAnswers: ["France and Sweden", "Italy and Germany", "Iceland and Poland", "France and Denmark"], learnMore: "http://www.telegraph.co.uk/football/2017/12/01/world-cup-draw-2018-live-updates-england-latest/", correctAnswer: 3)
        
        let questionSeven = Question(question: "Which European nation did not qualify for the 2018 World Cup?", arrayOfAnswers: ["Poland","Iceland", "Chile", "Italy"], learnMore:"http://www.telegraph.co.uk/football/2017/12/01/world-cup-draw-2018-live-updates-england-latest/", correctAnswer: 3)
        
        let questionEight = Question(question: "Which person took over as the Tennessee Assistant Director in college football?", arrayOfAnswers: ["Phillip Fulmer", "Jose Mourinho", "Bill Besic", "Marco Reus"], learnMore: "https://www.seccountry.com/tennessee/tennessee-football-vols-phillip-fulmer-players-react", correctAnswer: 0)
        
        let questionNine = Question(question: "Which Rams player recently got fined for a hit on a New Orleans tight end?", arrayOfAnswers: ["Brandon Allen", "Mark Barron", "Blake Countess", "Malcolm Butler"], learnMore: "http://profootballtalk.nbcsports.com/2017/12/01/blake-countess-fined-24308-for-hit-on-coby-fleener/", correctAnswer: 2)
        
        let questionTen = Question(question: "What is the Patriots current win streak in the 2017-2018 NFL season?", arrayOfAnswers: ["7", "9", "2", "1"], learnMore: "https://www.cbssports.com/nfl/news/nfl-odds-picks-week-13-advanced-computer-model-loves-patriots-and-titans/", correctAnswer: 3)
        
        let questionEleven = Question(question: "In the sport of cricket, who was the winner of the most recent match of New Zealand vs the West Indies?", arrayOfAnswers: ["New Zealand does not play cricket", "New Zealand", "West Indies", "The West Indies do not play cricket"] , learnMore: "http://www.firstpost.com/firstcricket/sports-news/live-new-zealand-vs-west-indies-1st-test-day-2-at-wellington-scores-and-updates-4237705.html", correctAnswer: 1)
        
        let questionTweleve = Question(question: "Pei Hwa Prebyterian Highschool just won their national chapionship in which sport where players throw balls on a net as hard as possible?", arrayOfAnswers: ["Tchoukball","Basketball","Volleyball","Water Polo"], learnMore: "https://en.wikipedia.org/wiki/Tchoukball", correctAnswer: 0)
        
        let questionThirteen = Question(question: "What is the name of the recently created sport this year, which is identical to soccer expect hands are used to pass the ball instead of feet?", arrayOfAnswers: ["Throwball", "Arena Ball", "Handball", "Ringer"], learnMore: "http://www.topendsports.com/sport/new/ringer.htm", correctAnswer: 3)
        
        let questionFourteen = Question(question: "What team beat the Atlanta Hawks to continue on to a ten game win streak?", arrayOfAnswers: ["Rockets", "Cavaliers", "Wariors", "Bulls"], learnMore: "http://www.espn.com/nba/story/_/id/21625374/cleveland-cavaliers-extend-win-streak-10-games", correctAnswer: 1)
        
        let questionFifteen = Question(question: "Which player recently returned from an injury to support the Spurs in a win against Memphis?", arrayOfAnswers: ["Dele Alli", "Kawhi Leonard", "Pau Gasol", "Tony Parker"], learnMore: ",http://www.nba.com/article/2017/12/01/san-antonio-spurs-kawhi-leonard-closer-returning-action?collection=news#/", correctAnswer: 2)
        
        let questionSixteen = Question(question: "Throwback Question! What record setting quarterback was the 82nd draft-pick in 1979?" , arrayOfAnswers: ["Joe Montana", "John Elway", "Steve Young", "Jim Plunkett"], learnMore: "https://en.wikipedia.org/wiki/Joe_Montana", correctAnswer: 0)
        
        let questionSeventeen = Question(question: "Throwback Question! Which team did Babe Ruth play for before joining the Boston Red Sox?", arrayOfAnswers: ["New York Yankees", "Cincinnati Reds", "Baltimore Orioles", "Boston Browns"], learnMore: "https://en.wikipedia.org/wiki/Babe_Ruth", correctAnswer: 2)
        
        let questionEighteen = Question(question: "Throwback Question! How many Grand Slams does Boris Becker have?" , arrayOfAnswers: ["0", "8", "1", "6"], learnMore: "https://en.wikipedia.org/wiki/Boris_Becker", correctAnswer: 3)
        
        let questionNineteen = Question(question: "What team is currently second in La Liga?", arrayOfAnswers: ["Real Madrid", "Barcelona", "Atletico Madrid", "Valencia"], learnMore: "http://www.espnfc.com/club/valencia/94/squad", correctAnswer: 3)
        
        let questionTwenty = Question(question: "Who is the current top scorer in La Liga(after Matchday 13)?", arrayOfAnswers: ["Simeone Zaza", "Lionel Messi", "Luis Suarez", "Aritz Aduriz"], learnMore: "http://www.bbc.com/sport/football/spanish-la-liga/top-scorers", correctAnswer: 1)
        
        let questionTwentyOne = Question(question: "On Friday, December 1st, former Trump national security advisor, Micheal Flynn, pleaded guilty for what crime?", arrayOfAnswers: ["Stealing from the White House", "Spying on President Trump","Lying to the FBI", "Stealing money froma bank"], learnMore: "http://thehill.com/homenews/administration/362967-trump-tweet-on-firing-flynn-for-lying-to-fbi-was-authored-by-trumps", correctAnswer: 2)
        
        let questionTwentyTwo = Question(question: "By how many votes did the most recent GOP tax reform bill pass?", arrayOfAnswers: ["2329", "2", "3486", "23"], learnMore: "http://www.cnn.com/specials/politics/trumpmerica", correctAnswer: 1)
        
        let questionTwentyThree = Question(question: "In which country was President Kenyatta recently sworn into a second term as President?", arrayOfAnswers: ["Nigeria", "Malaysia","Kenya","Egypt"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionTwentyFour = Question(question: "Who did Donald Trump recently critize for not focusing enough on terrorism in Islamic countries?", arrayOfAnswers: ["Kenyatta","Obama","Pence","May"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 3)
        
      let questionTwentyFive = Question(question: "Which country recently created a missle powerful enough to hit Washington DC from its own country", arrayOfAnswers: ["Canada", "China", "North Korea", "Russia"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionTwentySix = Question(question: "Which state in Australia passed an act to allow doctors assist patients with terminal illnesses with sucicide?", arrayOfAnswers: ["Victoria","Tasmania","New South Wales","Sydney"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionTwentySeven = Question(question: "The deputy prime minister in what country recently resigned because she feared her government would fall apart?", arrayOfAnswers: ["Ireland", "North Korea", "United States", "Italy" ], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionTwentyEight = Question(question: "Throwback Question! Who wrote the Declaration of Independence?", arrayOfAnswers: ["John Adams", "James Madison", "Thomas Jefferson", "George Washington"], learnMore: "http://www.americaslibrary.gov/aa/jefferson/aa_jefferson_declar_1.html", correctAnswer: 2)
        
        let questionTwentyNine = Question(question: "Throwback Question! In what year did George Washington become President?", arrayOfAnswers: ["1799","1789","1802","1899"], learnMore: "https://www.biography.com/people/george-washington-9524786", correctAnswer: 1)
        
        let questionThirty = Question(question: "Throwback Question! Who was Barack Obama's runningmate in the 2008 election?", arrayOfAnswers: ["Joe Biden","Mike Pence","Mitt Romney","Donald Trump"], learnMore: "https://www.biography.com/people/joe-biden-39995", correctAnswer: 0)
        
        let questionThirtyOne = Question(question: "Former El Salvadorian President, Funes, was recently fined for what crime?", arrayOfAnswers: ["illegally entering the United States","Speeding","Drug dealing","Illicit enrichment"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 3)
        
        let questionThirtyTwo = Question(question: "In which country did citizens protest for scrapping term limit laws and letting President Morales lead for a fourth term?", arrayOfAnswers: ["Belgium","Bolivia","Peru","Brazil"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 1)
        
        let questionThirtyThree = Question(question: "What is the name of the German chancellor who desires to completely reform Germany's government?", arrayOfAnswers: ["Angela Merkel","Donald Trump","Mesut Ozil","Theresa May"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 0)
        
        let questionThirtyFour = Question(question: "A blogger in which country was arrested for seven years for protesting about oil spills in this country?", arrayOfAnswers: ["China","Saudi Arabia","Vietnam","India"], learnMore: "https://www.economist.com/news/world-week/21731878-politics-week", correctAnswer: 2)
        
        let questionThirtyFive = Question(question: "Mount Agung erupted on what Indonesian island to force more than 100,000 people to evacuate?", arrayOfAnswers: ["Bali","Java","Sumatra","New Guinea"], learnMore: "https://www.economist.com/news/asia/21731864-monitoring-them-all-no-small-task-fiery-mount-agung-just-one-127-active-volcanoes", correctAnswer: 0)
        
        let questionThirtySix = Question(question: "The most recent major tax bill debated supports what party?", arrayOfAnswers: ["Democratic","Third Parties", "Its Neutral", "Republican"], learnMore: "https://www.nbcnews.com/politics/politics-news/senate-repubicans-nearing-vote-tax-bill-after-1-trillion-snag-n825591", correctAnswer: 3)
        
        let questionThirtySeven = Question(question: "Which US city defended its 'sanctuary city' status after a shooting?", arrayOfAnswers: ["Washington DC","San Francisco","Las Vegas", "Dallas"], learnMore: "https://www.nbcnews.com/news/us-news/kathryn-steinle-killing-san-francisco-defends-sanctuary-city-status-amid-n825836", correctAnswer: 1)
        
        let questionThirtyEight = Question(question: "According to a US general, which two countries are building special space weapons to target US satellites?", arrayOfAnswers: ["North Korea and China","North Korea and Iraq","North Korea and Pakistan","China and Russia"], learnMore: "http://www.cnn.com/2017/12/02/politics/russia-china-space-weapons/index.html", correctAnswer: 3)
        
        let questionThirtyNine = Question(question:
        "Democrat Doug Joneswon the election for state Senator in which state?", arrayOfAnswers: ["Alabama","Illinois","Alaska","Oregon"], learnMore: "https://www.washingtonpost.com/politics/?utm_term=.9ed4aab3c2a9", correctAnswer: 0)
        
        let questionForty = Question(question: "Throwback Question! Who was the president during the 9/11 attacks?", arrayOfAnswers: ["George Bush","Barack Obama","Richard Nixon","Bill Clinton"], learnMore: "http://www.history.com/topics/9-11-attack", correctAnswer: 0)
        
        let questionFortyOne = Question(question: "Throwback Question! What is the highest metacritic rating for a video game of all time, out of 100?", arrayOfAnswers: ["98","100","99","96"], learnMore: "https://www.metacritic.com/browse/games.score/metascore/all/all/filtered?sort=desc", correctAnswer: 2)
        
        let questionFortyTwo = Question(question: "Which movie is based on a book published in 2012 by the author R.J. Palacio?", arrayOfAnswers: ["Wonder","Justice League","Roman J. Israel, Esq.","The Star"], learnMore: "http://www.wonder.movie/?story", correctAnswer: 0)
        
        let questionFortyThree = Question(question: "Which Netfix original series has been renewed for a season three?", arrayOfAnswers: ["Black Mirror","Stranger Things","The Good Place","Master of None"], learnMore: "http://www.cnn.com/2017/12/01/entertainment/stranger-things-season-3/index.html", correctAnswer: 1)
        
        let questionFortyFour = Question(question: "Which movie trailer has broke the record for most views in a day?", arrayOfAnswers: ["Black Panther","Star Wars the Last Jedi","Avengers: Infinity War","The Greatest Showman"], learnMore: "http://ew.com/movies/2017/11/30/avengers-infinity-war-trailer-record/", correctAnswer: 2)
        
        let questionFortyFive = Question(question: "Which artist released the album Songs of Experience?", arrayOfAnswers: ["Taylor Swift","Maroon 5","Shovels and Rope","U2"], learnMore: "http://ew.com/music/2017/12/01/u2-songs-of-experience-ew-review/", correctAnswer: 3)
        
        let questionFortySix = Question(question: "Which superhero lost his main weapon in his latest movie?", arrayOfAnswers: ["Thor","Aquaman","Batman","Wonder Woman"], learnMore: "https://www.inverse.com/article/35945-thor-ragnarok-mjolnir-destroyed-hela-powers-lightning-thunder", correctAnswer: 0)
        
        let questionFortySeven = Question(question: "What video game has the highest metacritic rating this year?", arrayOfAnswers: ["Super Mario Odyssey","Legend of Zelda Breath of the Wild for Wii U","Divinity Original Sin 2","Persona 5"], learnMore: "http://www.metacritic.com/browse/games/score/metascore/year/all/filtered?sort=desc", correctAnswer: 0)
        
        let questionFortyEight = Question(question: "Which PC Video Game has the highest metacritic rating of this year?", arrayOfAnswers: ["Legend of Zelda: Breath of the Wild","Divinity Original Sin 2","Destiny 2","Overwatch"], learnMore: "http://www.metacritic.com/browse/games/score/metascore/year/pc/filtered?sort=desc", correctAnswer: 1)
        
        let questionFortyNine = Question(question: "Which video game console is the best selling of 2017", arrayOfAnswers: ["Xbox One","Playstation Four","Xbox One X","Nintendo Switch"], learnMore: "http://www.ign.com/articles/2017/10/19/nintendo-switch-was-the-top-selling-console-in-the-us-in-september", correctAnswer: 3)
        
        let questionFifty = Question(question: "Throwback question! Which video game was the first fps.", arrayOfAnswers: ["Wolfenstein","Doom","Quake","Maze War"], learnMore: "https://www.polygon.com/features/2015/5/21/8627231/the-first-first-person-shooter", correctAnswer: 3)
        
        let questionFiftyOne = Question(question: "Who plays Donald Trump on Saturday Night Live?", arrayOfAnswers: ["Mikey Day","Kate McKinnon","Alec Baldwin","Aziz Ansari"], learnMore: "https://mic.com/articles/155471/who-plays-donald-trump-on-snl-here-s-a-preview-of-the-show-s-election-coverage#.htx7cgVJT", correctAnswer: 2)
        
        let questionFiftyTwo = Question(question: "Which cartoon has been turned into a broadway show and started running on December 4?", arrayOfAnswers: ["Spongebob Squarepants","Ninjago","Mickey Mouse","Duck Tales"], learnMore: "https://www.nytimes.com/2017/11/30/theater/whats-new-in-nyc-theater.html?rref=collection%2Fspotlightcollection%2Farts-listings&action=click&contentCollection=arts&region=rank&module=package&version=highlights&contentPlacement=2&pgtype=collection", correctAnswer: 0)
        
        let questionFiftyThree = Question(question: "Which is not one of the names of the 3 nephews in the 2017 reboot of the tv show Ducktales?", arrayOfAnswers: ["Huey","Louie","Dewey","Webey"], learnMore: "http://disneyxd.disney.com/ducktales", correctAnswer: 3)
        
        let questionFiftyFour = Question(question: "What videogames are being played professionaly in in big tournaments in the month of December?", arrayOfAnswers: ["PUBG and Starcraft 2","Overwatch and Doom","Overwatch and Mario Cart 8","Starwars Battlefront 2 and Call of Duty WW2"], learnMore: "http://www.ign.com/articles/2017/10/12/ign-esports-whats-coming-up-in-hearthstone-cod-smite-dota-2-and-more", correctAnswer: 0)
        
        let questionFiftyFive = Question(question: "Which music awards ceremony is being held this month?", arrayOfAnswers: ["The Grammys","The Oscars","The Kenedey Center Honors","The iHeart Radio Music Festival"], learnMore: "https://www.washingtonpost.com/entertainment/the-latest-kennedy-honors-held-without-the-trumps/2017/12/03/d75aa906-d87f-11e7-a241-0848315642d0_story.html?utm_term=.65a96c0a4cb5", correctAnswer: 0)
        
        let questionFiftySix = Question(question: "Which movie is being screened and includeds Denzel Washington?", arrayOfAnswers: ["Wonder","Roman J. Israel Esq.","Coco","The Equalizer 2"], learnMore: "https://www.washingtonpost.com/goingoutguide/movies/coco-and-other-movies-to-watch-with-your-kids/2017/11/22/6985fdde-cae4-11e7-b0cf-7689a9f2d84e_story.html?utm_term=.2db85c5a5782", correctAnswer: 1)
        
        let questionSixty = Question(question: "In the movie Thor Ragnarok, Bruce Banner turns into what supernatural character when he becomes angry?", arrayOfAnswers: ["Batman","Thor","Hulk","The Human Torch"], learnMore: "http://www.imdb.com/title/tt3501632/", correctAnswer: 2)
        
        let questionSixtyOne = Question(question: "Which Album has the songs Believe and Like Home", arrayOfAnswers: ["Reputation", "Songs of Experience", "Revival", "Divide"], learnMore: "https://en.wikipedia.org/wiki/Revival_(Eminem_album)", correctAnswer: 2)
        
        let questionSixtyTwo = Question(question: "Which song has the most views on Youtube", arrayOfAnswers: ["Gangnam Style","See You Again","Look What You Made Me Do","Despacito"], learnMore: "http://www.telegraph.co.uk/technology/0/most-watched-youtube-videos-of-all-time/", correctAnswer: 3)
        
        let questionSixtyThree = Question(question: "Which artist topped the Billboard top 100 artists chart for the first time?", arrayOfAnswers: ["Ed Sheeran","Eminem","Cardi B","Taylor Swift"], learnMore: "http://www.complex.com/music/2017/12/eminem-tops-billboard-artist-100-chart-thanks-revival-debut", correctAnswer: 1)
        
        let questionSixtyFour = Question(question: "Which popular TV show is having its official end in 2019?", arrayOfAnswers: ["The Simpsons", "Family Guy", "Game of Thrones", "Supernatural"], learnMore: "http://www.cnn.com/2018/01/04/entertainment/game-of-thrones-2019/index.html", correctAnswer: 2)
        
        let questionSixtyFive = Question(question: "Which artist is going to headline coachella?", arrayOfAnswers: ["Imagine Dragons", "Beyonce", "Ed Sheeran", "Post Malone"], learnMore: "http://www.cnn.com/2018/01/03/entertainment/coachella-2018-lineup/index.html", correctAnswer: 1)
        
        let questionSixtySix = Question(question: "Which esports league started this year?", arrayOfAnswers: ["Overwatch League", "The Call of Duty League", "The World of Warcraft League", "The PUBG league"], learnMore: "https://overwatchleague.com/en-us/?utm_source=Google%20US&utm_medium=Search&utm_content=23027314&utm_campaign=BLZ_OWL_L_Launch_SEM_Phase_1_Q4_2017_NA", correctAnswer: 0)
        
        let questionSixtySeven = Question(question: "What color is being worn at the Golden Globes to fight for gender equality?", arrayOfAnswers: ["White", "Rainbow", "Gold", "Black"], learnMore: "http://www.cnn.com/2018/01/05/entertainment/golden-globes-2018-black-dress-explainer/index.html", correctAnswer: 3)
        let questionSixtyEight = Question(question: "Which gameshow host recently got brain surgery?", arrayOfAnswers: ["Alex Trebek", "Vana White", "Pat Sajak", "Regis Philiben"], learnMore: "https://www.nbcnews.com/pop-culture/tv/jeopardy-hiatus-after-host-alex-trebek-has-brain-surgery-n834876", correctAnswer: 0)
        
        let questionSixtyNine = Question(question: "Which punishingly dificult game by FromSoftware is getting a remaster on the Nintendo Switch?", arrayOfAnswers: ["Super Meat Boy", "Dark Souls", "Donkey Kong Country", "Battletoads"], learnMore: "https://www.forbes.com/sites/erikkain/2018/01/11/dark-souls-remastered-is-more-than-just-a-new-coat-of-paint/#6bee9e4b2124", correctAnswer: 1)
        
        let questionSeventy = Question(question: "Which trial and error video game got ported to the Switch?", arrayOfAnswers: ["Battletoads", "Teenage Mutant Ninja Turtles", "Super Meat Boy", "Player Unknown Battlegrounds"], learnMore: "https://kotaku.com/super-meat-boy-is-the-latest-port-to-sell-better-than-e-1822056498", correctAnswer: 2)
        
        let questionSeventyOne = Question(question: "Which game got 10 nominations at the 21st DICE awards?", arrayOfAnswers: ["Horizon Zero Dawn", "Legend of Zelda Breath of the Wild", "Super Mario Odyssey", "Destiny 2"], learnMore: "http://www.ign.com/articles/2018/01/13/horizon-zero-dawn-leads-2018-dice-awards-nominees", correctAnswer: 0)
        
        let questionSeventyTwo = Question(question: "Which video game which is the fifth game in its respective series got leaked recently?", arrayOfAnswers: ["Divinity Original Sin 5", "Kingdom Hearts 5", "Half Life 5", "Devil May Cry 5"], learnMore: "https://www.express.co.uk/entertainment/gaming/904402/PS4-games-news-shock-Devil-May-Cry-5-leak-God-of-War-Release-Date", correctAnswer: 3)
        
        let questionSeventyThree = Question(question: "Which video game has anticipated release in 2018 and the latest main entry in the series was released in 2005?", arrayOfAnswers: ["Kingdom Hearts 3", "God of War", "Valkria Chronicles", "Donkey Kong Country"], learnMore: "https://kingdomhearts.com/home/us/", correctAnswer: 0)
        
        let questionSeventyFour = Question(question: "Which superhero in the DC univese got three movies that came to netflix?", arrayOfAnswers: ["Superman", "Green Lantern", "Aquaman", "Batman"], learnMore: "https://www.gamespot.com/articles/new-on-netflix-for-january-2018-more-movies-origin/1100-6455633/", correctAnswer: 3)
        
        let questionSeventyFive = Question(question: "What is the newest superhero show to come on to CW?", arrayOfAnswers: ["Supergirl", "Flash", "Legends of Tomorrow", "Black Lightning"], learnMore: "http://www.cnn.com/2018/01/12/entertainment/black-lightning-review/index.html", correctAnswer: 3)
        
        let questionSeventySix = Question(question: "Which movies award ceremony is happening soon?", arrayOfAnswers: ["The Grammys", "The Emmys", "The Oscars", "Tribeca Film Festival"], learnMore: "https://www.washingtonpost.com/news/comic-riffs/wp/2018/01/12/oscars-voting-ends-today-will-wonder-woman-finally-break-the-anti-superhero-streak/?utm_term=.84ff47e08fcd", correctAnswer: 2)
        
        let questionSeventySeven = Question(question: "Which artist got the most nominations at this years Grammys?", arrayOfAnswers: ["Bruno Mars", "Cardi B", "Taylor Swift", "Kendrick Lamar"], learnMore: "https://www.grammy.com/grammys/news/60th-grammy-awards-full-nominees-list", correctAnswer: 3)
        
        let questionSeventyEight = Question(question: "Which underwater survival video game released last month?", arrayOfAnswers: ["Subnautica", "Abzu", "Ark Survival Evolved", "Minecraft"], learnMore: "http://www.ign.com/articles/2018/01/26/subnautica-review", correctAnswer: 0)
        
        let questionSeventyNine = Question(question: "Which open world rpg came out last month and is 6th in its respective series?", arrayOfAnswers: ["Star Wars Battlefront 2", "Fortnite", "Monster Hunter World", "Destiny 2"], learnMore: "http://www.ign.com/articles/2018/01/25/monster-hunter-world-review", correctAnswer: 2)
        
        let questionEighty = Question(question: "Which anticipated game releasing in March is about pirates?", arrayOfAnswers: ["Call of Duty: Pirates", "Sea of Thieves", "Oceanhorn", "Sea Dogs"], learnMore: "http://www.ign.com/articles/2018/01/26/the-sea-of-thieves-beta-has-me-equal-parts-concerned-and-hopeful", correctAnswer: 1)
        
        let questionEightyOne = Question(question: "What was announced at nintendo direct that can make the nintendo switch a piano among other things?", arrayOfAnswers: ["Nintendo Labo", "Nintendo Inovations", "Nintendo Build", "Nintendo Create"], learnMore: "https://labo.nintendo.com/?gclid=CNKD2-r2-tgCFRKlswod73QGJw&gclsrc=ds", correctAnswer: 0)
        
        let questionEightyTwo = Question(question: "Which video game was Ubisoft thinking about increasing the price but they decided against it last month?", arrayOfAnswers: ["Call of Duty WW2", "Rainbow Six Seige", "Ghost Recon: Wildlands", "Battlefield 1"], learnMore: "http://www.ign.com/articles/2018/01/27/ubisoft-addresses-rainbow-six-siege-pricing-concerns", correctAnswer: 1)
        
        let questionEightyThree = Question(question: "Which game developer that created Unreal Engine 4 is shutting down their MOBA Paragon?", arrayOfAnswers: ["Ubisoft", "Activision", "Epic Games", "Blizzard"], learnMore: "https://www.thegamer.com/epic-games-shutting-down-paragon/", correctAnswer: 2)
        
        let questionEightyFour = Question(question: "Which hard mobile platformer gained popularity on Twitter?", arrayOfAnswers: ["Clash of Clans", "Clash Royale", "Trap Adventure 2", "Shadow Fight 3"], learnMore: "https://www.thegamer.com/trap-adventure-2-video-hardest-game/", correctAnswer: 2)
        
        let questionEightyFive = Question(question: "Which game company's director will be steping down in March", arrayOfAnswers: ["Epic Games", "Blizzard", "EA", "Ubisoft"], learnMore: "https://www.thegamer.com/activision-ceo-stepping-down/", correctAnswer: 3)
        
        let questionEightySix = Question(question: "Which music artist just released his farewell tour?", arrayOfAnswers: ["Metalica", "Eminem", "Elton John", "Bob Dylan"], learnMore: "https://www.npr.org/2018/01/24/580433606/elton-john-says-its-time-to-retire-from-touring-but-only-after-a-3-year-farewell", correctAnswer: 2)
        
        let questionEightySeven = Question(question: "Which band recieved MusiCares person of the year award?", arrayOfAnswers: ["Imagine Dragons", "Little Big Town", "Metalica", "Fleetwood Mac"], learnMore: "https://www.rollingstone.com/music/live-reviews/harry-styles-haim-honor-fleetwood-macs-enduring-legacy-w515978", correctAnswer: 3)
        
        let questionEightyEight = Question(question: "Where were the Grammys this year?", arrayOfAnswers: ["Beverly Hills", "New York City", "Chicago", "Nashville"], learnMore: "https://en.wikipedia.org/wiki/List_of_Grammy_Award_ceremony_locations", correctAnswer: 1)
        
        let questionEightyNine = Question(question: "Which singer is retiring from tours due to Parkinson's disease?", arrayOfAnswers: ["Neil Diamond", "Bruce Springsteen", "Billy Joel", "Barry Manilow"], learnMore: "https://www.independent.ie/entertainment/music/as-neil-diamond-retires-from-touring-due-to-parkinsons-neil-mccormick-looks-back-at-his-50-year-career-36531376.html", correctAnswer: 0)
        
        let questionNinty = Question(question: "Which former Fifth Harmony singer has a hit single featuring Young Thung", arrayOfAnswers: ["Lorde", "Sia", "Alessia Cara","Camila Cabello"], learnMore: "https://en.wikipedia.org/wiki/Camila_Cabello", correctAnswer: 3)
        
        let questionNinetyOne = Question(question: "Which two artists from different genres are doing a colaboration together?", arrayOfAnswers: ["Kendrick Lamar and U2", "Big Shaq and Bruce Springsteen", "Sting and Shaggy"], learnMore: "https://www.rollingstone.com/music/news/inside-sting-and-shaggys-unlikely-new-album-w515796", correctAnswer: 3)
        
        let questionNinetyTwo = Question(question: "Who preformed for the Super Bowl this year ", arrayOfAnswers: ["Bruno Mars", "Lady Gaga", "Ed Sheeran", "Justin Timberlake"], learnMore: "https://www.nfl.com/super-bowl/halftime-show", correctAnswer: 3)
        
        let questionNinetyThree = Question(question: "Which tv channel aired the Super Bowl?", arrayOfAnswers: ["NBC", "Fox", "CBS", "NFL Network"], learnMore: "https://www.si.com/nfl/2018/super-bowl-lii-tv-channel-broadcast-network", correctAnswer: 0)
        
        let questionOneThousand = Question(question: "Which player is not part of the soccer team of the year starting 11", arrayOfAnswers: ["Harry Kane","Leonardo Bonnuci","Neymar","Dani Alves"], learnMore: "https://www.easports.com/fifa/ultimate-team/team-of-the-year", correctAnswer: 2)
        
        let questionOneThousandOne = Question(question: "Who is currently the top scorer in the English Premier League?", arrayOfAnswers: ["Mohammed Salah","Harry Kane","Roberto Firmino","Kun Aguero"], learnMore: "https://www.premierleague.com/stats/top/players", correctAnswer: 1)
        
        let questionOneThousandTwo = Question(question: "Which goalkeeper has the most clean sheets in the English Premier League", arrayOfAnswers: ["David De Gea","Ederson","Gianluigi Buffon","Hugo LLoris"], learnMore: "https://www.premierleague.com/stats/top/players", correctAnswer: 0)
        
        let questionOneThousandThree = Question(question: "Which team upset Real Madrid 2-1 to knock them out of the Copa del Rey?", arrayOfAnswers: ["Sevilla", "Getafe CF", "Real Betis", "Leganes"], learnMore: "https://www.managingmadrid.com/2018/1/25/16930324/real-madrid-leganes-2018-match-review", correctAnswer: 3)
        
        let questionOneThousandFour = Question(question: "Which two teams are meeting in Superbowl LII?", arrayOfAnswers: ["Eagles and Patriots","Patriots and Broncos","Redskins and Broncos","Browns and Eagles"], learnMore: "https://www.cbssports.com/nfl/news/when-is-the-2018-super-bowl-date-time-schedule-tv-for-patriots-vs-eagles/", correctAnswer: 0)
        
        let questionNinetyNine = Question(question: "Which movie's Rottten Tomato fan score is being threated by DC Comics Fanboys?", arrayOfAnswers: ["Hostiles", "Solo", "Mission Impossible", "Black Panther"], learnMore: "https://www.cnn.com/2018/02/02/entertainment/black-panther-negative-reviews/index.html", correctAnswer: 3)
        
        let questionOneThousandFive = Question(question: "How many wins do Bayern Munich have(after playing exactly 20 games)", arrayOfAnswers: ["16","19","17","12"], learnMore: "http://www.skysports.com/bayern-munich", correctAnswer: 0)
        
        let questionOneHundred = Question(question: "Which video game released for the PS2 recently got a remaster for the PS4?", arrayOfAnswers: ["Shadow of the Colossus", "Crash Bandicoot", "God of War", "Phantasy Star Online" ], learnMore: "https://www.forbes.com/sites/games/2018/02/03/shadow-of-the-colossus-review-an-incredibly-faithful-remake-of-a-classic-game/#595d456a4475", correctAnswer: 0)
        
        let questionOneThousandSix = Question(question: "Who recently scored their 100th Bundesliga goal with a bicycle kick?", arrayOfAnswers: ["Robert Lewandowski","Arjen Robben","Thomas Muller","Marco Reus"], learnMore: "http://www.skysports.com/football/news/11881/11217820/bundesliga-round-up-bayern-munichs-thomas-muller-brings-up-his-ton-against-werder-bremen", correctAnswer: 2)
        
        let questionOneThousandSeven = Question(question: "Which player recently transfered to Arsenal after a 56 euro deal?", arrayOfAnswers: ["Lionel Messi", "Granit Xhaka", "Henrikh Mkhitaryan", "Pierre-Emerick Aubameyang"], learnMore: "http://metro.co.uk/2018/02/01/aubameyang-trains-alone-arsenal-completing-56m-transfer-7279057/", correctAnswer: 3)
        
        let questionOneThousandEight = Question(question: "Which team is not part of the Big Six of English Football", arrayOfAnswers: ["Liverpool","Leicester City","Manchester City","Tottenham Hotspur"], learnMore: "http://www.telegraph.co.uk/football/2017/10/02/changing-shape-premier-league-big-six-pulling-away/", correctAnswer: 1)
        
        let questionOneThousandNine = Question(question: "Throwback Question! Which team won the first World Series in baseball?", arrayOfAnswers: ["New York Yankees","Boston Americans","Boston Red Sox","Los Angeles Dodgers"], learnMore: "https://www.factretriever.com/baseball-facts", correctAnswer: 1)
        
        let questionOneThousandTen = Question(question: "Throwback Question! In what year was it a requirement for football players to wear helmets?", arrayOfAnswers: ["1984","1968","2001","1943"], learnMore: "http://www.pinnacle-pt.com/blog/whats-new/post/12-fun-football-facts", correctAnswer: 3)
     
        let questionOneThousandEleven = Question(question: "Throwback Question! What is the diameter of a hockey puck?", arrayOfAnswers: ["4.5 inches","3.5 inches","3 inches","4 inches"], learnMore: "http://www.softschools.com/facts/sports/hockey_facts/569/", correctAnswer: 2)
        
        let questionOneThousandTwelve = Question(question: "Who is currently the top scorer in the Ligue One?", arrayOfAnswers: ["Edison Cavani","Neymar","Radamel Falcao","Nabil Fekir"], learnMore: "http://www.bbc.com/sport/football/french-ligue-one/top-scorers", correctAnswer: 0)
        
        let questionOneThousandThirteen = Question(question: "On which date will the 2018 Super Bowl take place?", arrayOfAnswers: ["Febuary 4th","Febuary 11th","Febuary 5th","Febuary 12th"], learnMore: "https://www.google.com/search?client=safari&rls=en&q=day+of+2018+superbowl&ie=UTF-8&oe=UTF-8", correctAnswer: 1)
        
        var topic = Topic(name: "Sports", image: UIImage(named: "Sports")!, description:
            "Think you know all about the sports world? This topic inclues questions about recent fixtures and matches from a variety of sports, from football to futbol.", questionPool: [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, questionSeven, questionEight, questionNine, questionTen, questionEleven, questionTweleve, questionThirteen, questionFourteen, questionFifteen, questionSixteen, questionSeventeen, questionEighteen, questionNineteen, questionTwenty, questionOneThousand, questionOneThousandOne, questionOneThousandTwo, questionOneThousandThree, questionOneThousandFour, questionOneThousandFive, questionOneThousandSix, questionOneThousandSeven, questionOneThousandEight, questionOneThousandNine, questionOneThousandTen, questionOneThousandEleven, questionOneThousandTwelve, questionOneThousandThirteen], imageTwo: "SportsGif")
        var topics: [Topic] = []
        topics.append(topic)
        
        topic = Topic(name: "Politics", image: UIImage(named: "Politics")!, description: "From Russia to Brazil, this quiz test your knowledge on world politics.", questionPool: [questionTwentyOne, questionTwentyTwo, questionTwentyThree, questionTwentyFour, questionTwentyFive, questionTwentySix, questionTwentySeven, questionTwentyEight, questionTwentyNine, questionThirty, questionThirtyOne, questionThirtyTwo, questionThirtyThree, questionThirtyFour, questionThirtyFive, questionThirtySix, questionThirtySeven, questionThirtyEight, questionThirtyNine, questionForty], imageTwo: "PoliticsGif")
        topics.append(topic)
        
        topic = Topic(name: "Gaming", image: UIImage(named:"Gaming")!, description: "Think you know the biggest hits and fails in the gaming industry? This quiz tests your knowledge on video games", questionPool: [questionFortyOne,questionFortySeven, questionFortyEight, questionFortyNine, questionFifty, questionFiftyFour, questionSixtySix, questionSixtyNine, questionSeventy, questionSeventyOne, questionSeventyTwo, questionSeventyThree, questionEightyFive, questionEightyFour, questionEightyThree, questionEightyTwo, questionEightyOne, questionEighty, questionSeventyNine, questionSeventyEight, questionOneHundred], imageTwo: "GamingGif")
        topics.append(topic)
        
        topic = Topic(name: "Movies and TV Shows", image: UIImage(named:"Movies")!, description: "From the hottest episodes and movies, this quiz tests your knowledge on the recent additions to the world of movies and tv shows." , questionPool: [questionFortyTwo, questionFortyThree, questionFortyFour,  questionFortySix, questionFiftyOne, questionFiftyTwo, questionFiftyThree, questionFiftySix, questionSixty, questionSixtyFour, questionSixtySeven, questionSixtyEight, questionSeventyFour, questionSeventyFive, questionSeventySix, questionNinetyThree, questionNinetyNine], imageTwo: "MoviesGif")
        topics.append(topic)
        
        topic = Topic(name: "Music", image: UIImage(named:"Music")!, description: "From clasical music to classic rock. This quiz tests your understanding of the music world.", questionPool: [questionFortyFive, questionFiftyFive, questionSixtyOne, questionSixtyTwo, questionSixtyThree, questionSixtyFive, questionSeventySeven, questionEightyEight, questionNinty, questionEightyNine, questionEightySeven, questionEightySix, questionNinetyOne, questionNinetyTwo], imageTwo: "MusicGif")
        topics.append(topic)
        
        
        
        let game = Game(topics:topics)
        self.topics = game.topics
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBOutlet var descriptionPage: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return topics.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "TopicTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TopicTableViewCell  else {
            fatalError("The dequeued cell is not an instance of TopicTableViewCell.")
        }

        // Configure the cell...
        let topic = topics[indexPath.row]
        cell.nameLabel.text = topic.name
        cell.iconImage.image = topic.image
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.destination is TopicViewController) {
            let indexPath = self.tableView.indexPathForSelectedRow
            let rowIndex = indexPath?.row
            if (indexPath == nil || rowIndex == nil) {
                let alert = UIAlertController(title: "Error 79833", message: "No topic selected, please select a topic", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default))
                self.present(alert, animated: true, completion: nil)
                return
            }
            let pickedTopic = topics[rowIndex!]
        
            // Show the TopicViewController
            //let topicVC = storyboard?.instantiateViewController(withIdentifier: "topicPage") as! TopicViewController
            let topicVC = segue.destination as? TopicViewController
            topicVC?.pickedTopic = pickedTopic
            topicVC?.title = "Topic Overview"
            //navigationController?.pushViewController(topicVC, animated: true)
        }
    }
    
    
    
}
