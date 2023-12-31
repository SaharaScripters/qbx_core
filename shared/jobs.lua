---@class Job
---@field label string
---@field type? string
---@field defaultDuty boolean
---@field offDutyPay boolean
---@field grades table<integer, {name: string, payment: number, isboss: boolean, bankAuth: boolean}>

---@type table<string, Job>
return {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'unemployed',
                payment = 10
            },
        },
	},
	['government'] = {
		label = 'GOV',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'President',
                payment = 1000,
                isboss = true,
                bankAuth = true,
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
                name = 'Gardien de la Paix',
                payment = 50
            },
			[1] = {
                name = 'Brigadier',
                payment = 75
            },
			[2] = {
                name = 'Brigadier Chef',
                payment = 75
            },			
			[3] = {
                name = 'Officier',
                payment = 100
            },
			[4] = {
                name = 'Officier Principal',
                payment = 100
            },			
			[5] = {
                name = 'Commandant',
                payment = 125
            },
			[6] = {
                name = 'Commandant Principal',
                payment = 150
            },
			[7] = {
                name = 'Commandant Divisionnaire',
                payment = 150
            },
			[8] = {
                name = 'Commissaire',
                payment = 150
            },			
			[9] = {
                name = 'Controleur General',
				isboss = true,				
                payment = 150
            },
			[10] = {
                name = 'Prefet de Police',
				isboss = true,
				bankAuth = true,
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
                name = 'Sergeant',
                payment = 75
            },
			[1] = {
                name = 'Sergeant-chef',
                payment = 75
            },
			[2] = {
                name = 'Adjudant',
                payment = 75
            },			
			[3] = {
                name = 'Adjudant-chef',
                payment = 75
            },		
			[4] = {
                name = 'Lieutenant',
                payment = 75
            },
			[5] = {
                name = 'Captain',
                payment = 100
            },
			[6] = {
                name = 'Commandant',
                payment = 125
            },
			[7] = {
                name = 'Colonel',
				isboss = true,
                payment = 150
            },			
			[8] = {
                name = 'General',
				isboss = true,
				bankAuth = true,
                payment = 150
            },
        },
	},
	['ambulance'] = {
		label = 'HOSPITAL',		
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			[0] = {
                name = 'Infirmier(e)',
                payment = 100
            },
			[1] = {
                name = 'Medecin',
                payment = 125
            },
			[2] = {
                name = 'Chirurgien(ne)',
                payment = 125
            },					
			[3] = {
                name = 'Chef de Service',
				isboss = true,
                payment = 150
            },			
			[4] = {
                name = 'Direcetur CHU',
				isboss = true,
				bankAuth = true,
                payment = 150
            },
        },
	},
	['judge'] = {
		label = 'JUSTICE',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Judge',
				isboss = true,
				bankAuth = true,
                payment = 150
            },
        },
	},
	['lawyer'] = {
		label = 'LAW FIRM',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Lawyer',
                payment = 50
            },
        },
	},	
	-- Businesses
	['pawnshop'] = {
		label = 'ABBAS BAZAR',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 100
            },
			[2] = {
                name = 'Owner',
				isboss = true,
				bankAuth = true,				
                payment = 150
            },
        },
	},	
	['realestate'] = {
		label = 'ADDOHA GROUP',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
				isboss = true,
				bankAuth = true,				
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'TAXI VERT',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Driver',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
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
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
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
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
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
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
	},
	['motordealer1'] = {
		label = 'MOTORS DEALER',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
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
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
	},
	['mechanic1'] = {
		label = 'MECHANIC 1',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
	},
	['mechanic2'] = {
		label = 'MECHANIC 2',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
	},
	['mechanic3'] = {
		label = 'MECHANIC 3',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
	},
	['mechanic4'] = {
		label = 'MECHANIC 4',
        type = 'mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            [0] = {
                name = 'Representative',
                payment = 50
            },
			[1] = {
                name = 'Manager',
                payment = 75
            },
			[2] = {
                name = 'Owner',
                isboss = true,
                bankAuth = true,
                payment = 150
            },
        },
	}
}
