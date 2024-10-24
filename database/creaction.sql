CREATE TABLE Client (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    ipAddress VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE Bandwidth (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    bandwidthLimit FLOAT NOT NULL,
    bandwidthRequested FLOAT NOT NULL,
    connectionSpeed FLOAT NOT NULL,
    clientId INTEGER,
    FOREIGN KEY (clientId) REFERENCES Client(id)
);


CREATE TABLE Admin (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);