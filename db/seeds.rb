require 'httparty'

# Armor
def fetch_and_create_crafting_materials(material_data)
  material_data.map do |material|
    CraftingMaterial.find_or_create_by(name: material['item']['name'])

  end
end

def import_armors
  response = HTTParty.get('https://mhw-db.com/armor')
  if response.success?
    armors_data = response.parsed_response
    armors_data.each do |armor_data|
      armor = Armor.find_or_create_by(name: armor_data['name']) do |a|
        a.type = armor_data['type']
        a.rank = armor_data['rank']
        a.defense = armor_data['defense']['base']

      end

      materials = fetch_and_create_crafting_materials(armor_data['crafting']['materials'])
      materials.each do |material|
        quantity = armor_data['crafting']['materials'].find { |m| m['item']['name'] == material.name }['quantity']
        ArmorCraftingMaterial.find_or_create_by(armor: armor, crafting_material: material, quantity: quantity)
      end
    end
  else
    puts "Failed to fetch armor data: #{response.code}"
  end
rescue StandardError => e
  puts "Error during fetching and importing armor data: #{e.message}"
end

import_armors

# Weapon
def import_weapons
  response = HTTParty.get('https://mhw-db.com/weapons')
  if response.success?
    weapons_data = response.parsed_response
    weapons_data.each do |weapon_data|
      weapon = Weapon.find_or_create_by(name: weapon_data['name']) do |w|
        w.type = weapon_data['type']
        w.rarity = weapon_data['rarity']
        w.attack_power = weapon_data['attack']['display']
        w.element = weapon_data.dig('elements', 0, 'type')
        w.affinity = weapon_data.dig('attributes', 'affinity')
      end

      next unless weapon.persisted?

      next unless weapon_data['crafting'] && weapon_data['crafting']['craftingMaterials']

      materials = fetch_and_create_crafting_materials(weapon_data['crafting']['craftingMaterials'])
      materials.each do |material|
        quantity_info = weapon_data['crafting']['craftingMaterials'].find { |m| m['item']['name'] == material.name }
        quantity = quantity_info ? quantity_info['quantity'] : 0
        WeaponCraftingMaterial.find_or_create_by(weapon: weapon, crafting_material: material, quantity: quantity)
      end
    end
  else
    puts "Failed to fetch weapon data: #{response.code}"
  end
rescue StandardError => e
  puts "Error during fetching and importing weapon data: #{e.message}"
end

import_weapons
