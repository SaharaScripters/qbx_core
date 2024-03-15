local function fetchSlots(license2, license)
  local result = MySQL.query.await('SELECT slots FROM player_slots WHERE identifier = ? OR identifier = ?', {license, license2})
  return result
end

local function updateSlots(license2, license, slots)
  return MySQL.update.await('UPDATE player_slots SET slots = ? WHERE identifier = ? OR identifier = ?', {slots, license, license2})
end

local function insertSlots(license, slots)
  return MySQL.insert.await('INSERT INTO player_slots (identifier, slots) VALUES (?, ?)', {license, slots})
end

local function removeSlots(license, license2)
  return MySQL.query.await('DELETE FROM player_slots WHERE identifier = ? OR identifier = ?', {license, license2})
end

local function togglePlayerDisabled(citizenId, disabled, reason)
  lib.print.info('togglePlayerDisabled', citizenId, disabled, reason)
  return MySQL.update.await('UPDATE players SET disabled = ?, disabled_reason = ? WHERE citizenid = ?', {disabled, reason, citizenId})
end

return {
  fetchSlots = fetchSlots,
  updateSlots = updateSlots,
  insertSlots = insertSlots,
  removeSlots = removeSlots,
  togglePlayerDisabled = togglePlayerDisabled
}
