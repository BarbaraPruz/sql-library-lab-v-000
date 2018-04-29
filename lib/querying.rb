def select_books_titles_and_years_in_first_series_order_by_year
  """SELECT books.title, books.year FROM books
      WHERE books.series_id=1
      ORDER BY (books.year);"""
end

def select_name_and_motto_of_char_with_longest_motto
  """SELECT characters.name, characters.motto FROM characters
      ORDER BY LENGTH(characters.motto) DESC LIMIT 1;"""
end


def select_value_and_count_of_most_prolific_species
  """SELECT characters.species, COUNT(characters.species) as cnt FROM characters
      GROUP BY characters.species
      ORDER BY cnt DESC LIMIT 1;"""
end

def select_name_and_series_subgenres_of_authors
  """SELECT authors.name, subgenres.name FROM authors
      INNER JOIN series ON authors.id=series.author_id
      INNER JOIN subgenres ON series.subgenre_id = subgenres.id;"""
end

def select_series_title_with_most_human_characters
  """SELECT series.title FROM series
      INNER JOIN characters ON series.id=characters.series_id
      WHERE characters.species='human'
      GROUP BY series.id
      ORDER BY COUNT(series.id) DESC LIMIT 1;"""
end

def select_character_names_and_number_of_books_they_are_in
  """SELECT characters.name, COUNT(character_books.book_id) FROM characters
      INNER JOIN character_books ON characters.id=character_books.character_id
      GROUP BY character_books.character_id
      ORDER BY COUNT(character_books.book_id) DESC,characters.name ASC;"""
end
