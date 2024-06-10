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
	['government'] = {
		label = 'GOUVERNEMENT',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'GOUVERNEUR',
                payment = 0,
                isboss = true,
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
                name = 'GARDIEN DE LA PAIX',
                payment = 50
            },
			[1] = {
                name = 'INSPECTEUR',
                payment = 75
            },
			[2] = {
                name = 'INSPECTEUR PRINCIPAL',
                payment = 75
            },			
			[3] = {
                name = 'OFFICIER',
                payment = 100
            },
			[4] = {
                name = 'OFFICIER PRINCIPAL',
                payment = 100
            },			
			[5] = {
                name = 'COMMANDANT',
                payment = 125
            },
			[6] = {
                name = 'COMMANDANT DIVISIONNAIRE',
                payment = 150
            },
			[7] = {
                name = 'COMMISSAIRE',
                payment = 150
            },
			[8] = {
                name = 'COMMISSAIRE DIVISIONNAIRE',
                payment = 150
            },			
			[9] = {
                name = 'CONTROLEUR GENERAL',
				isboss = true,				
                payment = 150
            },
			[10] = {
                name = 'PREFET DE POLICE',
				isboss = true,
                payment = 15000
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
                payment = 75
            },
			[1] = {
                name = 'SERGEANT CHEF',
                payment = 75
            },
			[2] = {
                name = 'ADJUDANT',
                payment = 75
            },			
			[3] = {
                name = 'ADJUDANT CHEF',
                payment = 75
            },		
			[4] = {
                name = 'LIEUTENANT',
                payment = 75
            },
			[5] = {
                name = 'CAPTAIN',
                payment = 100
            },
			[6] = {
                name = 'COMMANDANT',
                payment = 125
            },
			[7] = {
                name = 'COLONEL',
				isboss = true,
                payment = 150
            },			
			[8] = {
                name = 'GENERAL',
				isboss = true,
                payment = 150
            },
        },
	},
	['ambulance'] = {
		label = 'CHU',		
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			[0] = {
                name = 'INFIRMIER(E)',
                payment = 100
            },
			[1] = {
                name = 'MEDECIN',
                payment = 125
            },
			[2] = {
                name = 'CHIRURGIEN(NE)',
                payment = 125
            },					
			[3] = {
                name = 'CHEF DE SERVICE',
				isboss = true,
                payment = 150
            },			
			[4] = {
                name = 'DIRECTEUR D`HOPITAL',
				isboss = true,
                payment = 150
            },			
        },
	},
	['justice'] = {
		label = 'MINISTERE DE LA JUSTICE',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'JUGE',
                payment = 150
            },
			[1] = {
                name = 'MINISTRE DE LA JUSTICE',
				isboss = true,
                payment = 150
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
                payment = 50
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
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
                payment = 50
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
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
                payment = 50
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},	
	['butcher'] = {
		label = 'KOUTOUBIA',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'BUTCHER',
                payment = 50
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},	
	['electrician'] = {
		label = 'ONEE',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'ELECTRICIAN',
                payment = 50
            },
			[1] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},	
	-- Businesses
	-- Restaurants
    ['medinaburger'] = {
        label = 'RESTAURANT MEDINA BURGER',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
            [1] = {
                name = 'MANAGER',
                payment = 75
            },
            [2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
    },
    ['blackpan'] = {
        label = 'RESTAURANT BLACK PAN',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
            [1] = {
                name = 'MANAGER',
                payment = 75
            },
            [2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
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
                payment = 50
            },
            [1] = {
                name = 'MANAGER',
                payment = 75
            },
            [2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
    },
    ['arriba'] = {
        label = 'CAFE ARRIBA',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'BARISTA',
                payment = 50
            },
            [1] = {
                name = 'MANAGER',
                payment = 75
            },
            [2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
    },
	-- Night Clubs	
	['unicorn'] = {
		label = 'CLUB UNICORN',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
				isboss = true,				
                payment = 125
            },			
			[2] = {
                name = 'OWNER',
				isboss = true,					
                payment = 150
            },
        },
	},
	['ibiza'] = {
		label = 'CLUB IBIZA',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
				isboss = true,				
                payment = 125
            },			
			[2] = {
                name = 'OWNER',
				isboss = true,					
                payment = 150
            },
        },
	},
	['club77'] = {
		label = 'CLUB 77',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
				isboss = true,				
                payment = 125
            },			
			[2] = {
                name = 'OWNER',
				isboss = true,					
                payment = 150
            },
        },
	},
	['vazou'] = {
		label = 'CLUB VAZOU',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'WAITER',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
				isboss = true,				
                payment = 125
            },			
			[2] = {
                name = 'OWNER',
				isboss = true,					
                payment = 150
            },
        },
	},	
	-- States Companies	
	['farmer'] = {
		label = 'AGRI MAROC',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'FARMER',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
				isboss = true,				
                payment = 125
            },			
			[2] = {
                name = 'DIRECTOR',
				isboss = true,					
                payment = 150
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
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
				isboss = true,				
                payment = 125
            },			
			[2] = {
                name = 'DIRECTOR',
				isboss = true,					
                payment = 150
            },
        },
	},
	['lawyer'] = {
		label = 'LAW OFFICE',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [1] = {
                name = 'AVOCAT TRAINEE',
				isboss = true,				
                payment = 50
            },		
            [0] = {
                name = 'AVOCAT',
                payment = 50
            },
            [1] = {
                name = 'AVOCAT FONDATEUR',
				isboss = true,				
                payment = 50
            },			
        },
	},	
	['pawnshop'] = {
		label = 'ABBAS BAZAR',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 100
            },
			[2] = {
                name = 'OWNER',
				isboss = true,				
                payment = 150
            },
        },
	},	
	['cardealer1'] = {
		label = 'CAR DEALER 1',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['cardealer2'] = {
		label = 'CAR DEALER 2',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['cardealer3'] = {
		label = 'CAR DEALER 3',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['motordealer1'] = {
		label = 'MOTORS DEALER 1',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['motordealer2'] = {
		label = 'MOTORS DEALER 2',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['boatdealer1'] = {
		label = 'BOATS DEALER',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'REPRESENTATIVE',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['mechanic1'] = {
		label = 'MECHANIC SHOP 1',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'MECHANIC',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['mechanic2'] = {
		label = 'MECHANIC SHOP 2',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'MECHANIC',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	},
	['mechanic3'] = {
		label = 'MECHANIC SHOP 3',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'MECHANIC',
                payment = 50
            },
			[1] = {
                name = 'MANAGER',
                payment = 75
            },
			[2] = {
                name = 'OWNER',
                isboss = true,
                payment = 150
            },
        },
	}
}
