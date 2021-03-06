characters = [
  {
    name: "Gunslinger",
    combat: 1,
    max_grit: 2,
    range_to_hit: 3,
    melee_to_hit: 5,
    health: 10,
    defense: 5,
    sanity: 12,
    willpower: 4,
    agility: 3,
    cunning: 3,
    spirit: 2,
    strength: 2,
    lore: 2,
    luck: 2,
    initiative: 6,
    keywords: 'showman'
  },
  {
    name: "Mad Scientist",
    keywords: 'smith',
    combat: 2,
    max_grit: 2,
    range_to_hit: 4,
    melee_to_hit: 4,
    agility: 2,
    cunning: 3,
    spirit: 2,
    strength: 2,
    lore: 3,
    luck: 4,
    initiative: 4,
    health: 8,
    defense: 3,
    sanity: 12,
    willpower: 4
  },
  {
    name: 'Lawman',
    keywords: 'law, frontier',
    combat: 2,
    max_grit: 2,
    range_to_hit: 4,
    melee_to_hit: 4,
    agility: 2,
    cunning: 4,
    spirit: 1,
    strength: 3,
    lore: 2,
    luck: 3,
    initiative: 4,
    health: 12,
    defense: 4,
    sanity: 12,
    willpower: 4
  },
  {
    name: 'Indian Scout',
    keywords: 'scout, tribal',
    combat: 2,
    max_grit: 2,
    range_to_hit: 4,
    melee_to_hit: 4,
    agility: 3,
    cunning: 2,
    spirit: 3,
    strength: 2,
    lore: 3,
    luck: 2,
    initiative: 5,
    health: 10,
    defense: 4,
    sanity: 10,
    willpower: 4
  },
  {
    name: 'Bandido',
    keywords: 'outlaw',
    combat: 2,
    max_grit: 2,
    range_to_hit: 5,
    melee_to_hit: 4,
    agility: 2,
    cunning: 1,
    spirit: 3,
    strength: 4,
    lore: 3,
    luck: 2,
    initiative: 3,
    health: 16,
    defense: 4,
    sanity: 8,
    willpower: 5
  },
  {
    name: 'Rancher',
    keywords: 'frontier',
    combat: 2,
    max_grit: 2,
    range_to_hit: 4,
    melee_to_hit: 4,
    agility: 2,
    cunning: 2,
    spirit: 3,
    strength: 3,
    lore: 4,
    luck: 1,
    initiative: 3,
    health: 14,
    defense: 4,
    sanity: 10,
    willpower: 4
  },
  {
    name: 'Saloon Girl',
    keywords: 'performer',
    combat: 2,
    max_grit: 2,
    range_to_hit: 4,
    melee_to_hit: 4,
    agility: 4,
    cunning: 3,
    spirit: 3,
    strength: 1,
    lore: 2,
    luck: 3,
    initiative: 5,
    health: 8,
    defense: 3,
    sanity: 14,
    willpower: 4
  },
  {
    name: 'U.S. Marshal',
    keywords: 'law, traveler',
    combat: 2,
    max_grit: 2,
    range_to_hit: 4,
    melee_to_hit: 4,
    agility: 3,
    cunning: 4,
    spirit: 2,
    strength: 2,
    lore: 1,
    luck: 3,
    initiative: 4,
    health: 10,
    defense: 3,
    sanity: 10,
    willpower: 4
  },
  {
    name: 'Preacher',
    keywords: 'holy',
    combat: 2,
    max_grit: 2,
    range_to_hit: 5,
    melee_to_hit: 4,
    agility: 1,
    cunning: 2,
    spirit: 4,
    strength: 3,
    lore: 3,
    luck: 2,
    initiative: 2,
    health: 12,
    defense: 5,
    sanity: 10,
    willpower: 3
  }
]


characters.each do |attrs|
  char = Character.find_by(name: attrs[:name])
  if char.nil?
    char = Character.new(attrs)
    if char.save!
      puts "Created character #{char.name} successfully!"
    else
      ap char.errors
    end
  end
end
