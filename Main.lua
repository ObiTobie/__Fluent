local cloneref = cloneref or function(...)
	return ...
end

local Library, Utility = {
	Version = "1.0.1",
	Themes = {
		AccentColor = Color3.fromRGB(0, 0, 0),
		BackgroundColor = Color3.fromRGB(255, 68, 177),
		TextColor = Color3.fromRGB(255, 255, 255),
		DisabledTextColor = Color3.fromRGB(255, 255, 255)
	},
	ThemeList = {},
	Presets = {
		["Default"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 68, 177),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Navy"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(130, 174, 255),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Magenta"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(200, 75, 150),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Olive"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(100, 220, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Lime"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(225, 255, 125),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Amethyst"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(200, 130, 115),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Onyx"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 255, 255),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Lemon"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 200, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Rouge"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(230, 130, 180),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Cobalt"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(100, 155, 200),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Crimson"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(225, 100, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Snow"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(75, 75, 75),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Violet"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(125, 85, 225),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		}
	},
	Settings = {Keybind = Enum.KeyCode.Home, Transparency = 0.85, FontFace = nil},
	Services = setmetatable({}, { __index = function(Self, Key) 
		return cloneref(game.GetService(game, Key)) 
	end}),

	Flags = {},
	Animation = true,
	AnimationSpeed = 0.1,
	Elements = {
		Windows = {},
		Dropdowns = {},
		Colorpickers = {},
		Sliders = {},
		Toggles = {},
		Keybinds = {},
		Textboxes = {},
		Labels = {},
		Buttons = {},
		Separators = {}
	},
	EasingStyle = {
		Linear = Enum.EasingStyle.Linear,
		Sine = Enum.EasingStyle.Sine,
		Back = Enum.EasingStyle.Back,
		Quad = Enum.EasingStyle.Quad,
		Quart = Enum.EasingStyle.Quart,
		Quint = Enum.EasingStyle.Quint,
		Bounce = Enum.EasingStyle.Bounce,
		Elastic = Enum.EasingStyle.Elastic,
		Exponential = Enum.EasingStyle.Exponential,
		Circular = Enum.EasingStyle.Circular
	},
	EasingDirection = {
		In = Enum.EasingDirection.In,
		Out = Enum.EasingDirection.Out,
		InOut = Enum.EasingDirection.InOut
	},
	Storage = {
		Background = {},
		BackgroundGradient = {},
		Notification = {},
		SelectedFrame = {},
		Toggles = {},
		ToggleImages = {},
		DropdownGradient = {},
		Selected = {},
		SliderValue = {},
		SliderImage = {}
	},
	Connections = {}
},{
	Icons = {
		["lucide-accessibility"] = "rbxassetid://10709751939",
		["lucide-activity"] = "rbxassetid://10709752035",
		["lucide-air-vent"] = "rbxassetid://10709752131",
		["lucide-airplay"] = "rbxassetid://10709752254",
		["lucide-alarm-check"] = "rbxassetid://10709752405",
		["lucide-alarm-clock"] = "rbxassetid://10709752630",
		["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
		["lucide-alarm-minus"] = "rbxassetid://10709752732",
		["lucide-alarm-plus"] = "rbxassetid://10709752825",
		["lucide-album"] = "rbxassetid://10709752906",
		["lucide-alert-circle"] = "rbxassetid://10709752996",
		["lucide-alert-octagon"] = "rbxassetid://10709753064",
		["lucide-alert-triangle"] = "rbxassetid://10709753149",
		["lucide-align-center"] = "rbxassetid://10709753570",
		["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
		["lucide-align-center-vertical"] = "rbxassetid://10709753421",
		["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
		["lucide-align-end-vertical"] = "rbxassetid://10709753808",
		["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
		["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
		["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
		["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
		["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
		["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
		["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
		["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
		["lucide-align-justify"] = "rbxassetid://10709759610",
		["lucide-align-left"] = "rbxassetid://10709759764",
		["lucide-align-right"] = "rbxassetid://10709759895",
		["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
		["lucide-align-start-vertical"] = "rbxassetid://10709760244",
		["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
		["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
		["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
		["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
		["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
		["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
		["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
		["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
		["lucide-anchor"] = "rbxassetid://10709761530",
		["lucide-angry"] = "rbxassetid://10709761629",
		["lucide-annoyed"] = "rbxassetid://10709761722",
		["lucide-aperture"] = "rbxassetid://10709761813",
		["lucide-apple"] = "rbxassetid://10709761889",
		["lucide-archive"] = "rbxassetid://10709762233",
		["lucide-archive-restore"] = "rbxassetid://10709762058",
		["lucide-armchair"] = "rbxassetid://10709762327",
		["lucide-arrow-big-down"] = "rbxassetid://10747796644",
		["lucide-arrow-big-left"] = "rbxassetid://10709762574",
		["lucide-arrow-big-right"] = "rbxassetid://10709762727",
		["lucide-arrow-big-up"] = "rbxassetid://10709762879",
		["lucide-arrow-down"] = "rbxassetid://10709767827",
		["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
		["lucide-arrow-down-left"] = "rbxassetid://10709767656",
		["lucide-arrow-down-right"] = "rbxassetid://10709767750",
		["lucide-arrow-left"] = "rbxassetid://10709768114",
		["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
		["lucide-arrow-left-right"] = "rbxassetid://10709768019",
		["lucide-arrow-right"] = "rbxassetid://10709768347",
		["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
		["lucide-arrow-up"] = "rbxassetid://10709768939",
		["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
		["lucide-arrow-up-down"] = "rbxassetid://10709768538",
		["lucide-arrow-up-left"] = "rbxassetid://10709768661",
		["lucide-arrow-up-right"] = "rbxassetid://10709768787",
		["lucide-asterisk"] = "rbxassetid://10709769095",
		["lucide-at-sign"] = "rbxassetid://10709769286",
		["lucide-award"] = "rbxassetid://10709769406",
		["lucide-axe"] = "rbxassetid://10709769508",
		["lucide-axis-3d"] = "rbxassetid://10709769598",
		["lucide-baby"] = "rbxassetid://10709769732",
		["lucide-backpack"] = "rbxassetid://10709769841",
		["lucide-baggage-claim"] = "rbxassetid://10709769935",
		["lucide-banana"] = "rbxassetid://10709770005",
		["lucide-banknote"] = "rbxassetid://10709770178",
		["lucide-bar-chart"] = "rbxassetid://10709773755",
		["lucide-bar-chart-2"] = "rbxassetid://10709770317",
		["lucide-bar-chart-3"] = "rbxassetid://10709770431",
		["lucide-bar-chart-4"] = "rbxassetid://10709770560",
		["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
		["lucide-barcode"] = "rbxassetid://10747360675",
		["lucide-baseline"] = "rbxassetid://10709773863",
		["lucide-bath"] = "rbxassetid://10709773963",
		["lucide-battery"] = "rbxassetid://10709774640",
		["lucide-battery-charging"] = "rbxassetid://10709774068",
		["lucide-battery-full"] = "rbxassetid://10709774206",
		["lucide-battery-low"] = "rbxassetid://10709774370",
		["lucide-battery-medium"] = "rbxassetid://10709774513",
		["lucide-beaker"] = "rbxassetid://10709774756",
		["lucide-bed"] = "rbxassetid://10709775036",
		["lucide-bed-double"] = "rbxassetid://10709774864",
		["lucide-bed-single"] = "rbxassetid://10709774968",
		["lucide-beer"] = "rbxassetid://10709775167",
		["lucide-bell"] = "rbxassetid://10709775704",
		["lucide-bell-minus"] = "rbxassetid://10709775241",
		["lucide-bell-off"] = "rbxassetid://10709775320",
		["lucide-bell-plus"] = "rbxassetid://10709775448",
		["lucide-bell-ring"] = "rbxassetid://10709775560",
		["lucide-bike"] = "rbxassetid://10709775894",
		["lucide-binary"] = "rbxassetid://10709776050",
		["lucide-bitcoin"] = "rbxassetid://10709776126",
		["lucide-bluetooth"] = "rbxassetid://10709776655",
		["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
		["lucide-bluetooth-off"] = "rbxassetid://10709776344",
		["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
		["lucide-bold"] = "rbxassetid://10747813908",
		["lucide-bomb"] = "rbxassetid://10709781460",
		["lucide-bone"] = "rbxassetid://10709781605",
		["lucide-book"] = "rbxassetid://10709781824",
		["lucide-book-open"] = "rbxassetid://10709781717",
		["lucide-bookmark"] = "rbxassetid://10709782154",
		["lucide-bookmark-minus"] = "rbxassetid://10709781919",
		["lucide-bookmark-plus"] = "rbxassetid://10709782044",
		["lucide-bot"] = "rbxassetid://10709782230",
		["lucide-box"] = "rbxassetid://10709782497",
		["lucide-box-select"] = "rbxassetid://10709782342",
		["lucide-boxes"] = "rbxassetid://10709782582",
		["lucide-briefcase"] = "rbxassetid://10709782662",
		["lucide-brush"] = "rbxassetid://10709782758",
		["lucide-bug"] = "rbxassetid://10709782845",
		["lucide-building"] = "rbxassetid://10709783051",
		["lucide-building-2"] = "rbxassetid://10709782939",
		["lucide-bus"] = "rbxassetid://10709783137",
		["lucide-cake"] = "rbxassetid://10709783217",
		["lucide-calculator"] = "rbxassetid://10709783311",
		["lucide-calendar"] = "rbxassetid://10709789505",
		["lucide-calendar-check"] = "rbxassetid://10709783474",
		["lucide-calendar-check-2"] = "rbxassetid://10709783392",
		["lucide-calendar-clock"] = "rbxassetid://10709783577",
		["lucide-calendar-days"] = "rbxassetid://10709783673",
		["lucide-calendar-heart"] = "rbxassetid://10709783835",
		["lucide-calendar-minus"] = "rbxassetid://10709783959",
		["lucide-calendar-off"] = "rbxassetid://10709788784",
		["lucide-calendar-plus"] = "rbxassetid://10709788937",
		["lucide-calendar-range"] = "rbxassetid://10709789053",
		["lucide-calendar-search"] = "rbxassetid://10709789200",
		["lucide-calendar-x"] = "rbxassetid://10709789407",
		["lucide-calendar-x-2"] = "rbxassetid://10709789329",
		["lucide-camera"] = "rbxassetid://10709789686",
		["lucide-camera-off"] = "rbxassetid://10747822677",
		["lucide-car"] = "rbxassetid://10709789810",
		["lucide-carrot"] = "rbxassetid://10709789960",
		["lucide-cast"] = "rbxassetid://10709790097",
		["lucide-charge"] = "rbxassetid://10709790202",
		["lucide-check"] = "rbxassetid://10709790644",
		["lucide-check-circle"] = "rbxassetid://10709790387",
		["lucide-check-circle-2"] = "rbxassetid://10709790298",
		["lucide-check-square"] = "rbxassetid://10709790537",
		["lucide-chef-hat"] = "rbxassetid://10709790757",
		["lucide-cherry"] = "rbxassetid://10709790875",
		["lucide-chevron-down"] = "rbxassetid://10709790948",
		["lucide-chevron-first"] = "rbxassetid://10709791015",
		["lucide-chevron-last"] = "rbxassetid://10709791130",
		["lucide-chevron-left"] = "rbxassetid://10709791281",
		["lucide-chevron-right"] = "rbxassetid://10709791437",
		["lucide-chevron-up"] = "rbxassetid://10709791523",
		["lucide-chevrons-down"] = "rbxassetid://10709796864",
		["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
		["lucide-chevrons-left"] = "rbxassetid://10709797151",
		["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
		["lucide-chevrons-right"] = "rbxassetid://10709797382",
		["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
		["lucide-chevrons-up"] = "rbxassetid://10709797622",
		["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
		["lucide-chrome"] = "rbxassetid://10709797725",
		["lucide-circle"] = "rbxassetid://10709798174",
		["lucide-circle-dot"] = "rbxassetid://10709797837",
		["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
		["lucide-circle-slashed"] = "rbxassetid://10709798100",
		["lucide-citrus"] = "rbxassetid://10709798276",
		["lucide-clapperboard"] = "rbxassetid://10709798350",
		["lucide-clipboard"] = "rbxassetid://10709799288",
		["lucide-clipboard-check"] = "rbxassetid://10709798443",
		["lucide-clipboard-copy"] = "rbxassetid://10709798574",
		["lucide-clipboard-edit"] = "rbxassetid://10709798682",
		["lucide-clipboard-list"] = "rbxassetid://10709798792",
		["lucide-clipboard-signature"] = "rbxassetid://10709798890",
		["lucide-clipboard-type"] = "rbxassetid://10709798999",
		["lucide-clipboard-x"] = "rbxassetid://10709799124",
		["lucide-clock"] = "rbxassetid://10709805144",
		["lucide-clock-1"] = "rbxassetid://10709799535",
		["lucide-clock-10"] = "rbxassetid://10709799718",
		["lucide-clock-11"] = "rbxassetid://10709799818",
		["lucide-clock-12"] = "rbxassetid://10709799962",
		["lucide-clock-2"] = "rbxassetid://10709803876",
		["lucide-clock-3"] = "rbxassetid://10709803989",
		["lucide-clock-4"] = "rbxassetid://10709804164",
		["lucide-clock-5"] = "rbxassetid://10709804291",
		["lucide-clock-6"] = "rbxassetid://10709804435",
		["lucide-clock-7"] = "rbxassetid://10709804599",
		["lucide-clock-8"] = "rbxassetid://10709804784",
		["lucide-clock-9"] = "rbxassetid://10709804996",
		["lucide-cloud"] = "rbxassetid://10709806740",
		["lucide-cloud-cog"] = "rbxassetid://10709805262",
		["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
		["lucide-cloud-fog"] = "rbxassetid://10709805477",
		["lucide-cloud-hail"] = "rbxassetid://10709805596",
		["lucide-cloud-lightning"] = "rbxassetid://10709805727",
		["lucide-cloud-moon"] = "rbxassetid://10709805942",
		["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
		["lucide-cloud-off"] = "rbxassetid://10709806060",
		["lucide-cloud-rain"] = "rbxassetid://10709806277",
		["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
		["lucide-cloud-snow"] = "rbxassetid://10709806374",
		["lucide-cloud-sun"] = "rbxassetid://10709806631",
		["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
		["lucide-cloudy"] = "rbxassetid://10709806859",
		["lucide-clover"] = "rbxassetid://10709806995",
		["lucide-code"] = "rbxassetid://10709810463",
		["lucide-code-2"] = "rbxassetid://10709807111",
		["lucide-codepen"] = "rbxassetid://10709810534",
		["lucide-codesandbox"] = "rbxassetid://10709810676",
		["lucide-coffee"] = "rbxassetid://10709810814",
		["lucide-cog"] = "rbxassetid://10709810948",
		["lucide-coins"] = "rbxassetid://10709811110",
		["lucide-columns"] = "rbxassetid://10709811261",
		["lucide-command"] = "rbxassetid://10709811365",
		["lucide-compass"] = "rbxassetid://10709811445",
		["lucide-component"] = "rbxassetid://10709811595",
		["lucide-concierge-bell"] = "rbxassetid://10709811706",
		["lucide-connection"] = "rbxassetid://10747361219",
		["lucide-contact"] = "rbxassetid://10709811834",
		["lucide-contrast"] = "rbxassetid://10709811939",
		["lucide-cookie"] = "rbxassetid://10709812067",
		["lucide-copy"] = "rbxassetid://10709812159",
		["lucide-copyleft"] = "rbxassetid://10709812251",
		["lucide-copyright"] = "rbxassetid://10709812311",
		["lucide-corner-down-left"] = "rbxassetid://10709812396",
		["lucide-corner-down-right"] = "rbxassetid://10709812485",
		["lucide-corner-left-down"] = "rbxassetid://10709812632",
		["lucide-corner-left-up"] = "rbxassetid://10709812784",
		["lucide-corner-right-down"] = "rbxassetid://10709812939",
		["lucide-corner-right-up"] = "rbxassetid://10709813094",
		["lucide-corner-up-left"] = "rbxassetid://10709813185",
		["lucide-corner-up-right"] = "rbxassetid://10709813281",
		["lucide-cpu"] = "rbxassetid://10709813383",
		["lucide-croissant"] = "rbxassetid://10709818125",
		["lucide-crop"] = "rbxassetid://10709818245",
		["lucide-cross"] = "rbxassetid://10709818399",
		["lucide-crosshair"] = "rbxassetid://10709818534",
		["lucide-crown"] = "rbxassetid://10709818626",
		["lucide-cup-soda"] = "rbxassetid://10709818763",
		["lucide-curly-braces"] = "rbxassetid://10709818847",
		["lucide-currency"] = "rbxassetid://10709818931",
		["lucide-database"] = "rbxassetid://10709818996",
		["lucide-delete"] = "rbxassetid://10709819059",
		["lucide-diamond"] = "rbxassetid://10709819149",
		["lucide-dice-1"] = "rbxassetid://10709819266",
		["lucide-dice-2"] = "rbxassetid://10709819361",
		["lucide-dice-3"] = "rbxassetid://10709819508",
		["lucide-dice-4"] = "rbxassetid://10709819670",
		["lucide-dice-5"] = "rbxassetid://10709819801",
		["lucide-dice-6"] = "rbxassetid://10709819896",
		["lucide-dices"] = "rbxassetid://10723343321",
		["lucide-diff"] = "rbxassetid://10723343416",
		["lucide-disc"] = "rbxassetid://10723343537",
		["lucide-divide"] = "rbxassetid://10723343805",
		["lucide-divide-circle"] = "rbxassetid://10723343636",
		["lucide-divide-square"] = "rbxassetid://10723343737",
		["lucide-dollar-sign"] = "rbxassetid://10723343958",
		["lucide-download"] = "rbxassetid://10723344270",
		["lucide-download-cloud"] = "rbxassetid://10723344088",
		["lucide-droplet"] = "rbxassetid://10723344432",
		["lucide-droplets"] = "rbxassetid://10734883356",
		["lucide-drumstick"] = "rbxassetid://10723344737",
		["lucide-edit"] = "rbxassetid://10734883598",
		["lucide-edit-2"] = "rbxassetid://10723344885",
		["lucide-edit-3"] = "rbxassetid://10723345088",
		["lucide-egg"] = "rbxassetid://10723345518",
		["lucide-egg-fried"] = "rbxassetid://10723345347",
		["lucide-electricity"] = "rbxassetid://10723345749",
		["lucide-electricity-off"] = "rbxassetid://10723345643",
		["lucide-equal"] = "rbxassetid://10723345990",
		["lucide-equal-not"] = "rbxassetid://10723345866",
		["lucide-eraser"] = "rbxassetid://10723346158",
		["lucide-euro"] = "rbxassetid://10723346372",
		["lucide-expand"] = "rbxassetid://10723346553",
		["lucide-external-link"] = "rbxassetid://10723346684",
		["lucide-eye"] = "rbxassetid://10723346959",
		["lucide-eye-off"] = "rbxassetid://10723346871",
		["lucide-factory"] = "rbxassetid://10723347051",
		["lucide-fan"] = "rbxassetid://10723354359",
		["lucide-fast-forward"] = "rbxassetid://10723354521",
		["lucide-feather"] = "rbxassetid://10723354671",
		["lucide-figma"] = "rbxassetid://10723354801",
		["lucide-file"] = "rbxassetid://10723374641",
		["lucide-file-archive"] = "rbxassetid://10723354921",
		["lucide-file-audio"] = "rbxassetid://10723355148",
		["lucide-file-audio-2"] = "rbxassetid://10723355026",
		["lucide-file-axis-3d"] = "rbxassetid://10723355272",
		["lucide-file-badge"] = "rbxassetid://10723355622",
		["lucide-file-badge-2"] = "rbxassetid://10723355451",
		["lucide-file-bar-chart"] = "rbxassetid://10723355887",
		["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
		["lucide-file-box"] = "rbxassetid://10723355989",
		["lucide-file-check"] = "rbxassetid://10723356210",
		["lucide-file-check-2"] = "rbxassetid://10723356100",
		["lucide-file-clock"] = "rbxassetid://10723356329",
		["lucide-file-code"] = "rbxassetid://10723356507",
		["lucide-file-cog"] = "rbxassetid://10723356830",
		["lucide-file-cog-2"] = "rbxassetid://10723356676",
		["lucide-file-diff"] = "rbxassetid://10723357039",
		["lucide-file-digit"] = "rbxassetid://10723357151",
		["lucide-file-down"] = "rbxassetid://10723357322",
		["lucide-file-edit"] = "rbxassetid://10723357495",
		["lucide-file-heart"] = "rbxassetid://10723357637",
		["lucide-file-image"] = "rbxassetid://10723357790",
		["lucide-file-input"] = "rbxassetid://10723357933",
		["lucide-file-json"] = "rbxassetid://10723364435",
		["lucide-file-json-2"] = "rbxassetid://10723364361",
		["lucide-file-key"] = "rbxassetid://10723364605",
		["lucide-file-key-2"] = "rbxassetid://10723364515",
		["lucide-file-line-chart"] = "rbxassetid://10723364725",
		["lucide-file-lock"] = "rbxassetid://10723364957",
		["lucide-file-lock-2"] = "rbxassetid://10723364861",
		["lucide-file-minus"] = "rbxassetid://10723365254",
		["lucide-file-minus-2"] = "rbxassetid://10723365086",
		["lucide-file-output"] = "rbxassetid://10723365457",
		["lucide-file-pie-chart"] = "rbxassetid://10723365598",
		["lucide-file-plus"] = "rbxassetid://10723365877",
		["lucide-file-plus-2"] = "rbxassetid://10723365766",
		["lucide-file-question"] = "rbxassetid://10723365987",
		["lucide-file-scan"] = "rbxassetid://10723366167",
		["lucide-file-search"] = "rbxassetid://10723366550",
		["lucide-file-search-2"] = "rbxassetid://10723366340",
		["lucide-file-signature"] = "rbxassetid://10723366741",
		["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
		["lucide-file-symlink"] = "rbxassetid://10723367098",
		["lucide-file-terminal"] = "rbxassetid://10723367244",
		["lucide-file-text"] = "rbxassetid://10723367380",
		["lucide-file-type"] = "rbxassetid://10723367606",
		["lucide-file-type-2"] = "rbxassetid://10723367509",
		["lucide-file-up"] = "rbxassetid://10723367734",
		["lucide-file-video"] = "rbxassetid://10723373884",
		["lucide-file-video-2"] = "rbxassetid://10723367834",
		["lucide-file-volume"] = "rbxassetid://10723374172",
		["lucide-file-volume-2"] = "rbxassetid://10723374030",
		["lucide-file-warning"] = "rbxassetid://10723374276",
		["lucide-file-x"] = "rbxassetid://10723374544",
		["lucide-file-x-2"] = "rbxassetid://10723374378",
		["lucide-files"] = "rbxassetid://10723374759",
		["lucide-film"] = "rbxassetid://10723374981",
		["lucide-filter"] = "rbxassetid://10723375128",
		["lucide-fingerprint"] = "rbxassetid://10723375250",
		["lucide-flag"] = "rbxassetid://10723375890",
		["lucide-flag-off"] = "rbxassetid://10723375443",
		["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
		["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
		["lucide-flame"] = "rbxassetid://10723376114",
		["lucide-flashlight"] = "rbxassetid://10723376471",
		["lucide-flashlight-off"] = "rbxassetid://10723376365",
		["lucide-flask-conical"] = "rbxassetid://10734883986",
		["lucide-flask-round"] = "rbxassetid://10723376614",
		["lucide-flip-horizontal"] = "rbxassetid://10723376884",
		["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
		["lucide-flip-vertical"] = "rbxassetid://10723377138",
		["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
		["lucide-flower"] = "rbxassetid://10747830374",
		["lucide-flower-2"] = "rbxassetid://10723377305",
		["lucide-focus"] = "rbxassetid://10723377537",
		["lucide-folder"] = "rbxassetid://10723387563",
		["lucide-folder-archive"] = "rbxassetid://10723384478",
		["lucide-folder-check"] = "rbxassetid://10723384605",
		["lucide-folder-clock"] = "rbxassetid://10723384731",
		["lucide-folder-closed"] = "rbxassetid://10723384893",
		["lucide-folder-cog"] = "rbxassetid://10723385213",
		["lucide-folder-cog-2"] = "rbxassetid://10723385036",
		["lucide-folder-down"] = "rbxassetid://10723385338",
		["lucide-folder-edit"] = "rbxassetid://10723385445",
		["lucide-folder-heart"] = "rbxassetid://10723385545",
		["lucide-folder-input"] = "rbxassetid://10723385721",
		["lucide-folder-key"] = "rbxassetid://10723385848",
		["lucide-folder-lock"] = "rbxassetid://10723386005",
		["lucide-folder-minus"] = "rbxassetid://10723386127",
		["lucide-folder-open"] = "rbxassetid://10723386277",
		["lucide-folder-output"] = "rbxassetid://10723386386",
		["lucide-folder-plus"] = "rbxassetid://10723386531",
		["lucide-folder-search"] = "rbxassetid://10723386787",
		["lucide-folder-search-2"] = "rbxassetid://10723386674",
		["lucide-folder-symlink"] = "rbxassetid://10723386930",
		["lucide-folder-tree"] = "rbxassetid://10723387085",
		["lucide-folder-up"] = "rbxassetid://10723387265",
		["lucide-folder-x"] = "rbxassetid://10723387448",
		["lucide-folders"] = "rbxassetid://10723387721",
		["lucide-form-input"] = "rbxassetid://10723387841",
		["lucide-forward"] = "rbxassetid://10723388016",
		["lucide-frame"] = "rbxassetid://10723394389",
		["lucide-framer"] = "rbxassetid://10723394565",
		["lucide-frown"] = "rbxassetid://10723394681",
		["lucide-fuel"] = "rbxassetid://10723394846",
		["lucide-function-square"] = "rbxassetid://10723395041",
		["lucide-gamepad"] = "rbxassetid://10723395457",
		["lucide-gamepad-2"] = "rbxassetid://10723395215",
		["lucide-gauge"] = "rbxassetid://10723395708",
		["lucide-gavel"] = "rbxassetid://10723395896",
		["lucide-gem"] = "rbxassetid://10723396000",
		["lucide-ghost"] = "rbxassetid://10723396107",
		["lucide-gift"] = "rbxassetid://10723396402",
		["lucide-gift-card"] = "rbxassetid://10723396225",
		["lucide-git-branch"] = "rbxassetid://10723396676",
		["lucide-git-branch-plus"] = "rbxassetid://10723396542",
		["lucide-git-commit"] = "rbxassetid://10723396812",
		["lucide-git-compare"] = "rbxassetid://10723396954",
		["lucide-git-fork"] = "rbxassetid://10723397049",
		["lucide-git-merge"] = "rbxassetid://10723397165",
		["lucide-git-pull-request"] = "rbxassetid://10723397431",
		["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
		["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
		["lucide-glass"] = "rbxassetid://10723397788",
		["lucide-glass-2"] = "rbxassetid://10723397529",
		["lucide-glass-water"] = "rbxassetid://10723397678",
		["lucide-glasses"] = "rbxassetid://10723397895",
		["lucide-globe"] = "rbxassetid://10723404337",
		["lucide-globe-2"] = "rbxassetid://10723398002",
		["lucide-grab"] = "rbxassetid://10723404472",
		["lucide-graduation-cap"] = "rbxassetid://10723404691",
		["lucide-grape"] = "rbxassetid://10723404822",
		["lucide-grid"] = "rbxassetid://10723404936",
		["lucide-grip-horizontal"] = "rbxassetid://10723405089",
		["lucide-grip-vertical"] = "rbxassetid://10723405236",
		["lucide-hammer"] = "rbxassetid://10723405360",
		["lucide-hand"] = "rbxassetid://10723405649",
		["lucide-hand-metal"] = "rbxassetid://10723405508",
		["lucide-hard-drive"] = "rbxassetid://10723405749",
		["lucide-hard-hat"] = "rbxassetid://10723405859",
		["lucide-hash"] = "rbxassetid://10723405975",
		["lucide-haze"] = "rbxassetid://10723406078",
		["lucide-headphones"] = "rbxassetid://10723406165",
		["lucide-heart"] = "rbxassetid://10723406885",
		["lucide-heart-crack"] = "rbxassetid://10723406299",
		["lucide-heart-handshake"] = "rbxassetid://10723406480",
		["lucide-heart-off"] = "rbxassetid://10723406662",
		["lucide-heart-pulse"] = "rbxassetid://10723406795",
		["lucide-help-circle"] = "rbxassetid://10723406988",
		["lucide-hexagon"] = "rbxassetid://10723407092",
		["lucide-highlighter"] = "rbxassetid://10723407192",
		["lucide-history"] = "rbxassetid://10723407335",
		["lucide-home"] = "rbxassetid://10723407389",
		["lucide-hourglass"] = "rbxassetid://10723407498",
		["lucide-ice-cream"] = "rbxassetid://10723414308",
		["lucide-image"] = "rbxassetid://10723415040",
		["lucide-image-minus"] = "rbxassetid://10723414487",
		["lucide-image-off"] = "rbxassetid://10723414677",
		["lucide-image-plus"] = "rbxassetid://10723414827",
		["lucide-import"] = "rbxassetid://10723415205",
		["lucide-inbox"] = "rbxassetid://10723415335",
		["lucide-indent"] = "rbxassetid://10723415494",
		["lucide-indian-rupee"] = "rbxassetid://10723415642",
		["lucide-infinity"] = "rbxassetid://10723415766",
		["lucide-info"] = "rbxassetid://10723415903",
		["lucide-inspect"] = "rbxassetid://10723416057",
		["lucide-italic"] = "rbxassetid://10723416195",
		["lucide-japanese-yen"] = "rbxassetid://10723416363",
		["lucide-joystick"] = "rbxassetid://10723416527",
		["lucide-key"] = "rbxassetid://10723416652",
		["lucide-keyboard"] = "rbxassetid://10723416765",
		["lucide-lamp"] = "rbxassetid://10723417513",
		["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
		["lucide-lamp-desk"] = "rbxassetid://10723417016",
		["lucide-lamp-floor"] = "rbxassetid://10723417131",
		["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
		["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
		["lucide-landmark"] = "rbxassetid://10723417608",
		["lucide-languages"] = "rbxassetid://10723417703",
		["lucide-laptop"] = "rbxassetid://10723423881",
		["lucide-laptop-2"] = "rbxassetid://10723417797",
		["lucide-lasso"] = "rbxassetid://10723424235",
		["lucide-lasso-select"] = "rbxassetid://10723424058",
		["lucide-laugh"] = "rbxassetid://10723424372",
		["lucide-layers"] = "rbxassetid://10723424505",
		["lucide-layout"] = "rbxassetid://10723425376",
		["lucide-layout-dashboard"] = "rbxassetid://10723424646",
		["lucide-layout-grid"] = "rbxassetid://10723424838",
		["lucide-layout-list"] = "rbxassetid://10723424963",
		["lucide-layout-template"] = "rbxassetid://10723425187",
		["lucide-leaf"] = "rbxassetid://10723425539",
		["lucide-library"] = "rbxassetid://10723425615",
		["lucide-life-buoy"] = "rbxassetid://10723425685",
		["lucide-lightbulb"] = "rbxassetid://10723425852",
		["lucide-lightbulb-off"] = "rbxassetid://10723425762",
		["lucide-line-chart"] = "rbxassetid://10723426393",
		["lucide-link"] = "rbxassetid://10723426722",
		["lucide-link-2"] = "rbxassetid://10723426595",
		["lucide-link-2-off"] = "rbxassetid://10723426513",
		["lucide-list"] = "rbxassetid://10723433811",
		["lucide-list-checks"] = "rbxassetid://10734884548",
		["lucide-list-end"] = "rbxassetid://10723426886",
		["lucide-list-minus"] = "rbxassetid://10723426986",
		["lucide-list-music"] = "rbxassetid://10723427081",
		["lucide-list-ordered"] = "rbxassetid://10723427199",
		["lucide-list-plus"] = "rbxassetid://10723427334",
		["lucide-list-start"] = "rbxassetid://10723427494",
		["lucide-list-video"] = "rbxassetid://10723427619",
		["lucide-list-x"] = "rbxassetid://10723433655",
		["lucide-loader"] = "rbxassetid://10723434070",
		["lucide-loader-2"] = "rbxassetid://10723433935",
		["lucide-locate"] = "rbxassetid://10723434557",
		["lucide-locate-fixed"] = "rbxassetid://10723434236",
		["lucide-locate-off"] = "rbxassetid://10723434379",
		["lucide-lock"] = "rbxassetid://10723434711",
		["lucide-log-in"] = "rbxassetid://10723434830",
		["lucide-log-out"] = "rbxassetid://10723434906",
		["lucide-luggage"] = "rbxassetid://10723434993",
		["lucide-magnet"] = "rbxassetid://10723435069",
		["lucide-mail"] = "rbxassetid://10734885430",
		["lucide-mail-check"] = "rbxassetid://10723435182",
		["lucide-mail-minus"] = "rbxassetid://10723435261",
		["lucide-mail-open"] = "rbxassetid://10723435342",
		["lucide-mail-plus"] = "rbxassetid://10723435443",
		["lucide-mail-question"] = "rbxassetid://10723435515",
		["lucide-mail-search"] = "rbxassetid://10734884739",
		["lucide-mail-warning"] = "rbxassetid://10734885015",
		["lucide-mail-x"] = "rbxassetid://10734885247",
		["lucide-mails"] = "rbxassetid://10734885614",
		["lucide-map"] = "rbxassetid://10734886202",
		["lucide-map-pin"] = "rbxassetid://10734886004",
		["lucide-map-pin-off"] = "rbxassetid://10734885803",
		["lucide-maximize"] = "rbxassetid://10734886735",
		["lucide-maximize-2"] = "rbxassetid://10734886496",
		["lucide-medal"] = "rbxassetid://10734887072",
		["lucide-megaphone"] = "rbxassetid://10734887454",
		["lucide-megaphone-off"] = "rbxassetid://10734887311",
		["lucide-meh"] = "rbxassetid://10734887603",
		["lucide-menu"] = "rbxassetid://10734887784",
		["lucide-message-circle"] = "rbxassetid://10734888000",
		["lucide-message-square"] = "rbxassetid://10734888228",
		["lucide-mic"] = "rbxassetid://10734888864",
		["lucide-mic-2"] = "rbxassetid://10734888430",
		["lucide-mic-off"] = "rbxassetid://10734888646",
		["lucide-microscope"] = "rbxassetid://10734889106",
		["lucide-microwave"] = "rbxassetid://10734895076",
		["lucide-milestone"] = "rbxassetid://10734895310",
		["lucide-minimize"] = "rbxassetid://10734895698",
		["lucide-minimize-2"] = "rbxassetid://10734895530",
		["lucide-minus"] = "rbxassetid://10734896206",
		["lucide-minus-circle"] = "rbxassetid://10734895856",
		["lucide-minus-square"] = "rbxassetid://10734896029",
		["lucide-monitor"] = "rbxassetid://10734896881",
		["lucide-monitor-off"] = "rbxassetid://10734896360",
		["lucide-monitor-speaker"] = "rbxassetid://10734896512",
		["lucide-moon"] = "rbxassetid://10734897102",
		["lucide-more-horizontal"] = "rbxassetid://10734897250",
		["lucide-more-vertical"] = "rbxassetid://10734897387",
		["lucide-mountain"] = "rbxassetid://10734897956",
		["lucide-mountain-snow"] = "rbxassetid://10734897665",
		["lucide-mouse"] = "rbxassetid://10734898592",
		["lucide-mouse-pointer"] = "rbxassetid://10734898476",
		["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
		["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
		["lucide-move"] = "rbxassetid://10734900011",
		["lucide-move-3d"] = "rbxassetid://10734898756",
		["lucide-move-diagonal"] = "rbxassetid://10734899164",
		["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
		["lucide-move-horizontal"] = "rbxassetid://10734899414",
		["lucide-move-vertical"] = "rbxassetid://10734899821",
		["lucide-music"] = "rbxassetid://10734905958",
		["lucide-music-2"] = "rbxassetid://10734900215",
		["lucide-music-3"] = "rbxassetid://10734905665",
		["lucide-music-4"] = "rbxassetid://10734905823",
		["lucide-navigation"] = "rbxassetid://10734906744",
		["lucide-navigation-2"] = "rbxassetid://10734906332",
		["lucide-navigation-2-off"] = "rbxassetid://10734906144",
		["lucide-navigation-off"] = "rbxassetid://10734906580",
		["lucide-network"] = "rbxassetid://10734906975",
		["lucide-newspaper"] = "rbxassetid://10734907168",
		["lucide-octagon"] = "rbxassetid://10734907361",
		["lucide-option"] = "rbxassetid://10734907649",
		["lucide-outdent"] = "rbxassetid://10734907933",
		["lucide-package"] = "rbxassetid://10734909540",
		["lucide-package-2"] = "rbxassetid://10734908151",
		["lucide-package-check"] = "rbxassetid://10734908384",
		["lucide-package-minus"] = "rbxassetid://10734908626",
		["lucide-package-open"] = "rbxassetid://10734908793",
		["lucide-package-plus"] = "rbxassetid://10734909016",
		["lucide-package-search"] = "rbxassetid://10734909196",
		["lucide-package-x"] = "rbxassetid://10734909375",
		["lucide-paint-bucket"] = "rbxassetid://10734909847",
		["lucide-paintbrush"] = "rbxassetid://10734910187",
		["lucide-paintbrush-2"] = "rbxassetid://10734910030",
		["lucide-palette"] = "rbxassetid://10734910430",
		["lucide-palmtree"] = "rbxassetid://10734910680",
		["lucide-paperclip"] = "rbxassetid://10734910927",
		["lucide-party-popper"] = "rbxassetid://10734918735",
		["lucide-pause"] = "rbxassetid://10734919336",
		["lucide-pause-circle"] = "rbxassetid://10735024209",
		["lucide-pause-octagon"] = "rbxassetid://10734919143",
		["lucide-pen-tool"] = "rbxassetid://10734919503",
		["lucide-pencil"] = "rbxassetid://10734919691",
		["lucide-percent"] = "rbxassetid://10734919919",
		["lucide-person-standing"] = "rbxassetid://10734920149",
		["lucide-phone"] = "rbxassetid://10734921524",
		["lucide-phone-call"] = "rbxassetid://10734920305",
		["lucide-phone-forwarded"] = "rbxassetid://10734920508",
		["lucide-phone-incoming"] = "rbxassetid://10734920694",
		["lucide-phone-missed"] = "rbxassetid://10734920845",
		["lucide-phone-off"] = "rbxassetid://10734921077",
		["lucide-phone-outgoing"] = "rbxassetid://10734921288",
		["lucide-pie-chart"] = "rbxassetid://10734921727",
		["lucide-piggy-bank"] = "rbxassetid://10734921935",
		["lucide-pin"] = "rbxassetid://10734922324",
		["lucide-pin-off"] = "rbxassetid://10734922180",
		["lucide-pipette"] = "rbxassetid://10734922497",
		["lucide-pizza"] = "rbxassetid://10734922774",
		["lucide-plane"] = "rbxassetid://10734922971",
		["lucide-play"] = "rbxassetid://10734923549",
		["lucide-play-circle"] = "rbxassetid://10734923214",
		["lucide-plus"] = "rbxassetid://10734924532",
		["lucide-plus-circle"] = "rbxassetid://10734923868",
		["lucide-plus-square"] = "rbxassetid://10734924219",
		["lucide-podcast"] = "rbxassetid://10734929553",
		["lucide-pointer"] = "rbxassetid://10734929723",
		["lucide-pound-sterling"] = "rbxassetid://10734929981",
		["lucide-power"] = "rbxassetid://10734930466",
		["lucide-power-off"] = "rbxassetid://10734930257",
		["lucide-printer"] = "rbxassetid://10734930632",
		["lucide-puzzle"] = "rbxassetid://10734930886",
		["lucide-quote"] = "rbxassetid://10734931234",
		["lucide-radio"] = "rbxassetid://10734931596",
		["lucide-radio-receiver"] = "rbxassetid://10734931402",
		["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
		["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
		["lucide-recycle"] = "rbxassetid://10734932295",
		["lucide-redo"] = "rbxassetid://10734932822",
		["lucide-redo-2"] = "rbxassetid://10734932586",
		["lucide-refresh-ccw"] = "rbxassetid://10734933056",
		["lucide-refresh-cw"] = "rbxassetid://10734933222",
		["lucide-refrigerator"] = "rbxassetid://10734933465",
		["lucide-regex"] = "rbxassetid://10734933655",
		["lucide-repeat"] = "rbxassetid://10734933966",
		["lucide-repeat-1"] = "rbxassetid://10734933826",
		["lucide-reply"] = "rbxassetid://10734934252",
		["lucide-reply-all"] = "rbxassetid://10734934132",
		["lucide-rewind"] = "rbxassetid://10734934347",
		["lucide-rocket"] = "rbxassetid://10734934585",
		["lucide-rocking-chair"] = "rbxassetid://10734939942",
		["lucide-rotate-3d"] = "rbxassetid://10734940107",
		["lucide-rotate-ccw"] = "rbxassetid://10734940376",
		["lucide-rotate-cw"] = "rbxassetid://10734940654",
		["lucide-rss"] = "rbxassetid://10734940825",
		["lucide-ruler"] = "rbxassetid://10734941018",
		["lucide-russian-ruble"] = "rbxassetid://10734941199",
		["lucide-sailboat"] = "rbxassetid://10734941354",
		["lucide-save"] = "rbxassetid://10734941499",
		["lucide-scale"] = "rbxassetid://10734941912",
		["lucide-scale-3d"] = "rbxassetid://10734941739",
		["lucide-scaling"] = "rbxassetid://10734942072",
		["lucide-scan"] = "rbxassetid://10734942565",
		["lucide-scan-face"] = "rbxassetid://10734942198",
		["lucide-scan-line"] = "rbxassetid://10734942351",
		["lucide-scissors"] = "rbxassetid://10734942778",
		["lucide-screen-share"] = "rbxassetid://10734943193",
		["lucide-screen-share-off"] = "rbxassetid://10734942967",
		["lucide-scroll"] = "rbxassetid://10734943448",
		["lucide-search"] = "rbxassetid://10734943674",
		["lucide-send"] = "rbxassetid://10734943902",
		["lucide-separator-horizontal"] = "rbxassetid://10734944115",
		["lucide-separator-vertical"] = "rbxassetid://10734944326",
		["lucide-server"] = "rbxassetid://10734949856",
		["lucide-server-cog"] = "rbxassetid://10734944444",
		["lucide-server-crash"] = "rbxassetid://10734944554",
		["lucide-server-off"] = "rbxassetid://10734944668",
		["lucide-settings"] = "rbxassetid://10734950309",
		["lucide-settings-2"] = "rbxassetid://10734950020",
		["lucide-share"] = "rbxassetid://10734950813",
		["lucide-share-2"] = "rbxassetid://10734950553",
		["lucide-sheet"] = "rbxassetid://10734951038",
		["lucide-shield"] = "rbxassetid://10734951847",
		["lucide-shield-alert"] = "rbxassetid://10734951173",
		["lucide-shield-check"] = "rbxassetid://10734951367",
		["lucide-shield-close"] = "rbxassetid://10734951535",
		["lucide-shield-off"] = "rbxassetid://10734951684",
		["lucide-shirt"] = "rbxassetid://10734952036",
		["lucide-shopping-bag"] = "rbxassetid://10734952273",
		["lucide-shopping-cart"] = "rbxassetid://10734952479",
		["lucide-shovel"] = "rbxassetid://10734952773",
		["lucide-shower-head"] = "rbxassetid://10734952942",
		["lucide-shrink"] = "rbxassetid://10734953073",
		["lucide-shrub"] = "rbxassetid://10734953241",
		["lucide-shuffle"] = "rbxassetid://10734953451",
		["lucide-sidebar"] = "rbxassetid://10734954301",
		["lucide-sidebar-close"] = "rbxassetid://10734953715",
		["lucide-sidebar-open"] = "rbxassetid://10734954000",
		["lucide-sigma"] = "rbxassetid://10734954538",
		["lucide-signal"] = "rbxassetid://10734961133",
		["lucide-signal-high"] = "rbxassetid://10734954807",
		["lucide-signal-low"] = "rbxassetid://10734955080",
		["lucide-signal-medium"] = "rbxassetid://10734955336",
		["lucide-signal-zero"] = "rbxassetid://10734960878",
		["lucide-siren"] = "rbxassetid://10734961284",
		["lucide-skip-back"] = "rbxassetid://10734961526",
		["lucide-skip-forward"] = "rbxassetid://10734961809",
		["lucide-skull"] = "rbxassetid://10734962068",
		["lucide-slack"] = "rbxassetid://10734962339",
		["lucide-slash"] = "rbxassetid://10734962600",
		["lucide-slice"] = "rbxassetid://10734963024",
		["lucide-sliders"] = "rbxassetid://10734963400",
		["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
		["lucide-smartphone"] = "rbxassetid://10734963940",
		["lucide-smartphone-charging"] = "rbxassetid://10734963671",
		["lucide-smile"] = "rbxassetid://10734964441",
		["lucide-smile-plus"] = "rbxassetid://10734964188",
		["lucide-snowflake"] = "rbxassetid://10734964600",
		["lucide-sofa"] = "rbxassetid://10734964852",
		["lucide-sort-asc"] = "rbxassetid://10734965115",
		["lucide-sort-desc"] = "rbxassetid://10734965287",
		["lucide-speaker"] = "rbxassetid://10734965419",
		["lucide-sprout"] = "rbxassetid://10734965572",
		["lucide-square"] = "rbxassetid://10734965702",
		["lucide-star"] = "rbxassetid://10734966248",
		["lucide-star-half"] = "rbxassetid://10734965897",
		["lucide-star-off"] = "rbxassetid://10734966097",
		["lucide-stethoscope"] = "rbxassetid://10734966384",
		["lucide-sticker"] = "rbxassetid://10734972234",
		["lucide-sticky-note"] = "rbxassetid://10734972463",
		["lucide-stop-circle"] = "rbxassetid://10734972621",
		["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
		["lucide-stretch-vertical"] = "rbxassetid://10734973130",
		["lucide-strikethrough"] = "rbxassetid://10734973290",
		["lucide-subscript"] = "rbxassetid://10734973457",
		["lucide-sun"] = "rbxassetid://10734974297",
		["lucide-sun-dim"] = "rbxassetid://10734973645",
		["lucide-sun-medium"] = "rbxassetid://10734973778",
		["lucide-sun-moon"] = "rbxassetid://10734973999",
		["lucide-sun-snow"] = "rbxassetid://10734974130",
		["lucide-sunrise"] = "rbxassetid://10734974522",
		["lucide-sunset"] = "rbxassetid://10734974689",
		["lucide-superscript"] = "rbxassetid://10734974850",
		["lucide-swiss-franc"] = "rbxassetid://10734975024",
		["lucide-switch-camera"] = "rbxassetid://10734975214",
		["lucide-sword"] = "rbxassetid://10734975486",
		["lucide-swords"] = "rbxassetid://10734975692",
		["lucide-syringe"] = "rbxassetid://10734975932",
		["lucide-table"] = "rbxassetid://10734976230",
		["lucide-table-2"] = "rbxassetid://10734976097",
		["lucide-tablet"] = "rbxassetid://10734976394",
		["lucide-tag"] = "rbxassetid://10734976528",
		["lucide-tags"] = "rbxassetid://10734976739",
		["lucide-target"] = "rbxassetid://10734977012",
		["lucide-tent"] = "rbxassetid://10734981750",
		["lucide-terminal"] = "rbxassetid://10734982144",
		["lucide-terminal-square"] = "rbxassetid://10734981995",
		["lucide-text-cursor"] = "rbxassetid://10734982395",
		["lucide-text-cursor-input"] = "rbxassetid://10734982297",
		["lucide-thermometer"] = "rbxassetid://10734983134",
		["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
		["lucide-thermometer-sun"] = "rbxassetid://10734982771",
		["lucide-thumbs-down"] = "rbxassetid://10734983359",
		["lucide-thumbs-up"] = "rbxassetid://10734983629",
		["lucide-ticket"] = "rbxassetid://10734983868",
		["lucide-timer"] = "rbxassetid://10734984606",
		["lucide-timer-off"] = "rbxassetid://10734984138",
		["lucide-timer-reset"] = "rbxassetid://10734984355",
		["lucide-toggle-left"] = "rbxassetid://10734984834",
		["lucide-toggle-right"] = "rbxassetid://10734985040",
		["lucide-tornado"] = "rbxassetid://10734985247",
		["lucide-toy-brick"] = "rbxassetid://10747361919",
		["lucide-train"] = "rbxassetid://10747362105",
		["lucide-trash"] = "rbxassetid://10747362393",
		["lucide-trash-2"] = "rbxassetid://10747362241",
		["lucide-tree-deciduous"] = "rbxassetid://10747362534",
		["lucide-tree-pine"] = "rbxassetid://10747362748",
		["lucide-trees"] = "rbxassetid://10747363016",
		["lucide-trending-down"] = "rbxassetid://10747363205",
		["lucide-trending-up"] = "rbxassetid://10747363465",
		["lucide-triangle"] = "rbxassetid://10747363621",
		["lucide-trophy"] = "rbxassetid://10747363809",
		["lucide-truck"] = "rbxassetid://10747364031",
		["lucide-tv"] = "rbxassetid://10747364593",
		["lucide-tv-2"] = "rbxassetid://10747364302",
		["lucide-type"] = "rbxassetid://10747364761",
		["lucide-umbrella"] = "rbxassetid://10747364971",
		["lucide-underline"] = "rbxassetid://10747365191",
		["lucide-undo"] = "rbxassetid://10747365484",
		["lucide-undo-2"] = "rbxassetid://10747365359",
		["lucide-unlink"] = "rbxassetid://10747365771",
		["lucide-unlink-2"] = "rbxassetid://10747397871",
		["lucide-unlock"] = "rbxassetid://10747366027",
		["lucide-upload"] = "rbxassetid://10747366434",
		["lucide-upload-cloud"] = "rbxassetid://10747366266",
		["lucide-usb"] = "rbxassetid://10747366606",
		["lucide-user"] = "rbxassetid://10747373176",
		["lucide-user-check"] = "rbxassetid://10747371901",
		["lucide-user-cog"] = "rbxassetid://10747372167",
		["lucide-user-minus"] = "rbxassetid://10747372346",
		["lucide-user-plus"] = "rbxassetid://10747372702",
		["lucide-user-x"] = "rbxassetid://10747372992",
		["lucide-users"] = "rbxassetid://10747373426",
		["lucide-utensils"] = "rbxassetid://10747373821",
		["lucide-utensils-crossed"] = "rbxassetid://10747373629",
		["lucide-venetian-mask"] = "rbxassetid://10747374003",
		["lucide-verified"] = "rbxassetid://10747374131",
		["lucide-vibrate"] = "rbxassetid://10747374489",
		["lucide-vibrate-off"] = "rbxassetid://10747374269",
		["lucide-video"] = "rbxassetid://10747374938",
		["lucide-video-off"] = "rbxassetid://10747374721",
		["lucide-view"] = "rbxassetid://10747375132",
		["lucide-voicemail"] = "rbxassetid://10747375281",
		["lucide-volume"] = "rbxassetid://10747376008",
		["lucide-volume-1"] = "rbxassetid://10747375450",
		["lucide-volume-2"] = "rbxassetid://10747375679",
		["lucide-volume-x"] = "rbxassetid://10747375880",
		["lucide-wallet"] = "rbxassetid://10747376205",
		["lucide-wand"] = "rbxassetid://10747376565",
		["lucide-wand-2"] = "rbxassetid://10747376349",
		["lucide-watch"] = "rbxassetid://10747376722",
		["lucide-waves"] = "rbxassetid://10747376931",
		["lucide-webcam"] = "rbxassetid://10747381992",
		["lucide-wifi"] = "rbxassetid://10747382504",
		["lucide-wifi-off"] = "rbxassetid://10747382268",
		["lucide-wind"] = "rbxassetid://10747382750",
		["lucide-wrap-text"] = "rbxassetid://10747383065",
		["lucide-wrench"] = "rbxassetid://10747383470",
		["lucide-x"] = "rbxassetid://10747384394",
		["lucide-x-circle"] = "rbxassetid://10747383819",
		["lucide-x-octagon"] = "rbxassetid://10747384037",
		["lucide-x-square"] = "rbxassetid://10747384217",
		["lucide-zoom-in"] = "rbxassetid://10747384552",
		["lucide-zoom-out"] = "rbxassetid://10747384679"
	}
}

--// Services
local Services = Library.Services
local Players = Services.Players
local UserInputService = Services.UserInputService
local TweenService = Services.TweenService
local RunService = Services.RunService
local Debris = Services.Debris

--// Variables
local LocalPlayer = Players.LocalPlayer
local GetMouse = LocalPlayer:GetMouse()

if RunService:IsStudio() then
	Library.IsMobile = UserInputService.TouchEnabled and UserInputService.MouseEnabled == false
else
	Library.IsMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())
end

for index, value in pairs(Library.Presets) do
	table.insert(Library.ThemeList, index)
end
table.sort(Library.ThemeList)

do
	function Library:Log(...)
		return warn("<Fluent>", ...)
	end

	function Library:Create(...)
		local Name, Properties, Children = ...
		local success, result = pcall(function()
			local Object = Instance.new(Name)

			for Name, Value in next, Properties or {} do
				Object[Name] = Value
			end

			for _, Child in next, Children or {} do
				Child.Parent = Object
			end

			return Object
		end)

		if success then
			return result
		else
			Library:Log("Issue: " .. result)
			return
		end
	end

	function Library:Connect(...)
		local Signal, Callback = ...
		if typeof(Callback) == "function" then
			local connection
			local success, result = pcall(function()
				connection = Signal:Connect(Callback)
			end)
			if success then
				table.insert(Library.Connections, connection)
				return connection
			else
				Library:Log(Signal .. ": " .. result)
				return
			end
		else
			Library:Log("Callback must be function")
			return
		end
	end
end

do
	function Utility:Thread(func, ...)
		local args = { ... }
		local success, result = pcall(function()
			coroutine.wrap(func)(unpack(args))
		end)

		if success then
			return result
		else
			Library:Log(result)
		end
	end

	function Utility:Decimal(...)
		local number, precision = ...
		if typeof(number) ~= "number" then
			return
		end
		if precision ~= 0 then
			local factor = 1 / precision
			return math.round(number * factor) / factor
		else
			return number
		end
	end

	function Utility:GetIcon(icon)
		if string.find(icon, "rbxassetid://") then
			return icon
		end
		local K = self.Icons["lucide-" .. icon]
		if K then
			return K
		else
			Library:Log("Icon not found: " .. icon)
			return "rbxassetid://10747372992"
		end
	end

	function Utility:Animation(Object, Properties, Times, ...)
		local Tween_Style = {...}
		local Tween
		local success, result = pcall(function()
			if Library.Animation then
				Tween = TweenService:Create(Object, TweenInfo.new(Times, unpack(Tween_Style)), Properties)
				Tween:Play()
			else
				for index, value in pairs(Properties) do
					Object[index] = value
				end
			end
		end)
		if success then
			return Tween
		else
			Library:Log(result)
			return
		end
	end

	function Utility:LightenColor(Color, Factor)
		local hue, saturation, value = Color3.toHSV(Color)
		return Color3.fromHSV(hue, saturation, value + (1 - value) * Factor)
	end

	function Utility:DarkenColor(Color, Factor)
		local hue, saturation, value = Color3.toHSV(Color)
		return Color3.fromHSV(hue, saturation, value - (1 - value) * Factor)
	end

	function Utility:MakeDraggable(Target, Handle)
		local dragging, dragStartPos, startPos

		local function updateDrag(input)
			local delta = input.Position - dragStartPos
			if delta then
				local newPosition = UDim2.new(
					startPos.X.Scale,
					startPos.X.Offset + delta.X,
					startPos.Y.Scale,
					startPos.Y.Offset + delta.Y
				)
				self:Animation(Target, {Position = newPosition}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)
			end
		end

		Library:Connect(Handle.InputBegan, function(input)
			if not Library.Maximized and
				(input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				dragging = true
				dragStartPos = input.Position
				startPos = Target.Position
			end
		end)

		Library:Connect(Handle.InputEnded, function(input, isProcessed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and not isProcessed then
				dragging = false
			end
		end)

		Library:Connect(UserInputService.TouchEnded, function(input, isProcessed)
			if dragging and input.UserInputType == Enum.UserInputType.Touch then
				dragging = false
			end
		end)

		Library:Connect(UserInputService.InputChanged, function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragging then
					updateDrag(input)
				end
			end
		end)
	end

	function Utility:MakeResizeable(Target, Handle)
		local Resizing, StartInputPosition, StartSize

		local function UpdateResize(Input)
			local DeltaX = Input.Position.X - StartInputPosition.X
			local DeltaY = Input.Position.Y - StartInputPosition.Y

			if DeltaX or DeltaY then
				local NewSize = UDim2.fromOffset(StartSize.X.Offset + DeltaX, StartSize.Y.Offset + DeltaY)
				local ClampedSize = UDim2.fromOffset(
					math.max(470, NewSize.X.Offset),
					math.max(380, NewSize.Y.Offset)
				)
				Target.Size = ClampedSize
			end
		end

		Library:Connect(Handle.InputBegan, function(Input)
			if not Library.Maximized and
				(Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
				Resizing = true
				StartInputPosition = Input.Position
				StartSize = Target.Size
			end
		end)

		Library:Connect(Handle.InputEnded, function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Resizing = false
			end
		end)

		Library:Connect(UserInputService.TouchEnded, function(Input, _)
			if Resizing and Input.UserInputType == Enum.UserInputType.Touch then
				Resizing = false
			end
		end)

		Library:Connect(UserInputService.InputChanged, function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
				if Resizing then
					UpdateResize(Input)
				end
			end
		end)
	end

	function Utility:SetThemeProperty(TargetTable, PropertyName, Value)
		for _, Object in pairs(TargetTable) do
			Object[PropertyName] = Value
		end
	end

	function Utility:SetTheme(ThemeName)
		local Theme = Library.Presets[ThemeName]
		Library.Themes = Theme

		if not Theme then
			Library:Log("Theme not found: " .. ThemeName)
			return
		end

		local BackgroundColor = Theme.BackgroundColor
		Utility:SetThemeProperty(Library.Storage.Background, "BackgroundColor3", BackgroundColor)
		Utility:SetThemeProperty(Library.Storage.SelectedFrame, "BackgroundColor3", BackgroundColor)
		Utility:SetThemeProperty(Library.Storage.Toggles, "BackgroundColor3", BackgroundColor)
		Utility:SetThemeProperty(Library.Storage.ToggleImages, "ImageColor3", BackgroundColor)
		Utility:SetThemeProperty(Library.Storage.Selected, "BackgroundColor3", BackgroundColor)
		Utility:SetThemeProperty(Library.Storage.SliderValue, "BackgroundColor3", BackgroundColor)
		Utility:SetThemeProperty(Library.Storage.SliderImage, "ImageColor3", BackgroundColor)

		local Lightened = Utility:LightenColor(BackgroundColor, 0.05)
		local Darkened = Utility:DarkenColor(BackgroundColor, 0.05)

		Utility:SetThemeProperty(
			Library.Storage.BackgroundGradient,
			"Color",
			ColorSequence.new({
				ColorSequenceKeypoint.new(0, BackgroundColor),
				ColorSequenceKeypoint.new(1, Lightened)
			})
		)

		Utility:SetThemeProperty(
			Library.Storage.Notification,
			"Color",
			ColorSequence.new({
				ColorSequenceKeypoint.new(0, BackgroundColor),
				ColorSequenceKeypoint.new(1, Darkened)
			})
		)

		Utility:SetThemeProperty(
			Library.Storage.DropdownGradient,
			"Color",
			ColorSequence.new({
				ColorSequenceKeypoint.new(0, BackgroundColor),
				ColorSequenceKeypoint.new(1, Lightened)
			})
		)
	end
end
function Library:Window(Config)
	local State = {
		Active = nil,
		Maximized = false,
		Visible = true,
		Ready = false,
	}

	local Config = Config or {}

	local Params = {
		StartupName = Config.StartupName or Config.startname or "Qwerty",
		Title = Config.title or Config.Title or "Window",
		SubTitle = Config.subtitle or Config.Subtitle or Config.SubTitle or "Copyright QWERTY HUB",
		TabWidth = Config.tabwidth or Config.TabWidth or 160,
		Size = Config.size or Config.Size or self.IsMobile and UDim2.fromOffset(464, 368) or UDim2.fromOffset(580, 460),
		MinimizeKey = Config.minimizekey or Config.MinimizeKey or Enum.KeyCode.Home,
		Theme = Config.theme or Config.Theme or "Default",
		ExitCallback = Config.exitcallback or Config.ExitCallback or function() end,
		Transparency = Config.transparency or Config.Transparency or 0.85,
		FontFace = Config.font or Config.Font or nil
	}

	Library.Settings.FontFace = Params.FontFace
	self.Settings.Keybind = Params.MinimizeKey
	self.Settings.Transparency = Params.Transparency
	self.Theme = Params.Theme

	local Path = RunService:IsStudio() and LocalPlayer.PlayerGui or game:GetService("CoreGui")
	local ScreenGui = self:Create("ScreenGui",{
		Name = "NEXT_GEN",
		Parent = Path,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		ResetOnSpawn = false,
		DisplayOrder = 100000000000,
		IgnoreGuiInset = true
	})

	local Frame = Library:Create("Frame", {
		Parent = ScreenGui,
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.new(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0.151, 0,0.093, 0),
	})

	local StartupLabel = Library:Create("TextLabel", {
		Name = "StartupLabel",
		Parent = Frame,
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.new(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, 0, 0.234, 0),
		ZIndex = 2,
		Font = Enum.Font.GothamBold,
		Text = "Starting up! ".. Params.StartupName .." Hub",
		TextColor3 = Color3.new(1, 1, 1),
		TextScaled = true,
		TextSize = 14,
		TextWrapped = true
	})

	local InitializingLabel = Library:Create("TextLabel", {
		Name = "InitializingLabel",
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.new(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.667, 0),
		Size = UDim2.new(1, 0, 0.222, 0),
		ZIndex = 2,
		Font = Enum.Font.GothamBold,
		Text = "Initializing the UI...",
		TextColor3 = Color3.new(1, 1, 1),
		TextScaled = true,
		TextSize = 14,
		TextWrapped = true,
		TextTransparency = 1
	})

	task.delay(1,function()
		InitializingLabel.Parent = Frame
		Utility:Animation(StartupLabel, {Position = UDim2.new(0.5, 0, 0.345, 0)}, .1, Enum.EasingStyle.Linear)
		Utility:Animation(InitializingLabel, {TextTransparency = 0}, .1, Enum.EasingStyle.Linear)
		task.wait(3)
		Utility:Animation(StartupLabel, {Position = UDim2.new(0.5, 0, 0.275, 0), TextTransparency = 1}, .1, Enum.EasingStyle.Linear)
		Utility:Animation(InitializingLabel, {Position = UDim2.new(0.5, 0,0.5, 0)}, .1, Enum.EasingStyle.Linear)
		task.wait(1)
		local last_tween = Utility:Animation(InitializingLabel, {TextTransparency = 1}, .1, Enum.EasingStyle.Linear)

		last_tween.Completed:Connect(function()
			State.Ready = true
			if StartupLabel then
				StartupLabel:Destroy()
			end
			if InitializingLabel then
				InitializingLabel:Destroy()
			end
		end)
	end)
	
	repeat task.wait() until State.Ready

	function Library:Destroy()
		for _, Value in pairs(self.Connections) do
			Value:Disconnect()
		end
		ScreenGui:Destroy()
	end

	local MainFrame = self:Create("Frame",{
		Name = "MainFrame",
		Parent = ScreenGui,
		Visible = true,
		Size = Params.Size,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	})

	function Library:Toggle()
		MainFrame.Visible = not MainFrame.Visible
		State.Visible = not State.Visible
	end

	Library:Connect(UserInputService.InputBegan, function(input, tobiee)
		if input.KeyCode == self.Settings.Keybind and not tobiee then
			Library:Toggle()
		end
	end)

	local NotificationHolder = self:Create("Frame", {
		Name = "NotificationHolder",
		Parent = ScreenGui,
		AnchorPoint = Vector2.new(1, 1),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(1, -30, 1, -30),
		Size = UDim2.new(0, 310, 1, -30)
	})
	local UIListLayout = self:Create("UIListLayout", {
		Name = "UIListLayout",
		Parent = NotificationHolder,
		Padding = UDim.new(0, 20),
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom
	})

	function Library:Notify(Config)
		local State = {Closed = false}
		local Config = Config or {}
		local Params = {
			Title = Config.title or Config.Title or "NEXT",
			Content = Config.content or Config.Content or "This is a notification!",
			SubContent = Config.subcontent or Config.Subcontent or Config.SubContent or false,
			Duration = Config.duration or Config.Duration or 3
		}

		local NotificationObject = self:Create("Frame", {
			Name = "NotificationObject",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 200),
			Position = UDim2.new(0, 0, 1, 0),
			Parent = NotificationHolder
		})

		local NotificationObjectFrame = self:Create("Frame", {
			Name = "NotificationObjectFrame",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.new(4, 0, 0, 0),
			Parent = NotificationObject
		})

		local Notification = self:Create("Frame", {
			Name = "Notification",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 0.9,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Parent = NotificationObjectFrame
		}, {
			self:Create("UICorner", {
				CornerRadius = UDim.new(0, 8)
			})
		})

		local NotifyShadow = self:Create("ImageLabel", {
			Name = "NotifyShadow",
			Image = "rbxassetid://8992230677",
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ImageTransparency = 0.7,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(99, 99, 99, 99),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.new(1, 120, 1, 116),
			Parent = Notification
		})

		local Background = self:Create("Frame", {
			Name = "Background",
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BackgroundTransparency = 0.45,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Parent = Notification
		}, {
			self:Create("UICorner", {
				CornerRadius = UDim.new(0, 8)
			})
		})

		local Gradient = self:Create("Frame", {
			Name = "Gradient",
			BackgroundColor3 = Color3.fromRGB(45, 45, 45),
			BackgroundTransparency = 0.4,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Parent = Notification
		}, {
			self:Create("UICorner", {
				CornerRadius = UDim.new(0, 8)
			})
		})

		local UIGradient = self:Create("UIGradient", {
			Name = "UIGradient",
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Library.Themes.BackgroundColor),
				ColorSequenceKeypoint.new(1, Library.Themes.BackgroundColor)
			}),
			Rotation = 90,
			Parent = Gradient
		})
		table.insert(Library.Storage.Notification, UIGradient)

		local NotifyTitle = self:Create("TextLabel", {
			Name = "NotifyTitle",
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
			RichText = true,
			Text = Params.Title,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 13,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.fromOffset(14, 17),
			Size = UDim2.new(1, -12, 0, 12),
			Parent = NotificationObjectFrame
		})

		local CloseObjectButton = self:Create("TextButton", {
			Name = "CloseObjectButton",
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
			Text = "",
			TextColor3 = Color3.fromRGB(0, 0, 0),
			TextSize = 14,
			AutoButtonColor = false,
			AnchorPoint = Vector2.new(1, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.new(1, -14, 0, 13),
			Size = UDim2.fromOffset(20, 20),
			Parent = NotificationObjectFrame
		})

		local CloseObjectImage = self:Create("ImageLabel", {
			Name = "CloseObjectImage",
			Image = "rbxassetid://9886659671",
			ImageColor3 = Color3.fromRGB(240, 240, 240),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(16, 16),
			Parent = CloseObjectButton
		})

		local NotificationFrame = self:Create("Frame", {
			Name = "NotificationFrame",
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.fromOffset(14, 40),
			Size = UDim2.new(1, -28, 0, 0),
			Parent = NotificationObjectFrame
		}, {
			self:Create("UIListLayout", {
				Padding = UDim.new(0, 3),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center
			})
		})

		local ContentText = self:Create("TextLabel", {
			Name = "ContentText",
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = Params.Content,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 14,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(1, 0, 0, 14),
			Parent = NotificationFrame
		})

		local SubContent = self:Create("TextLabel", {
			Name = "SubContent",
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = Params.SubContent or "",
			TextColor3 = Color3.fromRGB(170, 170, 170),
			TextSize = 14,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(1, 0, 0, 14),
			Visible = Params.SubContent and true or false,
			Parent = NotificationFrame
		})

		self:Create("UIPadding", {
			Name = "UIPadding",
			PaddingBottom = UDim.new(0, 3),
			PaddingLeft = UDim.new(0, 0),
			PaddingRight = UDim.new(0, 0),
			PaddingTop = UDim.new(0, 0),
			Parent = NotificationFrame
		})

		local ContentSize = NotificationFrame.AbsoluteSize.Y
		NotificationObject.Size = UDim2.new(1, 0, 0, 58 + ContentSize)

		function State:Close()
			local ANIMATION_PROPS = {
				BackgroundTransparency = 1,
				ImageTransparency = 1,
				TextTransparency = 1
			}

			if not NotificationObject then
				return
			end

			local tweens = {}

			for _, obj in ipairs(NotificationObject:GetDescendants()) do
				if not obj:IsA("GuiObject") then
					continue
				end

				local objAnimProps = {}
				for prop, targetValue in pairs(ANIMATION_PROPS) do
					if pcall(function() return obj[prop] end) then
						objAnimProps[prop] = targetValue
					end
				end

				if next(objAnimProps) then
					local tween = Utility:Animation(
						obj,
						objAnimProps,
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					table.insert(tweens, tween)
				end
			end

			if #tweens > 0 then
				local completedCount = 0
				for _, tween in ipairs(tweens) do
					tween.Completed:Once(function()
						completedCount = completedCount + 1
						if completedCount == #tweens and NotificationObject then
							Debris:AddItem(NotificationObject, 0.1)
						end
					end)
				end
			else
				if NotificationObject then
					Debris:AddItem(NotificationObject, 0.1)
				end
			end
		end

		Library:Connect(CloseObjectButton.Activated, function()
			State.Closed = true
			State:Close()
		end)

		Utility:Animation(NotificationObjectFrame, {
			Position = UDim2.new(0, 0, 0, 0)
		}, self.AnimationSpeed * 2, self.EasingStyle.Quad, self.EasingDirection.Out)

		task.delay(Params.Duration, function()
			if State.Closed then return end
			State:Close()
		end)

		return State
	end
	local TransparentFrame = self:Create("Frame", {
		Name = "TransparentFrame",
		Parent = MainFrame,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),

		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),

		BackgroundTransparency = Library.Settings.Transparency,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		}),

		Library:Create("Frame", {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = true,
		}),

		self:Create("ImageLabel", {
			Name = "Shadow",
			Visible = true,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 120, 1, 116),

			Image = "rbxassetid://8992230677",
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ImageTransparency = 0.7,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(99, 99, 99, 99),

			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0
		})

	})

	function Utility:SetBackgroundTransparency(number)
		Library.Settings.Transparency = number
		TransparentFrame.BackgroundTransparency = number
	end

	local Background_1 = self:Create("Frame",{
		Name = "Background",
		Parent = TransparentFrame,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.3,
		BackgroundColor3 = self.Themes.BackgroundColor
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})

	table.insert(Library.Storage.Background, Background_1)

	local UIGradient_1 = self:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, self.Themes.BackgroundColor),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
		}),
		Rotation = 90,
		Parent = Background_1
	})
	table.insert(Library.Storage.BackgroundGradient, UIGradient_1)

	local AccentFrame = self:Create("Frame", {
		Name = "AccentFrame",
		Parent = TransparentFrame,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.3,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		}),
		self:Create("UIGradient", {
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, self.Themes.AccentColor),
				ColorSequenceKeypoint.new(1, self.Themes.AccentColor)
			}),
			Rotation = 90,
		})
	})

	local MainFrameShadow = self:Create("ImageLabel", {
		Image = "rbxassetid://9968344227",
		ImageTransparency = 0.9,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(0, 128, 0, 128),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Name = "MainFrameShadow",
		Parent = TransparentFrame
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})

	local MainFrameShadow2 = self:Create("ImageLabel", {
		Name = "MainFrameShadow2",
		Parent = TransparentFrame,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Image = "rbxassetid://9968344105",
		ImageTransparency = 0.98,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(0, 128, 0, 128)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})

	local BorderFrame = self:Create("Frame", {
		Name = "BorderFrame",
		Parent = TransparentFrame,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		}),
		self:Create("UIStroke", {
			Transparency = 0.5,
			Color = Color3.fromRGB(0, 0, 0),
			LineJoinMode = Enum.LineJoinMode.Round
		})
	})

	local ResizeTouch = self:Create("Frame", {
		Name = "ResizeTouch",
		Parent = MainFrame,
		Visible = true,
		Position = UDim2.new(1, -20, 1, -20),
		Size = UDim2.new(0, 20, 0, 20),

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	})

	Utility:MakeResizeable(MainFrame, ResizeTouch)

	local NavbarFrame = self:Create("Frame", {
		Name = "NavbarFrame",
		Parent = MainFrame,
		Visible = true,
		Size = UDim2.new(1, 0, 0, 42),

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	},{
		Library:Create("Frame", {
			Name = "UnderlineFrame",
			Visible = true,
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, 1),

			BackgroundColor3 = Color3.fromRGB(75, 75, 75),
			BackgroundTransparency = 0.5,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
		})
	})

	Utility:MakeDraggable(MainFrame, NavbarFrame)

	local ExitButton = self:Create("TextButton", {
		Name = "ExitButton",
		Parent = NavbarFrame,
		Visible = true,
		Position = UDim2.new(1, -4, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),

		FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),

		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		}),

		self:Create("ImageLabel", {
			Name = "Icon",
			Visible = true,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 16, 0, 16),
			AnchorPoint = Vector2.new(0.5, 0.5),

			Image = "rbxassetid://9886659671",
			ImageColor3 = Color3.fromRGB(240, 240, 240),

			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0)
		})
	})

	local MaximizeButton = self:Create("TextButton", {
		Name = "MaximizeButton",
		Parent = NavbarFrame,
		Visible = true,
		Position = UDim2.new(1, -40, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),

		FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),

		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		})
	})

	local MaximizeIcon = self:Create("ImageLabel", {
		Name = "Icon",
		Parent = MaximizeButton,
		Visible = true,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, 16, 0, 16),
		AnchorPoint = Vector2.new(0.5, 0.5),

		Image = "rbxassetid://9886659406",
		ImageColor3 = Color3.fromRGB(240, 240, 240),

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0)
	})

	local MinimizeButton = self:Create("TextButton", {
		Name = "MinimizeButton",
		Parent = NavbarFrame,
		Visible = true,
		Position = UDim2.new(1, -80, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),

		FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),

		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		}),
		self:Create("ImageLabel", {
			Name = "Icon",
			Visible = true,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 16, 0, 16),
			AnchorPoint = Vector2.new(0.5, 0.5),

			Image = "rbxassetid://9886659276",
			ImageColor3 = Color3.fromRGB(240, 240, 240),

			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0)
		})
	})

	local NavbarTitle = Library:Create("Frame", {
		Name = "NavbarTitle",
		Parent = NavbarFrame,
		Visible = true,
		Position = UDim2.new(0, 16, 0, 0),
		Size = UDim2.new(1, -16, 1, 0),

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	}, {
		Library:Create("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 5)
		}),
	})

	delay(.1, function()
		local Title_Text = Library:Create("TextLabel", {
			Visible = true,
			Size = UDim2.new(0, 0, 1, 0),
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			RichText = true,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.X,

			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),

			Text = Params.Title,
			Parent = NavbarTitle
		})

		local SubTitle_Text = Library:Create("TextLabel", {
			Visible = true,
			Size = UDim2.new(0, 0, 1, 0),

			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			RichText = true,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 12,
			TextTransparency = 0.4,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.X,

			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),

			Text = Params.SubTitle,
			Parent = NavbarTitle
		})
	end)

	local Main = Library:Create("TextLabel", {
		RichText = true,
		Visible = false,
		Text = "Main",
		TextSize = 28,
		TextColor3 = Color3.fromRGB(240, 240, 240),
		TextXAlignment = Enum.TextXAlignment.Left,

		FontFace = Library.Settings.FontFace or Font.new(
			"rbxassetid://12187365364",
			Enum.FontWeight.SemiBold,
			Enum.FontStyle.Normal
		),

		Size = UDim2.new(1, -16, 0, 28),
		Position = UDim2.new(0, 186, 0, 56),

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,

		BorderColor3 = Color3.fromRGB(0, 0, 0),

		Parent = MainFrame
	})

	local SidebarHolder = Library:Create("Frame", {
		Name = "SidebarHolder",
		Visible = true,
		ClipsDescendants = true,

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,

		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,

		Position = UDim2.new(0, 12, 0, 54),
		Size = UDim2.new(0, Params.TabWidth, 1, -54),

		Parent = MainFrame
	})

	local SidebarFrame = Library:Create("ScrollingFrame", {
		Name = "SidebarFrame",
		Visible = true,
		Parent = SidebarHolder,

		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		ScrollingDirection = Enum.ScrollingDirection.Y,

		ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
		ScrollBarImageTransparency = 1,
		ScrollBarThickness = 0,

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	}, {
		Library:Create("UIListLayout", {
			Padding = UDim.new(0, 4)
		})
	})

	local SidebarHolder = Library:Create("Frame", {
		Name = "SidebarHolder",
		Parent = MainFrame,
		Visible = true,

		Position = UDim2.new(0, 12, 0, 54),
		Size = UDim2.new(0, Params.TabWidth, 1, -54),

		ClipsDescendants = true,

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,

		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	})

	local SidebarFrame = Library:Create("ScrollingFrame", {
		Name = "SidebarFrame",
		Parent = SidebarHolder,
		Visible = true,

		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		ScrollingDirection = Enum.ScrollingDirection.Y,

		ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
		ScrollBarImageTransparency = 1,
		ScrollBarThickness = 0,

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,

		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	}, {
		Library:Create("UIListLayout", {
			Padding = UDim.new(0, 4)
		})
	})

	local SelectedFrame = Library:Create("Frame", {
		Name = "SelectedFrame",
		Parent = SidebarHolder,
		Visible = false,

		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 0, 0, 17),
		Size = UDim2.new(0, 4, 0, 16),

		BackgroundColor3 = Library.Themes.BackgroundColor,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	}, {
		Library:Create("UICorner", {
			CornerRadius = UDim.new(0, 2),
		})
	})

	table.insert(Library.Storage.SelectedFrame, SelectedFrame)

	local ObjectElements = Library:Create("CanvasGroup", {
		Name = "ObjectElements",
		Parent = MainFrame,
		Visible = true,

		Position = UDim2.new(0, 186, 0, 94),
		Size = UDim2.new(1, -192, 1, -102),

		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0
	})

	Utility:Thread(function()
		Library:Connect(MaximizeButton.Activated, function()
			Library.Maximized = not Library.Maximized
			MaximizeIcon.Image = Library.Maximized and "rbxassetid://9886659001" or "rbxassetid://9886659406"

			Utility:Animation(
				MainFrame,
				{ Size = Library.Maximized and UDim2.new(1, 0, 1, 0) or Params.Size },
				Library.AnimationSpeed,
				Library.EasingStyle.Quad,
				Library.EasingDirection.Out
			)

			Utility:Animation(
				MainFrame,
				{ Position = UDim2.new(0.5, 0, 0.5, 0) },
				Library.AnimationSpeed,
				Library.EasingStyle.Quad,
				Library.EasingDirection.Out
			)
		end)

		Library:Connect(ExitButton.Activated, function()
			Library:Destroy()
			pcall(Params.ExitCallback)
		end)

		Library:Connect(MinimizeButton.Activated, function()
			Library:Toggle()

			Library:Notify({
				Title = "Interface",
				Content = "Press " .. self.Settings.Keybind.Name .. " to toggle the interface.",
				Duration = 6
			})
		end)
	end)

	Library.Maximized = false

	function State:AddTab(Config)
		local Tab_State = {}

		local Config = Config or {}

		local Params = {
			Title = Config.title or Config.Title or "Tab",
			Description = Config.description or Config.Description or Config.desc or Config.Desc or Config.title or Config.Title or "Tab",
			Icon = Config.icon or Config.Icon or ""
		}

		local SidebarOptionButton = Library:Create("TextButton",{
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
			Text = "",
			TextColor3 = Color3.fromRGB(0, 0, 0),
			TextSize = 14,
			BackgroundColor3 = Color3.fromRGB(120, 120, 120),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(1, 0, 0, 34),
			Visible = true,
			Name = "SidebarOptionButton",
			Parent = SidebarFrame
		},{
			Library:Create("UICorner", { CornerRadius = UDim.new(0, 6) }),
			Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				RichText = true,
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(0, Params.Icon ~= "" and 30 or 12, 0.5, 0),
				Size = UDim2.new(1, -12, 1, 0),
				Visible = true,
			})
		})

		local ObjectScrollingFrame = Library:Create("ScrollingFrame", {
			Name = "ObjectScrollingFrame",
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			BottomImage = "rbxassetid://6889812791",
			CanvasSize = UDim2.fromOffset(0, 527),
			MidImage = "rbxassetid://6889812721",
			ScrollBarImageTransparency = 0.95,
			ScrollBarThickness = 3,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			TopImage = "rbxassetid://6276641225",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Visible = false,
			Parent = ObjectElements
		}, {
			Library:Create("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder}),
			Library:Create("UIPadding", {
				PaddingBottom = UDim.new(0, 1),
				PaddingLeft = UDim.new(0, 1),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 1)
			})
		})

		if Params.Icon ~= "" then
			local _GIcon = Utility:GetIcon(Params.Icon)
			Library:Create("ImageLabel", {
				Image = _GIcon,
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 8, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = true,
				Parent = SidebarOptionButton
			})
		end

		function Tab_State:Select()
			if State.Active ~= Tab_State then
				State.Active = Tab_State
				local targetPos = UDim2.new(0, 0, 0, SidebarOptionButton.AbsolutePosition.Y - SidebarFrame.AbsolutePosition.Y + 17)

				Utility:Thread(function()
					for _, child in next, SidebarFrame:GetChildren() do
						if child:IsA("TextButton") then
							child.BackgroundTransparency = 1
						end
					end

					for _, child in pairs(ObjectElements:GetChildren()) do
						if child:IsA("ScrollingFrame") then
							child.Visible = false
						end
					end
					Utility:Animation(SelectedFrame, {Position = targetPos, Visible = true}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)

					Utility:Animation(SidebarOptionButton, {BackgroundTransparency = 0.8}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)

					Utility:Animation(ObjectScrollingFrame, {Visible = true}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)

					Main.Visible = true
					Main.Text = Params.Description
				end)
			end
		end

		Utility:Thread(function()
			Library:Connect(SidebarOptionButton.Activated, function()
				Tab_State:Select()
			end)
		end)

		function Tab_State:AddParagraph(Config)
			local Paragraph_State = {}
			local Config = Config or {}
			local Params = {
				Title = Config.title or Config.Title or "Paragraph",
				Content = Config.content or Config.Content or Config.desc or Config.Desc,
				Sections = Config.sections or Config.Sections or false
			}

			local Sections = Params.Sections and Params.Sections or ObjectScrollingFrame

			local ParagraphHolder = Library:Create("TextButton", {
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				Text = "",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.87,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ParagraphHolder",
				Parent = Sections
			}, {
				Library:Create("UICorner", { CornerRadius = UDim.new(0, 4) }),
				Library:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})

			local ParagraphFrame = Library:Create("TextButton", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Text = "",
				Name = "ParagraphFrame",
				Parent = ParagraphHolder
			}, {
				Library:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				Library:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})

			local ParagraphTitle = Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Medium,
					Enum.FontStyle.Normal
				),
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ParagraphTitle",
				Parent = ParagraphFrame
			})

			local ParagraphDesc = Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				Text = Params.Content,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = Params.Content and true or false,
				Name = "ParagraphDesc",
				Parent = ParagraphFrame
			})

			local TextBounds_ParagraphDesc = ParagraphDesc.TextBounds.Y
			local TextBounds_ParagraphTitle = ParagraphTitle.TextBounds.Y
			ParagraphTitle.Size = UDim2.new(1, 0, 0, TextBounds_ParagraphTitle)
			ParagraphDesc.Size = UDim2.new(1, 0, 0, TextBounds_ParagraphDesc)

			function Paragraph_State:Update()
				local TextBounds_ParagraphDesc = ParagraphDesc.TextBounds.Y
				local TextBounds_ParagraphTitle = ParagraphTitle.TextBounds.Y
				ParagraphTitle.Size = UDim2.new(1, 0, 0, TextBounds_ParagraphTitle)
				ParagraphDesc.Size = UDim2.new(1, 0, 0, TextBounds_ParagraphDesc)
			end

			function Paragraph_State:Set(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Paragraph",
					Content = Config.content or Config.Content or Config.desc or Config.Desc or "This is a paragraph."
				}
				ParagraphTitle.Text = Params.Title
				ParagraphDesc.Text = Params.Content
				ParagraphDesc.Visible = (Params.Content and true or false)
				Paragraph_State:Update()
			end

			function Paragraph_State:SetTitle(Text)
				ParagraphTitle.Text = Text
				Paragraph_State:Update()
			end

			function Paragraph_State:SetDesc(Text)
				ParagraphDesc.Text = Text
				ParagraphDesc.Visible = (Params.Content and true or false)
				Paragraph_State:Update()
			end

			return Paragraph_State, ParagraphTitle, ParagraphDesc
		end

		function Tab_State:AddButton(Config)
			local Button_State = {}
			local Config = Config or {}
			local Params = {
				Title = Config.title or Config.Title or "Button",
				Description = Config.description or Config.Description or Config.desc or Config.Desc,
				Callback = Config.callback or Config.Callback or function()
				end,
				Sections = Config.sections or Config.Sections or false
			}

			local Sections = Params.Sections and Params.Sections or ObjectScrollingFrame
			local ButtonHolder = Library:Create("TextButton", {
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.87,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ButtonHolder",
				Parent = Sections
			}, {
				Library:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				Library:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})

			local ButtonFrame = Library:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "ButtonFrame",
				Parent = ButtonHolder
			}, {
				Library:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				Library:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})

			local ButtonTitle = Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Medium,
					Enum.FontStyle.Normal
				),
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ButtonTitle",
				Parent = ButtonFrame
			})

			local ButtonDesc = Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				Text = Params.Description,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = Params.Description and true or false,
				Name = "ButtonDesc",
				Parent = ButtonFrame
			})

			local ButtonImage = Library:Create("ImageLabel", {
				Image = "rbxassetid://10709791437",
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = true,
				Name = "ButtonImage",
				Parent = ButtonHolder
			})

			local TextBounds_ButtonTitle = ButtonTitle.TextBounds.Y
			local TextBounds_ButtonDesc = ButtonDesc.TextBounds.Y

			ButtonTitle.Size = UDim2.new(1, 0, 0, TextBounds_ButtonTitle)
			ButtonDesc.Size = UDim2.new(1, 0, 0, TextBounds_ButtonDesc)

			function Button_State:Update()
				local TextBounds_ButtonTitle = ButtonTitle.TextBounds.Y
				local TextBounds_ButtonDesc = ButtonDesc.TextBounds.Y

				ButtonTitle.Size = UDim2.new(1, 0, 0, TextBounds_ButtonTitle)
				ButtonDesc.Size = UDim2.new(1, 0, 0, TextBounds_ButtonDesc)
			end

			function Button_State:Set(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Button",
					Description = Config.description or Config.Description or Config.desc or Config.Desc or "",
					Callback = Config.callback or Config.Callback or function()
					end
				}
				if Params.Description then
					ButtonDesc.Visible = true
				else
					ButtonDesc.Visible = false
				end
				ButtonTitle.Text = Params.Title
				ButtonDesc.Text = Params.Description
				Button_State.Callback = Params.Callback
				Button_State:Update()
			end

			Library:Connect(ButtonHolder.Activated, function()
				Params.Callback()
			end)

			return Button_State
		end

		function Tab_State:AddToggle(Config)
			local Toggle_State = {
				Callback = function()
				end
			}

			local Config = Config or {}
			local Params = {
				Title = Config.title or Config.Title or "Toggle",
				Description = Config.description or Config.Description or Config.desc or Config.Descm,
				Default = Config.default or Config.Default or false,
				Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
				Sections = Config.sections or Config.Sections or false
			}

			local Sections = Params.Sections and Params.Sections or ObjectScrollingFrame
			local ToggleHolder = Library:Create("TextButton", {
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.87,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ToggleHolder",
				Parent = Sections
			}, {
				Library:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				Library:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})

			local ToggleFrame = Library:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "ToggleFrame",
				Parent = ToggleHolder
			}, {
				Library:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				Library:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})

			local ToggleTitle = Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Medium,
					Enum.FontStyle.Normal
				),
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ToggleTitle",
				Parent = ToggleFrame
			})

			local ToggleDesc = Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				Text = Params.Description,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, -54, 0, 14),
				Visible = Params.Description and true or false,
				Name = "ToggleDesc",
				Parent = ToggleFrame
			})

			ToggleDesc.Size = UDim2.new(1, -54, 0, ToggleDesc.TextBounds.Y)

			local bZ = Utility:LightenColor(Library.Themes.BackgroundColor, 0.5)
			local b_ = Utility:LightenColor(Library.Themes.BackgroundColor, 0.25)

			local Toggle = Library:Create("Frame", {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = bZ,
				BackgroundTransparency = Params.Default and 0.5 or 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 36, 0, 18),
				Visible = true,
				Name = "Toggle",
				Parent = ToggleHolder
			}, {
				Library:Create("UICorner", {
					CornerRadius = UDim.new(0, 9),
				})
			})

			table.insert(Library.Storage.Toggles, Toggle)

			local ToggleStroke = Library:Create("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.fromRGB(125, 125, 125),
				Parent = Toggle
			})

			local ToggleImage = Library:Create("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=12266946128",
				ImageColor3 = Params.Default and b_ or Color3.fromRGB(255, 255, 255),
				ImageTransparency = 0.5,
				AnchorPoint = Params.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = Params.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
				Size = UDim2.new(0, 14, 0, 14),
				Visible = true,
				Name = "ToggleImage",
				Parent = Toggle
			})

			table.insert(Library.Storage.ToggleImages, ToggleImage)

			local TextBounds_ToggleTitle = ToggleTitle.TextBounds.Y
			local TextBounds_ToggleDesc = ToggleDesc and ToggleDesc.TextBounds.Y or 0

			ToggleTitle.Size = UDim2.new(1, -54, 0, TextBounds_ToggleTitle)
			if ToggleDesc then
				ToggleDesc.Size = UDim2.new(1, -54, 0, TextBounds_ToggleDesc)
			end

			function Toggle_State:Update()
				local TextBounds_ToggleTitle = ToggleTitle.TextBounds.Y
				local TextBounds_ToggleDesc = ToggleDesc and ToggleDesc.TextBounds.Y or 0

				ToggleTitle.Size = UDim2.new(1, -54, 0, TextBounds_ToggleTitle)
				if ToggleDesc then
					ToggleDesc.Size = UDim2.new(1, -54, 0, TextBounds_ToggleDesc)
				end
			end

			function Toggle_State:Set(state)
				Params.Default = state
				if Params.Flags then
					Library.Flags[tostring(Params.Flags)] = Params.Default
				end

				b_ = Utility:LightenColor(Library.Themes.BackgroundColor, 0.25)

				Utility:Thread(function()
					Utility:Animation(
						Toggle,
						{ BackgroundTransparency = Params.Default and 0.5 or 1 },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ AnchorPoint = Params.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ Position = Params.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ ImageTransparency = Params.Default and 0 or 0.5 },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ ImageColor3 = Params.Default and b_ or Color3.fromRGB(125, 125, 125) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleStroke,
						{ Color = Params.Default and Library.Themes.AccentColor or Color3.fromRGB(125, 125, 125) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleStroke,
						{ Thickness = Params.Default and 0 or 1 },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
				end)

				if Toggle_State.Callback then
					Toggle_State.Callback(Params.Default)
				end
				return Toggle_State
			end

			if Params.Flags then
				Library.Flags[tostring(Params.Flags)] = Params.Default
			end

			ToggleHolder.Activated:Connect(function()
				Params.Default = not Params.Default

				if Params.Flags then
					Library.Flags[tostring(Params.Flags)] = Params.Default
				end

				Utility:Thread(function()
					Utility:Animation(
						Toggle,
						{ BackgroundTransparency = Params.Default and 0.5 or 1 },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ AnchorPoint = Params.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ Position = Params.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ ImageTransparency = Params.Default and 0 or 0.5 },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleImage,
						{ ImageColor3 = Params.Default and b_ or Color3.fromRGB(125, 125, 125) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleStroke,
						{ Color = Params.Default and Library.Themes.AccentColor or Color3.fromRGB(125, 125, 125) },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
					Utility:Animation(
						ToggleStroke,
						{ Thickness = Params.Default and 0 or 1 },
						Library.AnimationSpeed,
						Library.EasingStyle.Quad,
						Library.EasingDirection.Out
					)
				end)

				if Toggle_State.Callback then
					Toggle_State.Callback(Params.Default)
				end
			end)

			function Toggle_State:OnChanged(callback)
				Toggle_State.Callback = callback
				if Toggle_State.Callback then
					Toggle_State.Callback(Params.Default)
				end
				return Toggle_State
			end

			if Params.Default then
				Toggle_State:Set(Params.Default)
			end

			return Toggle_State
		end

		function Tab_State:AddDropdown(Config)
			local Dropdown_State = {
				Expanded = false,
				Options = {},
				Callback = function()
				end
			}

			local Config = Config or {}

			local Params = {
				Title = Config.title or Config.Title or "Dropdown",
				Description = Config.description or Config.Description or Config.desc or Config.Desc,
				Values = Config.values or Config.Values or Config.options or Config.Options or Config.list or Config.List or {},
				Multi = Config.multi or Config.Multi or false,
				Default = Config.default or Config.Default or {},
				Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
				Sections = Config.sections or Config.Sections or false
			}

			local Sections = Params.Sections and Params.Sections or ObjectScrollingFrame

			local DropdownHolder = Library:Create("TextButton", {
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "DropdownHolder",
				Parent = Sections
			},
			{
				Library:Create("UICorner", {CornerRadius = UDim.new(0, 4)}),

				Library:Create(
					"UIStroke",
					{ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Color = Color3.fromRGB(35, 35, 35)

					})
			})

			local DropdownFrame = Library:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "DropdownFrame",
				Parent = DropdownHolder
			}, {
				Library:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				Library:Create("UIPadding", {
					PaddingTop = UDim.new(0, 13),
					PaddingBottom = UDim.new(0, 13)
				})
			})

			local DropdownTitle = Library:Create("TextLabel", {
				Name = "DropdownTitle",
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Medium,
					Enum.FontStyle.Normal
				),
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0.55, 0,0, 14),
				Parent = DropdownFrame
			})

			local DropdownDesc = Library:Create("TextLabel", {
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				Text = Params.Description,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0.592, -54, 0, 14),
				Visible = Params.Description and true or false,
				Name = "DropdownDesc",
				Parent = DropdownFrame
			})
			DropdownDesc.Size = UDim2.new(0.592, -54, 0, DropdownDesc.TextBounds.Y)

			local DropdownOptions = Library:Create("TextButton", {
				Name = "DropdownOptions",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(160, 160, 160),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.fromOffset(160, 30),
				Parent = DropdownHolder,
				AutomaticSize = Enum.AutomaticSize.Y,
				SizeConstraint = Enum.SizeConstraint.RelativeYY
			}, {
				Library:Create("UICorner", {
					CornerRadius = UDim.new(0, 5)
				}),
				Library:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(90, 90, 90),
					Transparency = 0.5
				}),
				Library:Create("ImageLabel", {
					Name = "ImageLabel",
					Image = "rbxassetid://10709790948",
					ImageColor3 = Color3.fromRGB(170, 170, 170),
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					Rotation = 270,
					BorderSizePixel = 0,
					Position = UDim2.new(1, -8, 0.5, 0),
					Size = UDim2.fromOffset(16, 16),
				})
			})

			local Table_Text = typeof(Params.Default) == "table" and table.concat(Params.Default, ", ") or Params.Default

			local SelectedTextLabel = Library:Create("TextLabel", {
				Name = "TextLabel",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = Table_Text,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(0, 8, 0.5, 0),
				Size = UDim2.new(1, -30, 0, 14),
				Parent = DropdownOptions
			})

			local OptionPopupHolder = Library:Create("Frame", {
				Name = "OptionPopupHolder",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(478, 219),
				Size = UDim2.fromOffset(170, 392),
				Visible = false,
				ZIndex = 2,
				Parent = ScreenGui
			})

			local OptionFrame = Library:Create("Frame", {
				Name = "OptionFrame",
				BackgroundColor3 = Color3.fromRGB(45, 45, 45),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 1),
				Parent = OptionPopupHolder
			}, {
				Library:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 6)
				}),
				Library:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				}),
				Library:Create("ImageLabel", {
					Name = "ImageLabel",
					Image = "http://www.roblox.com/asset/?id=5554236805",
					ImageColor3 = Color3.fromRGB(0, 0, 0),
					ImageTransparency = 0.1,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(23, 23, 277, 277),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(-15, -15),
					Size = UDim2.new(1, 30, 1, 30)
				})
			})

			local OptionScrollingFrame = Library:Create("ScrollingFrame", {
				Name = "OptionScrollingFrame",
				BottomImage = "rbxassetid://6889812791",
				CanvasSize = UDim2.fromOffset(0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				MidImage = "rbxassetid://6889812721",
				ScrollBarImageTransparency = 0.95,
				ScrollBarThickness = 4,
				TopImage = "rbxassetid://6276641225",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(5, 5),
				Size = UDim2.new(1, -5, 1, -10),
				Parent = OptionFrame
			})

			local DropdownListLayout = Library:Create("UIListLayout", {
				Name = "UIListLayout",
				Padding = UDim.new(0, 3),
				Parent = OptionScrollingFrame
			})

			local DropdownGradient = Library:Create("UIGradient", {
				Name = "DropdownGradient",
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Library.Themes.BackgroundColor),
					ColorSequenceKeypoint.new(1, Utility:LightenColor(Library.Themes.BackgroundColor, 0.5))
				}),
				Parent = OptionFrame
			})

			table.insert(Library.Storage.DropdownGradient, DropdownGradient)

			local ListSizeX = 200
			local function RecalculateListSize()
				if #Params.Values > 10 then
					OptionPopupHolder.Size = UDim2.fromOffset(ListSizeX, 392)
				else
					OptionPopupHolder.Size = UDim2.fromOffset(ListSizeX, DropdownListLayout.AbsoluteContentSize.Y + 10)
				end
			end



			function Dropdown_State:Add(OptionValue, IsSelected)
				local OptionValue = OptionValue or "OptionValue"
				local IsSelected = IsSelected or false
				local Option = Library:Create("TextButton", {
					Name = "Option",
					FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14,
					AutoButtonColor = false,
					BackgroundColor3 = Color3.fromRGB(120, 120, 120),
					BackgroundTransparency = IsSelected and 0.9 or 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					Size = UDim2.new(1, -5, 0, 32),
					ZIndex = 23,
					Parent = OptionScrollingFrame
				}, {
					Library:Create("UICorner", {Name = "UICorner", CornerRadius = UDim.new(0, 6)}),
					Library:Create("TextLabel", {
						Name = "OptionLabel",
						FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
						Text = OptionValue,
						TextColor3 = Color3.fromRGB(240, 240, 240),
						TextSize = 13,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderColor3 = Color3.fromRGB(0, 0, 0),
						Position = UDim2.fromOffset(10, 0),
						Size = UDim2.fromScale(0.96, 1),
					})
				})

				local Selected = Library:Create("Frame", {
					Name = "Selected",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = Library.Themes.BackgroundColor,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(-1, 16),
					Size = UDim2.fromOffset(4, 14),
					Visible = IsSelected,
					Parent = Option
				},{
					Library:Create("UICorner", {
						Name = "UICorner",
						CornerRadius = UDim.new(0, 2)
					}),
				})

				table.insert(Library.Storage.Selected, Selected)

				table.insert(Dropdown_State.Options, {Selected = Selected, Option = Option})

				function Dropdown_State:Update(cp)
					SelectedTextLabel.Text = typeof(Params.Default) == "table" and table.concat(Params.Default, ", ") or Params.Default
					if not cp then
						Dropdown_State.Expanded = false
						OptionPopupHolder.Visible = false
					end
				end

				Library:Connect(Option.Activated, function()
					if Params.Multi then
						if table.find(Params.Default, OptionValue) then
							table.remove(Params.Default, table.find(Params.Default, OptionValue))
						else
							table.insert(Params.Default, OptionValue)
						end
						Utility:Thread(function()
							Selected.Visible = type(Params.Default) == "table" and table.find(Params.Default, OptionValue) or Params.Default == OptionValue
							Utility:Animation(
								Option,
								{BackgroundTransparency = table.find(Params.Default, OptionValue) and 0.9 or 1},
								Library.AnimationSpeed,
								Library.EasingStyle.Quad,
								Library.EasingDirection.Out
							)
						end)
					else
						Params.Default = OptionValue
						Utility:Thread(
							function()
								for _, value in pairs(Dropdown_State.Options) do
									value.Selected.Visible = false
									Utility:Animation(
										value.Option,
										{BackgroundTransparency = 1},
										Library.AnimationSpeed,
										Library.EasingStyle.Quad,
										Library.EasingDirection.Out
									)
								end
								Selected.Visible = type(Params.Default) == "table" and table.find(Params.Default, OptionValue) or Params.Default == OptionValue
								Utility:Animation(
									Option,
									{BackgroundTransparency = 0.9},
									Library.AnimationSpeed,
									Library.EasingStyle.Quad,
									Library.EasingDirection.Out
								)
							end)
					end
					if Params.Flags then
						Library.Flags[tostring(Params.Flags)] = Params.Default
					end
					SelectedTextLabel.Text = typeof(Params.Default) == "table" and table.concat(Params.Default, ", ") or Params.Default
					if Dropdown_State.Callback then
						Dropdown_State.Callback(Params.Default)
					end
				end)
			end

			for _, value in pairs(Params.Values) do
				Dropdown_State:Add(value, typeof(Params.Default) == "table" and table.find(Params.Default, value) or Params.Default == value)
			end

			RecalculateListSize()
			if Params.Flags then
				Library.Flags[tostring(Params.Flags)] = Params.Default
			end

			Library:Connect(UserInputService.InputBegan, function(input, a2)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not a2 then
					if Dropdown_State.Expanded or OptionPopupHolder.Visible then
						Dropdown_State.Expanded = false
						OptionPopupHolder.Visible = false
						ObjectScrollingFrame.ScrollingEnabled = true
					end
				end
			end)

			Library:Connect(ObjectScrollingFrame:GetPropertyChangedSignal("Visible"), function()
				if Dropdown_State.Expanded or OptionPopupHolder.Visible then
					Dropdown_State.Expanded = false
					OptionPopupHolder.Visible = false
					ObjectScrollingFrame.ScrollingEnabled = true
				end
			end)

			Library:Connect(MainFrame:GetPropertyChangedSignal("Visible"), function()
				if Dropdown_State.Expanded or OptionPopupHolder.Visible then
					Dropdown_State.Expanded = false
					OptionPopupHolder.Visible = false
					ObjectScrollingFrame.ScrollingEnabled = true
				end
			end)

			function Dropdown_State:Hide()
				Dropdown_State.Expanded = false
				OptionPopupHolder.Visible = false
				ObjectScrollingFrame.ScrollingEnabled = true
			end

			function Dropdown_State:SetValues(Values, Default)
				local Values = Values or {}
				local Default = typeof(Default) == "table" and Default or Default
				Dropdown_State.Options = {}
				for _, object in pairs(OptionScrollingFrame:GetChildren()) do
					if object:IsA("TextButton") then
						object:Destroy()
					end
				end
				Params.Values = Values
				Params.Default = Default
				for _, value in pairs(Values) do
					Dropdown_State:Add(value, typeof(Default) == "table" and table.find(Default, value) or Default == value)
				end
				RecalculateListSize()
				SelectedTextLabel.Text = typeof(Default) == "table" and table.concat(Default, ", ") or Default
				if Params.Flags then
					Library.Flags[tostring(Params.Flags)] = Params.Default
				end
				if Dropdown_State.Callback then
					Dropdown_State.Callback(Default)
				end
			end

			function Dropdown_State:OnChanged(callback)
				Dropdown_State.Callback = callback
				if Dropdown_State.Callback then
					Dropdown_State.Callback(Params.Default)
				end
				return Dropdown_State
			end

			table.insert(Library.Elements.Dropdowns, Dropdown_State)

			Library:Connect(DropdownOptions.Activated, function()
				Dropdown_State.Expanded = not Dropdown_State.Expanded
				if Dropdown_State.Expanded then

					for _, index in pairs(Library.Elements.Dropdowns) do
						if index ~= Dropdown_State then
							index:Hide()
						end
					end

					ObjectScrollingFrame.ScrollingEnabled = false
					local AbsolutePosition = DropdownOptions.AbsolutePosition
					OptionPopupHolder.Position = not Library.Maximized and UDim2.fromOffset(AbsolutePosition.X + 0, AbsolutePosition.Y) or UDim2.fromOffset(AbsolutePosition.X, AbsolutePosition.Y)
					Utility:Animation(OptionPopupHolder, {Visible = true}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)
				else
					ObjectScrollingFrame.ScrollingEnabled = true
					Utility:Animation(OptionPopupHolder, {Visible = false}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)
				end
			end)
			return Dropdown_State
		end

		function Tab_State:AddSlider(Config)
			local Slider_State = {
				Holding = false,
				Callback = function()
				end
			}

			local Config = Config or {}

			local Params = {
				Title = Config.title or Config.Title or "Slider",
				Description = Config.description or Config.Description or Config.desc or Config.Desc,
				Default = Config.default or Config.Default or Config.value or Config.Value or 0,
				Min = Config.min or Config.Min or 0,
				Max = Config.max or Config.Max or 100,
				Decimal = Config.decimal or Config.Decimal or 0,
				Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
				Sections = Config.sections or Config.Sections or false
			}

			local Sections = Params.Sections and Params.Sections or ObjectScrollingFrame

			local SliderHolder = Library:Create("TextButton", {
				Name = "SliderHolder",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.fromScale(1, 0),
				Visible = true,
				Parent = Sections
			}, {
				Library:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				Library:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})

			local SliderFrame = Library:Create("Frame", {
				Name = "SliderFrame",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Parent = SliderHolder
			}, {
				Library:Create("UIListLayout", {
					Name = "UIListLayout",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				Library:Create("UIPadding", {
					Name = "UIPadding",
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})

			local SliderTitle = Library:Create("TextLabel", {
				Name = "SliderTitle",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = SliderFrame
			})

			local SliderDesc = Library:Create("TextLabel", {
				Name = "SliderDesc",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = Params.Description,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, -170, 0, 14),
				Parent = SliderFrame
			})
			SliderDesc.Visible = Params.Description and true or false

			local Slider = Library:Create("Frame", {
				Name = "Slider",
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.4,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 4),
				Parent = SliderHolder
			}, {
				Library:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(1, 0)
				}),
				Library:Create("UISizeConstraint", {
					Name = "UISizeConstraint",
					MaxSize = Vector2.new(150, math.huge)
				})
			})

			local SliderText = Library:Create("TextBox", {
				Name = "SliderText",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = Params.Default,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Right,
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(0, -4, 0.5, 0),
				Size = UDim2.fromOffset(100, 14),
				Parent = Slider
			})

			local percent = math.clamp(Params.Default / Params.Max, 0, 1)
			percent = percent ~= percent and 0 or percent
			percent = math.floor(percent / Params.Decimal) * Params.Decimal

			local SliderValue = Library:Create("Frame", {
				Name = "SliderValue",
				BackgroundColor3 = Library.Themes.BackgroundColor,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.fromScale(percent, 1),
				Parent = Slider
			})
			Library:Create("UICorner", {
				Name = "UICorner",
				CornerRadius = UDim.new(1, 0),
				Parent = SliderValue
			})
			table.insert(Library.Storage.SliderValue, SliderValue)

			local SliderMaxValue = Library:Create("Frame", {
				Name = "SliderMaxValue",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(7, 0),
				Size = UDim2.new(1, -14, 1, 0),
				Parent = Slider
			})

			local SliderImage = Library:Create("ImageLabel", {
				Name = "SliderImage",
				Image = "http://www.roblox.com/asset/?id=12266946128",
				ImageColor3 = Library.Themes.BackgroundColor,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(percent, -7, 0.5, 0),
				Size = UDim2.fromOffset(14, 14),
				Parent = SliderMaxValue
			})
			table.insert(Library.Storage.SliderImage, SliderImage)

			Library:Connect(SliderImage.InputBegan,function(input, a2)
				if
					input.UserInputType == Enum.UserInputType.MouseButton1 or
					input.UserInputType == Enum.UserInputType.Touch and not a2
				then
					Slider_State.Holding = true
				end
			end)

			Library:Connect(SliderImage.InputEnded,function(input, a2)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and not a2 then
					Slider_State.Holding = false
				end
			end)

			Library:Connect(UserInputService.TouchEnded, function(input, a2)
				if Slider_State.Holding and input.UserInputType == Enum.UserInputType.Touch then
					Slider_State.Holding = false
				end
			end)

			if Params.Flags then
				Library.Flags[tostring(Params.Flags)] = Params.Default
			end

			function Slider_State:OnChanged(callback)
				Slider_State.Callback = callback
				if Slider_State.Callback then
					Slider_State.Callback(Params.Default)
				end
				return Slider_State
			end

			function Slider_State:SetValue(value, ass)
				value = math.clamp(math.round(value / Params.Decimal) * Params.Decimal, Params.Min, Params.Max)
				value = math.floor(value / Params.Decimal) * Params.Decimal
				value = Utility:Decimal(value, Params.Decimal)
				local Posz = UDim2.new((value - Params.Min) / (Params.Max - Params.Min), -7, 0.5, 0)
				Utility:Animation(SliderImage, {Position = Posz}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)
				Utility:Animation(
					SliderValue,
					{Size = UDim2.fromScale((value - Params.Min) / (Params.Max - Params.Min), 1)},
					Library.AnimationSpeed,
					Library.EasingStyle.Quad,
					Library.EasingDirection.Out
				)
				if not ass then
					Params.Default = value
				end
				SliderText.Text = tostring(value)
				if Params.Flags then
					Library.Flags[tostring(Params.Flags)] = value
				end
				if Slider_State.Callback then
					Slider_State.Callback(value)
				end
			end

			if Params.Default then
				Slider_State:SetValue(Params.Default)
			end

			Library:Connect(SliderText.FocusLost, function()
				local value = tonumber(SliderText.Text) or Params.Min
				Slider_State:SetValue(value, true)
			end)

			Library:Connect(UserInputService.InputChanged, function(input)
				if Slider_State.Holding and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
					local AbsoluteSize = SliderImage.Parent.AbsoluteSize.X
					local Pozs = input.Position.X - SliderImage.Parent.AbsolutePosition.X
					local mathclamp = math.clamp((Pozs - 7) / AbsoluteSize, 0, 1)
					local VALLLL = Params.Min + (Params.Max - Params.Min) * mathclamp
					Slider_State:SetValue(VALLLL)
				end
			end)

			return Slider_State
		end

		function Tab_State:AddInput(Config)
			local Input_State = {
				Toggle = false,
				Callback = function()
				end
			}

			local Config = Config or {}

			local Params = {
				Title = Config.title or Config.Title or "Input",
				Default = Config.default or Config.Default or Config.value or Config.Value or "",
				Placeholder = Config.placeholder or Config.Placeholder or "",
				Numeric = Config.numeric or Config.Numeric or false,
				Finished = Config.finished or Config.Finished or false,
				Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
				Sections = Config.sections or Config.Sections or false
			}

			local Sections = Params.Sections and Params.Sections or ObjectScrollingFrame

			local InputHolder = Library:Create("TextButton", {
				Name = "InputHolder",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.87,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.fromScale(1, 0),
				Visible = true,
				Parent = Sections
			}, {
				Library:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				Library:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})

			local InputFrame = Library:Create("Frame", {
				Name = "InputFrame",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0)
			}, {
				Library:Create("UIListLayout", {
					Name = "UIListLayout",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder
				}),
				Library:Create("UIPadding", {
					Name = "UIPadding",
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})

			local InputTitle = Library:Create("TextLabel", {
				Name = "InputTitle",
				FontFace = Library.Settings.FontFace or Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Medium,
					Enum.FontStyle.Normal
				),
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = InputFrame
			})

			InputFrame.Parent = InputHolder

			local Input = Library:Create("Frame", {
				Name = "Input",
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(160, 160, 160),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.fromOffset(160, 30),
				Parent = InputHolder
			}, {
				Library:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				Library:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(90, 90, 90),
					Transparency = 0.5
				})
			})

			local InputLine = Library:Create("Frame", {
				Name = "InputLine",
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.fromRGB(150, 150, 150),
				BackgroundTransparency = 0.5,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 2, 1, 0),
				Size = UDim2.new(1, -4, 0, 1),
				Parent = Input
			})

			local InputTextFrame = Library:Create("Frame", {
				Name = "InputTextFrame",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Position = UDim2.fromOffset(6, 0),
				Size = UDim2.new(1, -12, 1, 0)
			})

			local InputText = Library:Create("TextBox", {
				Name = "InputText",
				ClearTextOnFocus = false,
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				PlaceholderColor3 = Color3.fromRGB(170, 170, 170),
				PlaceholderText = Params.Placeholder,
				Text = Params.Default,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.fromOffset(2, 0),
				Size = UDim2.fromScale(1, 1),
				Parent = InputTextFrame
			})

			InputTextFrame.Parent = Input
			Input.Parent = InputHolder

			if Params.Flags then
				Library.Flags[tostring(Params.Flags)] = Params.Default
			end

			local function SETTTTTT()
				if Params.Numeric then
					InputText.Text = InputText.Text:gsub("%D", "")
				end
				Params.Default = InputText.Text
				if Params.Flags then
					Library.Flags[tostring(Params.Flags)] = Params.Default
				end
				if Input_State.Callback and not Params.Finished then
					Input_State.Callback(Params.Default)
				end
			end

			Library:Connect(InputText:GetPropertyChangedSignal("Text"), SETTTTTT)
			Library:Connect(InputText.FocusLost, function()
				if Input_State.Callback and Params.Finished then
					Params.Default = InputText.Text
					if Params.Flags then
						Library.Flags[tostring(Params.Flags)] = Params.Default
					end
					Input_State.Callback(Params.Default)
				end
			end)

			function Input_State:OnChanged(callback)
				Input_State.Callback = callback
				if Params.Default then
					callback(Params.Default)
				end
				return Input_State
			end
			function Input_State:SetValue(value)
				Params.Default = value
				InputText.Text = value
				if Params.Flags then
					Library.Flags[tostring(Params.Flags)] = Params.Default
				end
				SETTTTTT()
			end
			return Input_State
		end

		function Tab_State:AddSection(Config)
			local Section_State = {}

			local Config = Config or {}

			local Params = {Title = Config.title or Config.Title or "Section"}

			local SectionHolder = Library:Create("Frame", {
				Name = "SectionHolder",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 65),
				Parent = ObjectScrollingFrame
			})

			local SectionLayout = Library:Create("UIListLayout", {
				Name = "UIListLayout",
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5),
				Parent = SectionHolder
			})

			local SectionLabel = Library:Create("TextLabel", {
				Name = "TextLabel",
				FontFace = Library.Settings.FontFace or Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				RichText = true,
				Text = Params.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 18,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.fromOffset(0, 2),
				Size = UDim2.new(1, -16, 0, 18),
				Parent = SectionHolder
			})

			function Section_State:AddParagraph(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Paragraph",
					Content = Config.content or Config.Content or Config.desc or Config.Desc,
					Sections = SectionHolder
				}

				local Paragraph = Tab_State:AddParagraph(Params)
				return Paragraph
			end

			function Section_State:AddButton(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Button",
					Description = Config.description or Config.Description or Config.desc or Config.Desc,
					Callback = Config.callback or Config.Callback or function()
					end,
					Sections = SectionHolder
				}

				local Button = Tab_State:AddButton(Params)
				return Button
			end

			function Section_State:AddToggle(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Toggle",
					Description = Config.description or Config.Description or Config.desc or Config.Descm,
					Default = Config.default or Config.Default or false,
					Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
					Sections = SectionHolder
				}

				local Toggle = Tab_State:AddToggle(Params)
				return Toggle
			end

			function Section_State:AddDropdown(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Dropdown",
					Description = Config.description or Config.Description or Config.desc or Config.Desc,
					Values = Config.values or Config.Values or Config.options or Config.Options or Config.list or Config.List or {},
					Multi = Config.multi or Config.Multi or false,
					Default = Config.default or Config.Default or {},
					Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
					Sections = SectionHolder
				}

				local Dropdown = Tab_State:AddDropdown(Params)
				return Dropdown
			end

			function Section_State:AddSlider(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Slider",
					Description = Config.description or Config.Description or Config.desc or Config.Desc,
					Default = Config.default or Config.Default or Config.value or Config.Value or 0,
					Min = Config.min or Config.Min or 0,
					Max = Config.max or Config.Max or 100,
					Decimal = Config.decimal or Config.Decimal or 0,
					Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
					Sections = SectionHolder
				}

				local Slider = Tab_State:AddSlider(Params)
				return Slider
			end

			function Section_State:AddInput(Config)
				local Config = Config or {}
				local Params = {
					Title = Config.title or Config.Title or "Input",
					Default = Config.default or Config.Default or Config.value or Config.Value or "",
					Placeholder = Config.placeholder or Config.Placeholder or "",
					Numeric = Config.numeric or Config.Numeric or false,
					Finished = Config.finished or Config.Finished or false,
					Flags = Config.flags or Config.Flags or Config.pointer or Config.Pointer or Config.flag or Config.Flag or false,
					Sections = SectionHolder
				}

				local Input = Tab_State:AddInput(Params)
				return Input
			end

			Library:Connect(SectionLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				SectionHolder.Size = UDim2.new(1, 0, 0, SectionLayout.AbsoluteContentSize.Y + 10)
			end)
			return Section_State
		end

		return Tab_State
	end

	function State:Dialog(Config)
		local Dialog_State = {}
		local Config = Config or {}
		local Params = {
			Title = Config.title or Config.Title or "Dialog",
			Content = Config.content or Config.Content or "This is a dialog.",
			Buttons = Config.buttons or Config.Buttons or {
				{Title = "Confirm", Callback = function() end},
				{Title = "Cancel", Callback = function() end}
			}
		}

		local DialogHolder = Library:Create("TextButton", {
			Name = "DialogHolder",
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
			Text = "",
			TextColor3 = Color3.fromRGB(0, 0, 0),
			TextSize = 14,
			AutoButtonColor = false,
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.75,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.fromScale(1, 1),
			Parent = MainFrame
		}, {
			Library:Create("UICorner", {
				CornerRadius = UDim.new(0, 8),
			})
		})

		local DialogHolderFrame = Library:Create("Frame", {
			Name = "DialogHolderFrame",
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(141, 165),
			Parent = DialogHolder
		}, {
			Library:Create("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			Library:Create("UIScale", {
				Name = "UIScale"
			}),
			Library:Create("UIStroke", {
				Color = Color3.fromRGB(70, 70, 70),
				Thickness = 0,
				Transparency = 0.5
			})
		})

		local DialogHolder_1 = Library:Create("Frame", {
			Name = "DialogHolder",
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 1, -70),
			Size = UDim2.new(1, 0, 0, 70),
			Parent = DialogHolderFrame,
		}, {
			Library:Create("Frame", {
				Name = "DialogUnderline",
				BackgroundColor3 = Color3.fromRGB(30, 30, 30),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 1),
			}, {
				Library:Create("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			})
		})

		local Dialog = Library:Create("Frame", {
			Name = "Dialog",
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.new(1, -40, 1, -40),
			Parent = DialogHolder_1
		}, {
			Library:Create("UIListLayout", {
				Name = "UIListLayout",
				Padding = UDim.new(0, 10),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder
			})
		})

		local UIGradient_2 = Library:Create("UIGradient", {
			Name = "UIGradient",
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Library.Themes.BackgroundColor),
				ColorSequenceKeypoint.new(1, Library.Themes.BackgroundColor)
			}),
			Parent = DialogHolder_1
		})

		table.insert(Library.Storage.Notification, UIGradient_2)

		local DialogContent = Library:Create("TextLabel", {
			Name = "DialogContent",
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = Params.Content,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.fromOffset(20, 60),
			Size = UDim2.new(1, -40, 1, 0),
			Parent = DialogHolderFrame
		})

		local DialogTitle = Library:Create("TextLabel", {
			Name = "DialogTitle",
			FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
			Text = tostring(Params.Title),
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.fromOffset(20, 25),
			Size = UDim2.new(1, 0, 0, 22),
			Parent = DialogHolderFrame
		})

		local UIGradient_3 = Library:Create("UIGradient", {
			Name = "UIGradient",
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Library.Themes.BackgroundColor),
				ColorSequenceKeypoint.new(1, Library.Themes.BackgroundColor)
			}),
			Parent = DialogHolderFrame
		})

		table.insert(Library.Storage.Notification, UIGradient_3)

		local SizeConstraint = Library:Create("UISizeConstraint", {
			Name = "UISizeConstraint",
			MaxSize = Vector2.new(620, math.huge),
			MinSize = Vector2.new(300, 165),
			Parent = DialogHolderFrame
		})

		for _, button in pairs(Params.Buttons) do
			local Button = Library:Create("TextButton", {
				Name = "DialogOption",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				BackgroundColor3 = Color3.fromRGB(50, 50, 50),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0.5, -5, 0, 32),
				Parent = Dialog
			}, {
				Library:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				Library:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(30, 30, 30),
					Transparency = 0.65
				})
			})

			local ButtonTitle = Library:Create("TextLabel", {
				Name = "DialogTitle",
				FontFace = Library.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = button.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.fromScale(1, 1),
				Parent = Button
			})

			local ButtonGradient = Library:Create("UIGradient", {
				Name = "UIGradient",
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Library.Themes.BackgroundColor),
					ColorSequenceKeypoint.new(1, Library.Themes.BackgroundColor)
				}),
				Parent = Button
			})

			table.insert(Library.Storage.BackgroundGradient, ButtonGradient)

			function State:Close()
				local ANIMATION_PROPS = {
					BackgroundTransparency = 1,
					ImageTransparency = 1,
					TextTransparency = 1
				}

				if not DialogHolder then
					return
				end

				local tween = Utility:Animation(DialogHolder, {
					BackgroundTransparency = 1
				}, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)

				tween.Completed:Once(function()
					if DialogHolder then
						Debris:AddItem(DialogHolder, 0.1)
					end
				end)

				for _, obj in ipairs(DialogHolder:GetDescendants()) do
					if not obj:IsA("GuiObject") then
						continue
					end

					local objAnimProps = {}
					for prop, targetValue in pairs(ANIMATION_PROPS) do
						if pcall(function() return obj[prop] end) then
							objAnimProps[prop] = targetValue
						end
					end
					if next(objAnimProps) then
						Utility:Animation(obj, objAnimProps, Library.AnimationSpeed, Library.EasingStyle.Quad, Library.EasingDirection.Out)
					end
				end
			end

			Library:Connect(Button.Activated, function()
				State:Close()
				if button.Callback then
					button.Callback()
				end
			end)
		end

		DialogHolderFrame.Size = UDim2.fromOffset(DialogContent.TextBounds.X + 90, 165)
		if DialogContent.TextBounds.X + 90 > MainFrame.Size.X.Offset - 120 then
			DialogHolderFrame.Size = UDim2.fromOffset(MainFrame.Size.X.Offset - 120, 165)
			DialogContent.TextWrapped = true
			DialogHolderFrame.Size = UDim2.fromOffset(MainFrame.Size.X.Offset - 120, DialogContent.TextBounds.Y + 150)
		end

		return Dialog_State
	end

	Utility:SetTheme(Library.Theme)
	return State
end

return Library, Utility
