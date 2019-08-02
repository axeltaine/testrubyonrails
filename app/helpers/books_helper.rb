module BooksHelper
    def exemple the_book
        html = "<a href='/books/#{the_book.id}'>".html_safe
        html += the_book.title
        html += the_book.image
        html += "</a>".html_safe
        html
    end
end
