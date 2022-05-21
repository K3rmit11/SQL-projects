-- Creatures
INSERT INTO creature_template VALUES
    (DEFAULT, 'Young wolf', 1, 141, 10, 10, 4, 1, 10),
    (DEFAULT, 'Black wolf', 2, 142, 15, 20, 5, 2, 18),
    (DEFAULT, 'Werewolf', 10, 143, 100, 70, 5, 5, 80),
    (DEFAULT, 'Farmer', 5, 54, 0, 50, 2, 0, 0),
    (DEFAULT, 'Spider', 5, 256, 100, 5, 7, 1, 12),
    (DEFAULT, 'Little girl', 1, 60, 10, 15, 3, 0, 0),
    (DEFAULT, 'Little boy', 1, 61, 13, 17, 3, 0, 0);

INSERT INTO creature VALUES
    (DEFAULT, 1, 10.218787, -3.897654, 70.546544),
    (DEFAULT, 1,  8.412521, -7.214187, 71.465111),
    (DEFAULT, 1,  7.725158, -7.897654, 72.514644),
    (DEFAULT, 2, 11.785413,  0.742350, 71.465477),
    (DEFAULT, 2, 14.874123, -3.111015, 70.511157),
    (DEFAULT, 3, 30.874568, -4.637465, 72.444897),
    (DEFAULT, 4, -2.451147,  8.447874, 71.189737),
    (DEFAULT, 5, -1.849301,  7.372819, 65.137283),
    (DEFAULT, 5, -1.938292,  7.927361, 66.382953),
    (DEFAULT, 5, -1.783526,  6.937261, 67.339201),
    (DEFAULT, 5, -1.859232,  6.893726, 69.220183),
    (DEFAULT, 6, -1.849301,  6.782361, 68.283912);

INSERT INTO quest VALUES
    (DEFAULT, 1, 'Wolf killer', 'Kill 5 wolves', 'Congratulations!', 7, 7, 200,
        50),
    (DEFAULT, 2, 'Boss killer', 'Kill the werewolf', 'OMG!!!!', 7, 7, 1000,
        200),
    (DEFAULT, 5, 'Spider shoot', 'Shoot 50 spiders',
        'Thank you! I was so scared!', 12, 12, 2300, 400),
    (DEFAULT, 9, 'Fight!', 'Kill 20 spiders, 10 wolves',
        'My hero!', 7, 12, 4500, 600);

INSERT INTO character VALUES
    (DEFAULT, 'Kuro', TIMESTAMP '2020-01-10 23:18:12',
		'f5d3dab73306e09ba2ea5ad67686b10e6a60601e', 1042, 2, 1,
        11, 137, -2.125854, 8.14775, 72.774157, 100, 100, 5),
    (DEFAULT, 'Tilon', TIMESTAMP '2020-01-10 23:10:34',
		'4e1243bd22c66e76c2ba9eddc1f91394e57f9f83', 2442, 2, 0,
        10, 51, -2.841144, 8.74187, 72.871154, 110, 110, 4),
    (DEFAULT, 'SuperPingouin', TIMESTAMP '2020-02-28 12:32:56',
		'a2086d349392cbd1350678f27f87576600666c8a', 950, 1,
        0, 9, 22, -2.664738, 10.98267, 80.637289, 0, 100, 4),
    (DEFAULT, 'LeroyJenkins', TIMESTAMP '2020-02-25 10:14:03',
		'd34560ac1c29f715f6bd9289d6cd4c8c646f22d4', 1230,
        0, 0, 18, 578, -13.748302, 2.10735, 4.271829, 52, 190, 8),
    (DEFAULT, 'Mougatine', TIMESTAMP '2018-03-01 06:25:10',
		'21b195ec6dee5b5b639aad6e33ccade3c4df0d96', 32, 1, 1,
        13, 367, -0.037268, 1.73801, 2.398167, 120, 130, 6);

INSERT INTO character_quests VALUES
    (DEFAULT, 1, 1, 1),
    (DEFAULT, 1, 2, 1),
    (DEFAULT, 1, 3, 1),
    (DEFAULT, 1, 4, 0),
    (DEFAULT, 2, 1, 1),
    (DEFAULT, 2, 2, 1),
    (DEFAULT, 2, 3, 0),
    (DEFAULT, 2, 4, 1),
    (DEFAULT, 3, 4, 1),
    (DEFAULT, 4, 3, 1);
