USE Librairie;

CREATE TABLE Livres (
    id INT AUTO_INCREMENT PRIMARY KEY , 
    titre VARCHAR(255) NOT NULL,    
    auteur VARCHAR(255) NOT NULL,  
    prix DECIMAL(5,2) NOT NULL,      
    stock INT NOT NULL                   
);
CREATE TABLE Clients (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nom VARCHAR(255) NOT NULL,      
    email VARCHAR(255) NOT NULL UNIQUE, 
    date_inscription DATE NOT NULL 
);

INSERT INTO Livres (titre, auteur, prix, stock) VALUES
('Les Misérables', 'Victor Hugo', 20.50, 12),
('Le Petit Prince', 'Antoine de Saint-Exupéry', 15.99, 5),
('1984', 'George Orwell', 18.00, 8),
('Harry Potter et la pierre philosophale', 'J.K. Rowling', 25.00, 10);


INSERT INTO Clients (nom, email, date_inscription) VALUES
('Jean Dupont', 'jean.dupont@email.fr', '2024-01-10'),
('Alice Martin', 'alice.martin@email.fr', '2024-02-15'),
('Bob Robert', 'bob.robert@email.fr', '2024-03-20');


SELECT titre, auteur, prix FROM Livres;

SELECT titre, auteur, prix FROM Livres WHERE prix > 20;

SELECT nom, email, date_inscription FROM Clients WHERE date_inscription > '2024-02-01';


UPDATE Livres SET stock = stock - 1 WHERE titre = '1984';


DELETE FROM Clients WHERE email = 'bob.robert@email.fr';


INSERT INTO Livres (titre, auteur, prix, stock) VALUES
('Le Seigneur des Anneaux', 'J.R.R. Tolkien', 30.00, 7);

