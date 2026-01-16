
/* ============================================================
   SEED INICIAL - Pokemon TCG
   Tabelas: tbl_collections, tbl_cards
   ============================================================ */

-- (Opcional) selecione seu schema:
-- USE pokemon_tcg;

-- Limpa dados existentes (respeitando FK)
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE tbl_cards;
TRUNCATE TABLE tbl_collections;
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- 1) SEED: tbl_collections
-- ============================================================
/*
  Vou inserir IDs explícitos para facilitar a referência no seed.
  Se preferir deixar AUTO_INCREMENT sozinho, posso te mandar a versão
  usando LAST_INSERT_ID() / variáveis.
*/

INSERT INTO tbl_collections (id, CollectionSetName, ReleaseDate, TotalCardsInCollection) VALUES
(1, 'Base Set',     '1999-01-09', 102),
(2, 'Jungle',       '1999-06-16',  64),
(3, 'Fossil',       '1999-10-10',  62),
(4, 'Team Rocket',  '2000-04-24',  83),
(5, 'Neo Genesis',  '2000-12-16', 111);

-- ============================================================
-- 2) SEED: tbl_cards
-- ============================================================
/*
  Observações de modelagem:
  - Damage é VARCHAR porque no TCG pode ser "10+", "20x", etc.
  - Retreat está como VARCHAR para permitir formatos variados ("1", "2", "0").
  - Weak/Resistance como texto simples (ex: "Fighting", "None").
*/

INSERT INTO tbl_cards
(id, HP, `Name`, `Type`, Stage, Info, Attack, Damage, Weak, Resistance, Retreat, CardNumberInCollection, CollectionID)
VALUES
-- =======================
-- Base Set (CollectionID = 1)
-- =======================
(1,  60, 'Pikachu',     'Electric',  'Basic',   'Classic Electric-type mascot.',     'Thunder Jolt',   '30',  'Fighting', 'Metal',  '1',  25, 1),
(2,  50, 'Charmander',  'Fire',      'Basic',   'Loves hot places.',                 'Ember',          '30',  'Water',    'None',   '1',  46, 1),
(3,  60, 'Squirtle',    'Water',     'Basic',   'Shoots water at prey.',             'Bubble',         '10',  'Electric', 'None',   '1',  63, 1),
(4,  40, 'Bulbasaur',   'Grass',     'Basic',   'A seed is planted on its back.',    'Vine Whip',      '20',  'Fire',     'Water',  '1',  44, 1),
(5, 100, 'Charizard',   'Fire',      'Stage 2', 'Spits fire that can melt boulders.','Fire Spin',     '100',  'Water',    'Fighting','3',   4, 1),
(6,  90, 'Blastoise',   'Water',     'Stage 2', 'A brutal Pokémon with jet cannons.','Hydro Pump',   '40+',  'Electric', 'None',   '3',   2, 1),
(7,  80, 'Venusaur',    'Grass',     'Stage 2', 'Its plant blooms when absorbing sun.','Solarbeam',   '60',   'Fire',     'Water',  '2',  15, 1),

-- =======================
-- Jungle (CollectionID = 2)
-- =======================
(8,  80, 'Scyther',     'Grass',     'Basic',   'Mantis-like Pokémon with blades.',  'Slash',          '30',  'Fire',     'Fighting','0',  26, 2),
(9,  90, 'Snorlax',     'Colorless', 'Basic',   'Very lazy and loves to eat.',       'Body Slam',      '30',  'Fighting', 'Psychic', '4',  11, 2),
(10, 70, 'Eevee',       'Colorless', 'Basic',   'Its genetic code is unstable.',     'Quick Attack',  '10+',  'Fighting', 'Psychic', '1',  51, 2),
(11, 60, 'Vaporeon',    'Water',     'Stage 1', 'Lives close to water.',             'Water Gun',     '30+',  'Electric', 'None',    '1',  12, 2),
(12, 70, 'Jolteon',     'Electric',  'Stage 1', 'It concentrates ions in its fur.',  'Pin Missile',   '20x',  'Fighting', 'Metal',   '0',   4, 2),

-- =======================
-- Fossil (CollectionID = 3)
-- =======================
(13, 80, 'Lapras',      'Water',     'Basic',   'A gentle Pokémon that ferries people.','Water Gun',  '10+',  'Electric', 'None',    '2',  10, 3),
(14, 60, 'Kabuto',      'Fighting',  'Stage 1', 'Resurrected from a fossil.',         'Scratch',        '10',  'Grass',    'None',    '1',  50, 3),
(15, 90, 'Gengar',      'Psychic',   'Stage 2', 'Hides in shadows to steal warmth.',  'Dark Mind',      '30',  'Psychic',  'Fighting','0',  20, 3),

-- =======================
-- Team Rocket (CollectionID = 4)
-- =======================
(16, 50, 'Dark Charmander','Fire',   'Basic',   'A mischievous Charmander.',          'Tail Slap',      '10',  'Water',    'None',    '1',  50, 4),
(17, 70, 'Dark Wartortle','Water',   'Stage 1', 'It attacks quickly from the water.','Bite',           '20',  'Electric', 'None',    '2',  46, 4),
(18, 80, 'Dark Charmeleon','Fire',   'Stage 1', 'Aggressive and battle-hungry.',      'Flamethrower',   '40',  'Water',    'None',    '2',  32, 4),

-- =======================
-- Neo Genesis (CollectionID = 5)
-- =======================
(19, 50, 'Chikorita',   'Grass',     'Basic',   'Calms the atmosphere with aroma.',   'Razor Leaf',     '20',  'Fire',     'Water',   '1',  53, 5),
(20, 60, 'Cyndaquil',   'Fire',      'Basic',   'Usually stays hunched over.',        'Flare',          '20',  'Water',    'None',    '1',  56, 5),
(21, 60, 'Totodile',    'Water',     'Basic',   'Its powerful jaws are fearsome.',   'Bite',           '20',  'Electric', 'None',    '1',  81, 5);

-- ============================================================
-- 3) QUICK CHECKS
-- ============================================================
SELECT * FROM tbl_collections ORDER BY id;
SELECT * FROM tbl_cards ORDER BY id;

-- Verifica o relacionamento (FK) com JOIN
SELECT
  c.id AS card_id,
  c.`Name` AS card_name,
  c.CardNumberInCollection,
  col.CollectionSetName,
  col.ReleaseDate
FROM tbl_cards c
JOIN tbl_collections col ON col.id = c.CollectionID
ORDER BY col.id, c.CardNumberInCollection;
