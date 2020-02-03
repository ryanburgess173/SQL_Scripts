CREATE TABLE Drivers(
	DriverID int IDENTITY NOT NULL PRIMARY KEY,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	CupWins int,
	CupChampionships int,
	XFinityWins int,
	XFinityChampionships int,
	TruckWins int,
	TruckChampionships int,
	ARCAWins int,
	ARCAChampionships int,
	GoodysDashWins int,
	GoodysDashChampionships int,
	WhelenModifiedWins int,
	WhelenModifiedChampionships int,
	AutoZoneEliteWins int,
	AutoZoneEliteChampionships int,
	WhelenAllAmericanWins int,
	WhelenAllAmericanChampionships int,
	PintyWins int,
	PintyChampionships int,
	MexicoWins int,
	MexicoChampionships int,
	T4Wins int,
	T4Championships int,
	WhelenEuroWins int,
	WhelenEuroChampionships int,
	AustralianTouringWins int,
	AustralianTouringChampionships int,
	SpeedwayDivisionWins int,
	SpeedwayDivisionChampionships int,
	ConvertibleWins int,
	ConvertibleChampionships int,
	IglooWins int,
	IglooChampionships int,
	InternationalTouringWins int,
	InternationalTouringChampionships int,
	EthanolWins int,
	EthanolChampionships int
);

CREATE TABLE Series(
	SeriesID int IDENTITY NOT NULL PRIMARY KEY,
	SeriesName varchar(80) NOT NULL
);

CREATE TABLE Tracks(
	TrackID int IDENTITY NOT NULL PRIMARY KEY,
	TrackName varchar(120) NOT NULL
);

CREATE TABLE RaceEvents(
	RaceEventID int IDENTITY NOT NULL PRIMARY KEY,
	RaceEventName varchar(120) NOT NULL,
	NumberOfLaps int,
	TrackID int NOT NULL
);