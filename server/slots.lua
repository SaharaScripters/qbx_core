local storage = require 'server.storage.slots'

lib.addCommand('addslots', {
  help = 'Adding custom number of slots',
  params = {
      {name = 'identifier', help = 'Player identifier (license:xxxxx)', type = 'string'},
      {name = 'slots', help = 'Enter the number of characters slots the player is expected to have', type = 'number'},
  },
  restricted = "group.admin"
}, function(source, args)
  local result = storage.fetchSlots(args.identifier, args.identifier)
  if result and result[1] then
      storage.updateSlots(args.identifier, args.identifier, result[1].slots + args.slots)
      exports.qbx_core:Notify(source, ('You added %s slots for player %s'):format(args.slots, args.identifier), 'success')
  else
      storage.insertSlots(args.identifier, args.slots)
      exports.qbx_core:Notify(source, ('You added %s slots for player %s'):format(args.slots, args.identifier), 'success')
  end
end)

lib.addCommand('setslots', {
  help = 'Setting the available characters slots for a player',
  params = {
      {name = 'identifier', help = 'Player identifier (license:xxxxx) or (license2:xxxxx)', type = 'string'},
      {name = 'slots', help = 'Enter the number of characters slots the player is expected to have', type = 'number'},
  },
  restricted = 'group.admin'
}, function(source, args)
  local result = storage.fetchSlots(args.identifier, args.identifier)
  if result and result[1] then
    storage.updateSlots(args.identifier, args.identifier, args.slots)
      exports.qbx_core:Notify(source, ('You changed the slots to %s for player %s'):format(args.slots, args.identifier), 'success')
  else
    storage.insertSlots(args.identifier, args.slots)
      exports.qbx_core:Notify(source, ('You added %s slots for player %s'):format(args.slots, args.identifier), 'success')
  end
end)

lib.addCommand('removeslots', {
  help = 'Removal of custom number of slots',
  params = {
      {name = 'identifier', help = 'Player identifier (license:xxxxx)', type = 'string'},
  },
  restricted = "group.admin"
}, function(source, args)
  local result = storage.fetchSlots(args.identifier, args.identifier)
  if result and result[1] then
    storage.removeSlots(args.identifier, args.identifier)
      exports.qbx_core:Notify(source, ('You removed the slots for player %s'):format(args.identifier), 'success')
  end
end)

lib.addCommand('enablechar', {
  help = 'Re-enabling the character',
  params = {
      {name = 'citizenid', help = 'Player citizenid', type = 'string'}
  },
  restricted = "group.admin"
}, function(source, args)
  local result = storage.togglePlayerDisabled(args.citizenid, 0)
  if result then
      exports.qbx_core:Notify(source, ('You enabled the character for player %s'):format(args.citizenid), 'success')
  else
      exports.qbx_core:Notify(source, ('character not found for player %s'):format(args.citizenid), 'error')
  end
end)

lib.addCommand('disablechar', {
  help = 'Disabling the character',
  params = {
    {name = 'citizenid', help = 'Player citizenid', type = 'string'},
    {name = 'reason', help = 'Reason for disabling the character', type = 'string'}
  },
  restricted = "group.admin"
}, function(source, args)
  local reason = args.reason or 'No reason provided'
  for k, v in pairs(args) do
    if tonumber(k) then
      reason = reason .. ' ' .. v
    end
  end
  lib.print.info('reason', reason)
  local result = storage.togglePlayerDisabled(args.citizenid, 1, reason)
  if result then
      exports.qbx_core:Notify(source, ('You disabled the character for player %s.  \nReason: %s'):format(args.citizenid, reason), 'success')
  else
      exports.qbx_core:Notify(source, ('character not found for player %s'):format(args.citizenid), 'error')
  end
end)
