-- Sp�cifie la base de donn�es dans laquelle les donn�es seront import�es.
USE EtudiantsDB;
GO

-- FIELDTERMINATOR = ',' sp�cifie que les champs sont s�par�s par des virgules.
-- ROWTERMINATOR = '\n' indique que les lignes sont termin�es par un retour � la ligne.
-- FIRSTROW = 2 indique que la premi�re ligne du fichier CSV est une ligne d'en-t�te et ne doit pas �tre import�e comme des donn�es.
-- BEGIN TRY ... END TRY / BEGIN CATCH ... END CATCH : Tente d'ex�cuter les commandes SQL � l'int�rieur du bloc TRY. 
-- Si une erreur se produit, le bloc CATCH capture l'erreur et ex�cute un traitement sp�cifique.

-- Insertion des donn�es dans la table etudiant depuis CSV
BEGIN TRY
    BULK INSERT etudiant
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\etudiant.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les donn�es ont �t� charg�es dans la table etudiant.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les donn�es pour la table etudiant existent d�j� ou il y a une erreur lors du chargement.';
END CATCH
GO

-- R�p�tez le bloc TRY...CATCH pour chaque table

-- Insertion des donn�es dans la table cours depuis CSV
BEGIN TRY
    BULK INSERT cours
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\cours.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les donn�es ont �t� charg�es dans la table cours.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les donn�es pour la table cours existent d�j� ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des donn�es dans la table enseignant depuis CSV
BEGIN TRY
    BULK INSERT enseignant
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\enseignant.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les donn�es ont �t� charg�es dans la table enseignant.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les donn�es pour la table enseignant existent d�j� ou il y a une erreur lors du chargement.';
END CATCH
GO

-- R�p�tez le bloc TRY...CATCH pour chaque table restante (niveau, note, enseigner, inscrit)

-- Insertion des donn�es dans la table niveau depuis CSV
BEGIN TRY
    BULK INSERT niveau
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\niveau.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les donn�es ont �t� charg�es dans la table niveau.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les donn�es pour la table niveau existent d�j� ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des donn�es dans la table note depuis CSV
BEGIN TRY
    BULK INSERT note
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\note.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les donn�es ont �t� charg�es dans la table note.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les donn�es pour la table note existent d�j� ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des donn�es dans la table enseigner depuis CSV
BEGIN TRY
    BULK INSERT enseigner
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\enseigner.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les donn�es ont �t� charg�es dans la table enseigner.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les donn�es pour la table enseigner existent d�j� ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des donn�es dans la table inscrit depuis CSV
BEGIN TRY
    BULK INSERT inscrit
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\inscrit.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les donn�es ont �t� charg�es dans la table inscrit.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les donn�es pour la table inscrit existent d�j� ou il y a une erreur lors du chargement.';
END CATCH
GO
