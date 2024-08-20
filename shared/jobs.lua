---@type table<string, Job>
return {
	['unemployed'] = {
		label = 'CIVILIAN',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'UNEMPLOYED',
                payment = 10
            },
        },
	},
	-- State Jobs
	['government'] = {
		label = 'GOVERNMENT',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'GOUVERNOR',
                payment = 0,
                isboss = true,
            },
        },
	},
	['justice'] = {
		label = 'MINISTRY OF JUSTICE',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'JUDGE',
                payment = 600
            },
			[1] = {
                name = 'MINISTER OF JUSTICE',
				isboss = true,
                payment = 0
            },			
        },
	},
	['police'] = {
		label = 'DGSN',
        type = 'leo',		
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'PEACE KEEPER', -- 0
                payment = 200
            },
			[1] = {
                name = 'INSPECTOR', -- 4
                payment = 250
            },
			[2] = {
                name = 'PRINCIPAL INSPECTOR', -- 2
                payment = 300
            },			
			[3] = {
                name = 'OFFICER', -- 2
                payment = 350
            },
			[4] = {
                name = 'PRINCIPAL OFFICER', -- 2
                payment = 400
            },			
			[5] = {
                name = 'COMMISSIONER', -- 2
                payment = 450
            },
			[6] = {
                name = 'PRINCIPAL COMMISSIONER', -- 2
                payment = 500
            },
			[7] = {
                name = 'REGIONAL COMMISSIONER', -- 2
                payment = 550
            },			
			[8] = {
                name = 'GENERAL CONTROLLER', -- 2				
                payment = 600
            },
			[9] = {
                name = 'PREFECT OF POLICE', -- 1
				isboss = true,
                payment = 650
            },
			[10] = {
                name = 'DGSN DIRECTOR', -- 1
				isboss = true,
                payment = 700
            },			
        },
	},
	['civilprotection'] = {
		label = 'DGCP',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			[0] = {
                name = 'SERGEANT',
                payment = 200
            },
			[1] = {
                name = 'CHIEF SERGEANT',
                payment = 250
            },
			[2] = {
                name = 'ADJUDANT',
                payment = 300
            },
			[3] = {
                name = 'CHIEF ADJUDANT',
                payment = 350
            },
			[4] = {
                name = 'SUB-LIEUTENANT',
                payment = 400
            },
			[5] = {
                name = 'LIEUTENANT',
                payment = 450
            },		
			[6] = {
                name = 'CAPTAIN',
                payment = 500
            },
			[7] = {
                name = 'COMMANDER',
                payment = 550
            },
			[8] = {
                name = 'LIEUTENANT COLONEL',
                payment = 600
            },
			[9] = {
                name = 'COLONEL',
                payment = 650
            },
			[10] = {
                name = 'COLONEL MAJOR',
				isboss = true,
                payment = 700
            },
        },
	},
	['ambulance'] = {
		label = 'CHU',		
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			[0] = {
                name = 'TRAINEE NURSE',
                payment = 200
            },
			[1] = {
                name = 'NURSE',
                payment = 300
            },
			[2] = {
                name = 'PHYSICIAN',
                payment = 400
            },
			[3] = {
                name = 'SURGEON',
                payment = 500
            },					
			[4] = {
                name = 'HOSPITAL MANAGER',
				isboss = true,
                payment = 600
            },			
			[5] = {
                name = 'HOSPITAL DIRECTOR',
				isboss = true,
                payment = 700
            },			
        },
	},
	-- State Companies	
	['farmer'] = {
		label = 'MAROC BIO',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'FARMER',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },			
			[3] = {
                name = 'DIRECTOR',
				isboss = true,					
                payment = 0
            },
        },
	},
	['miner'] = {
		label = 'MANAGEM',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'MINER',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },			
			[3] = {
                name = 'DIRECTOR',
				isboss = true,					
                payment = 0
            },
        },
	},
	-- Public Job
	['taxi'] = {
		label = 'TAXIS MOROCCO',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'DRIVER',
                payment = 0
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['courier'] = {
		label = 'AMAZON',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'COURIER',
                payment = 0
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['fueler'] = {
		label = 'SHELL',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'FUELER',
                payment = 0
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},		
	['electrician'] = { -- SOON
		label = 'ONEE',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'ELECTRICIAN',
                payment = 0
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},	
	-- Businesses
	-- Restaurants
    ['burgershot'] = {
        label = 'RESTAURANT BURGERSHOT',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
            [3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
    },
    ['blackpan'] = {
        label = 'RESTAURANT BLACKPAN',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
            [3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
    },
	-- Cafes
    ['carrion'] = {
        label = 'CAFE CARRION',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'BARISTA',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
            [3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
    },
    ['coolbeans'] = {
        label = 'CAFE COOLBEANS',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'BARISTA',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
            [3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
    },
	-- Night Clubs	
	['unicorn'] = {
		label = 'CLUB UNICORN',
        type = 'nightclub',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },			
			[3] = {
                name = 'OWNER',
				isboss = true,					
                payment = 0
            },
        },
	},
	['ibiza'] = {
		label = 'CLUB IBIZA',
        type = 'nightclub',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },			
			[3] = {
                name = 'OWNER',
				isboss = true,					
                payment = 0
            },
        },
	},
	['club77'] = {
		label = 'CLUB 77',
        type = 'nightclub',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },			
			[3] = {
                name = 'OWNER',
				isboss = true,					
                payment = 0
            },
        },
	},
	['vazou'] = {
		label = 'CLUB VAZOU',
        type = 'nightclub',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
            [2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },			
			[3] = {
                name = 'OWNER',
				isboss = true,					
                payment = 0
            },
        },
	},	
	-- law firm Office
	['lawyer'] = {
		label = 'LAW OFFICE',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'LAWYER TRAINEE',				
                payment = 100
            },
            [1] = {
                name = 'LAWYER',
                payment = 100
            },
            [2] = {
                name = 'LAWYER EXPERT',
				isboss = true,
                payment = 100
            },
            [3] = {
                name = 'LAWYER FOUNDER',
				isboss = true,				
                payment = 0
            },			
        },
	},
	-- Bazar Shops
	['pawnshop'] = {
		label = 'ABBAS BAZAAR',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
				isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
				isboss = true,				
                payment = 0
            },
        },
	},
	-- Car/Motorcycle/Boar Dealer Shops
	['cardealer1'] = {
		label = 'SOUTH AUTOHALL',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['cardealer2'] = {
		label = 'NORTH AUTOHALL',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['cardealer3'] = {
		label = 'FOX IMPORTS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['motordealer1'] = {
		label = 'EXOTIC MOTORS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['motordealer2'] = {
		label = 'SANDERS MOTORS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['boatdealer1'] = {
		label = 'VANGUARD BOATS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	-- Mechanic Shops
	['mechanic1'] = {
		label = 'AUTO ZONE',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'MECHANIC',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['mechanic2'] = {
		label = 'AUTO MASTER',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'MECHANIC',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	['mechanic3'] = {
		label = 'AUTO EXOTIC',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'MECHANIC',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	-- Electronic Shop
	['digitalden'] = {
		label = 'DIGITALDEN',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'TECHNICIAN',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
	-- LIQUOR Shop
	['liquorshop'] = {
		label = 'ZNIBER SHOP',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 100
            },
            [1] = {
                name = 'SUPERVISOR',
                payment = 100
            },
			[2] = {
                name = 'MANAGER',
                isboss = true,
                payment = 100
            },
			[3] = {
                name = 'OWNER',
                isboss = true,
                payment = 0
            },
        },
	},
}
