
INSERT INTO tbl_cards
(HP, `Name`, `Type`, Stage, Info, Attack, Damage, Weak, Resistance, Retreat, CardNumberInCollection, CollectionID)
VALUES
-- =======================
-- Base Set (CollectionID = 1)
-- =======================
(40, 'Caterpie',   'Grass',     'Basic',   'Seed data for testing.', 'String Shot',     '10',  'Fire',     'None',     '1', 45, 1),
(60, 'Metapod',    'Grass',     'Stage 1', 'Seed data for testing.', 'Stiffen',         '—',   'Fire',     'None',     '2', 54, 1),
(70, 'Butterfree', 'Grass',     'Stage 2', 'Seed data for testing.', 'Psybeam',         '20',  'Fire',     'Fighting', '1', 33, 1),
(30, 'Rattata',    'Colorless', 'Basic',   'Seed data for testing.', 'Bite',            '20',  'Fighting', 'Psychic',  '0', 61, 1),
(60, 'Raticate',   'Colorless', 'Stage 1', 'Seed data for testing.', 'Super Fang',      '20',  'Fighting', 'Psychic',  '0', 40, 1),
(30, 'Abra',       'Psychic',   'Basic',   'Seed data for testing.', 'Psyshock',        '10',  'Psychic',  'Fighting', '0', 43, 1),
(60, 'Kadabra',    'Psychic',   'Stage 1', 'Seed data for testing.', 'Confuse Ray',     '20',  'Psychic',  'Fighting', '1', 32, 1),
(80, 'Alakazam',   'Psychic',   'Stage 2', 'Seed data for testing.', 'Mind Bend',       '30',  'Psychic',  'Fighting', '2',  1, 1),
(50, 'Machop',     'Fighting',  'Basic',   'Seed data for testing.', 'Low Kick',        '20',  'Psychic',  'None',     '2', 52, 1),
(80, 'Machoke',    'Fighting',  'Stage 1', 'Seed data for testing.', 'Karate Chop',     '50',  'Psychic',  'None',     '2', 34, 1),

-- =======================
-- Jungle (CollectionID = 2)
-- =======================
(50, 'Meowth',     'Colorless', 'Basic',   'Seed data for testing.', 'Pay Day',         '10',  'Fighting', 'Psychic',  '1', 56, 2),
(70, 'Persian',    'Colorless', 'Stage 1', 'Seed data for testing.', 'Scratch',         '20',  'Fighting', 'Psychic',  '0', 42, 2),
(50, 'Oddish',     'Grass',     'Basic',   'Seed data for testing.', 'Absorb',          '10',  'Fire',     'Water',    '1', 58, 2),
(70, 'Gloom',      'Grass',     'Stage 1', 'Seed data for testing.', 'Poisonpowder',    '20',  'Fire',     'Water',    '2', 36, 2),
(40, 'Paras',      'Grass',     'Basic',   'Seed data for testing.', 'Scratch',         '20',  'Fire',     'Fighting', '1', 59, 2),
(60, 'Parasect',   'Grass',     'Stage 1', 'Seed data for testing.', 'Spore',           '10',  'Fire',     'Fighting', '2', 41, 2),

-- =======================
-- Fossil (CollectionID = 3)
-- =======================
(40, 'Omanyte',    'Water',     'Stage 1', 'Seed data for testing.', 'Water Gun',       '10+', 'Grass',    'None',     '1', 52, 3),
(70, 'Omastar',    'Water',     'Stage 2', 'Seed data for testing.', 'Ancient Wave',    '40',  'Grass',    'None',     '2', 40, 3),
(60, 'Aerodactyl', 'Fighting',  'Stage 1', 'Seed data for testing.', 'Wing Attack',     '30',  'Grass',    'Fighting', '1',  1, 3),
(50, 'Psyduck',    'Water',     'Basic',   'Seed data for testing.', 'Headache',        '10',  'Electric', 'None',     '1', 53, 3),
(70, 'Golduck',    'Water',     'Stage 1', 'Seed data for testing.', 'Aqua Slash',      '40',  'Electric', 'None',     '2', 35, 3),

-- =======================
-- Team Rocket (CollectionID = 4)
-- =======================
(120,'Dark Charizard','Fire',   'Stage 2', 'Seed data for testing.', 'Flame Burst',     '70',  'Water',    'None',     '3', 21, 4),
(110,'Dark Blastoise','Water',  'Stage 2', 'Seed data for testing.', 'Hydro Cannon',    '50+', 'Electric', 'None',     '3',  3, 4),
(100,'Dark Dragonite','Dragon', 'Stage 2', 'Seed data for testing.', 'Giant Tail',      '50',  'Ice',      'None',     '3',  5, 4),
(70, 'Dark Arbok',   'Grass',   'Stage 1', 'Seed data for testing.', 'Poison Fang',     '20',  'Psychic',  'Fighting', '2',  2, 4),
(70, 'Dark Golduck', 'Water',   'Stage 1', 'Seed data for testing.', 'Dark Splash',     '40',  'Electric', 'None',     '1', 37, 4),
(90, 'Dark Vileplume','Grass',  'Stage 2', 'Seed data for testing.', 'Toxic Pollen',    '30',  'Fire',     'Water',    '2', 13, 4),
(80, 'Dark Magneton','Electric','Stage 1', 'Seed data for testing.', 'Shock Wave',      '30',  'Fighting', 'Metal',    '2', 11, 4),

-- =======================
-- Neo Genesis (CollectionID = 5)
-- =======================
(70, 'Bayleef',    'Grass',     'Stage 1', 'Seed data for testing.', 'Vine Whip',       '30',  'Fire',     'Water',    '1', 28, 5),
(80, 'Quilava',    'Fire',      'Stage 1', 'Seed data for testing.', 'Flamethrower',    '50',  'Water',    'None',     '1', 47, 5);
