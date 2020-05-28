--UPDATE [tableName] SET [columnName] = [new value] WHERE [columnName] = [value];
--UPDATE [characters] SET [species] = ["Martian"] WHERE [characters.id] = [MAX];
UPDATE characters 
SET species = "Martian" 
WHERE id = (SELECT MAX(id) FROM characters);



--don't cut corners - be explicit \/
--MAX is a FUNCTION and it needs to moOOOOooove.
--this is about one table so cut out the excess 'prefixes' redundancies
