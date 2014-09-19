# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Leader.delete_all

Leader.create([
	{position: 'President',
	name: 'Sam',
	year: 'Senior',
	major: 'econ',
	hometown: 'atlanta',
	email: 'test',
	strange_fact: 'nope',
	interests: 'many',
	leadership_position: 'Servant Team'},
	
	{position: 'activity',
	name: 'Hanna',
	year: 'Junior',
	major: 'not sure',
	hometown: 'knoxville',
	email: 'ooc',
	strange_fact: 'hair',
	interests: 'many',
	leadership_position: 'Activity'},
	
	{position: 'Something',
	name: 'Candy',
	year: 'Senior',
	major: 'science',
	hometown: 'chicago',
	email: 'tetst',
	strange_fact: 'eird',
	interests: 'lots',
	leadership_position: 'Servant Team'},
	
	{position: 'Small group leader',
	name: 'Felicia',
	year: 'Sophomore',
	major: 'acts',
	hometown: 'here',
	email: 'cool',
	strange_fact: 'that',
	interests: 'this',
	leadership_position: 'Small Group Leader'}
])

StaticText.delete_all

StaticText.create([
  {title: "Theme",
  body: " Grace & Truth",
  active: false},
  
  {title: "Vision Statement",
  body: "InterVasrsity Asian-American Christian Fellowship is a community growing in intimately following Jesus, furthering God's Kingdom in Vanderbilt and in the world.",
  active: true},
  
  {title: "AACF Purpose Statement",
  body: "As Asian-American Christian Fellowship, our purpose is to embrace and share the excitement of being totally committed to Jesus Christ.",
  active: true},
  
  {title: "AACF Purpose Statement bullet 1",
  body: "Receiving grace, forgiveness, and healing in discovering our unique self-identity and relationships with our families.",
  active: true},
  
  {title: "AACF Purpose Statement bullet 2",
  body: "Gain confidence and discover our giftedness and our ability to lead others both Asian and Non-Asian.",
  active: true},
  
  {title: "AACF Purpose Statement bullet 3",
  body: "Provide Asian Christian perspective concerning issues such as racial reconciliation, local/global issues, and social justice.",
  active: true},
  
  {title: "AACF Purpose Statement bullet 4",
  body: "Equipping ourselves to love and serve others on campus, in church, and in our community.",
  active: true},
  
  {title: "IVCF Purpose Statement intro",
  body: "In response to God's love, grace, and truth:",
  active: true},
  
  {title: "IVCF Purpose Statement",
  body: "The purpose of InterVarsity Christian Fellowship/USA is to establish and advance at colleges and universities witnessing communities of students and faculty who follow Jesus as Savior and Lord. Growing in love for:",
  active: true},
  
  {title: "IVCF Purpose Statement bullet 1",
  body: "God,",
  active: true},
  
  {title: "IVCF Purpose Statement bullet 2",
  body: "God's Word,",
  active: true},
  
  {title: "IVCF Purpose Statement bullet 3",
  body: "God's people of every ethnicity & culture,",
  active: true},
  
  {title: "IVCF Purpose Statement bullet 4",
  body: "and God's purposes in the world.",
  active: true},
  
  {title: "Basis of Faith 1",
  body: "The only true God, the almighty Creator of all things, 
existing eternally in three persons– 
Father, Son, and Holy Spirit–full of love and glory.",
  active: true},

  {title: "Basis of Faith 2",
  body: "The unique divine inspiration, 
entire trustworthiness 
and authority of the Bible.",
  active: true},

  {title: "Basis of Faith 3",
  body: "The value and dignity of all people: 
created in God's image to live in love and holiness, 
but alienated from God and each other because of our sin and guilt, 
and justly subject to God’s wrath.",
  active: true},

  {title: "Basis of Faith 4",
  body: "Jesus Christ, fully human and fully divine, 
who lived as a perfect example, 
who assumed the judgment due sinners by dying in our place, 
and who was bodily raised from the dead and ascended as Savior and Lord.",
  active: true},

  {title: "Basis of Faith 5",
  body: "Justification by God's grace to all who repent 
and put their faith in Jesus Christ alone for salvation.",
  active: true},

  {title: "Basis of Faith 6",
  body: "The indwelling presence and transforming power of the Holy Spirit, 
who gives to all believers a new life and a new calling to obedient service.",
  active: true},

  {title: "Basis of Faith 7",
  body: "The unity of all believers in Jesus Christ, 
manifest in worshiping and witnessing churches 
making disciples throughout the world.",
  active: true},

  {title: "Basis of Faith 8",
  body: "The victorious reign and future personal return of Jesus Christ, 
who will judge all people with justice and mercy, 
giving over the unrepentant to eternal condemnation 
but receiving the redeemed into eternal life.",
  active: true},

{title: "Basis of Faith 9",
  body: "To God be glory forever.",
  active: true},

{title: "Basis of Faith 10",
  body: "Adopted by the InterVarsity Board of Trustees 
October 20, 2000",
  active: true}
  
])

UpcomingEvent.delete_all

UpcomingEvent.create([
	{title: "Fall Conference",
	description: "join us for fall conference",
	location: "KY"}
])

CarouselItem.delete_all

CarouselItem.create([
	{img_url: "http://i61.tinypic.com/21j8851.jpg",
	description: "Join us for an inductive Bible study!"}
	
	{img_url: "http://i58.tinypic.com/xfoort.jpg",
	description: "Spend some time away from campus! Conferences are a welcome break from school and wonderful time with God."}
	
	{img_url: "http://i59.tinypic.com/33xuiio.jpg",
	description: "Don't let life just drift by! Visit our Large Groups to meet up with friends!"}
])
	
	
	
	
	