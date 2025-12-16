SELECT * FROM talabalar
ORDER BY GPA DESC
LIMIT 3;


CREATE TABLE xodimlar (
    id INTEGER PRIMARY KEY,
    ism TEXT,
    yosh INTEGER CHECK (yosh > 0),
    oylik INTEGER CHECK (oylik >= 1000000),
    status TEXT DEFAULT 'active'
);


SELECT status, COUNT(*) 
FROM xodimlar
GROUP BY status
HAVING COUNT(*) > 1;


CREATE TABLE guruhlar (
    id INTEGER PRIMARY KEY,
    nom TEXT
);

CREATE TABLE talabalar2 (
    id INTEGER PRIMARY KEY,
    ism TEXT,
    guruh_id INTEGER,
    FOREIGN KEY (guruh_id) REFERENCES guruhlar(id)
);

SELECT t.ism, g.nom
FROM talabalar2 t
INNER JOIN guruhlar g
ON t.guruh_id = g.id;
