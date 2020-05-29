def select_books_titles_and_years_in_first_series_order_by_year
 "SELECT books.title, books.year
  FROM books
    INNER JOIN series
    ON series.id = books.series_id
    WHERE series.id = 1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "
  SELECT name, motto
  FROM characters
  ORDER BY motto
  LIMIT 1
  ;"
end


def select_value_and_count_of_most_prolific_species
  "
  SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1  
  ;"
end

def select_name_and_series_subgenres_of_authors
  "
  SELECT authors.name, subgenres.name
  FROM authors, subgenres
  INNER JOIN series ON series.subgenre_id = subgenres.id AND series.author_id = authors.id
  ;"
end

def select_series_title_with_most_human_characters
"
SELECT series.title
 FROM series

INNER JOIN books 
 ON books.series_id = series.id

INNER JOIN character_books
 ON character_books.book_id = books.id
 
INNER JOIN characters
 ON characters.id = character_books.character_id

  WHERE species = 'human'
  GROUP BY series.title

  LIMIT 1  
;"
#you're inside a string here.. so be careful- NO DOUBLE QUOTING use single quotes for values
#ALSO, I can't see how to ORDER BY COUNT(characters.species = 'human') or whatever..
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.character_id)
  FROM characters
  INNER JOIN character_books
  ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.character_id) DESC
  ;
  "
  # so proud of myself... ::sob::
end
