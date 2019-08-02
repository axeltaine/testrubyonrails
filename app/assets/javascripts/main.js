function bookSearch(){
    var search = document.getElementById('search').value
    document.getElementById('results').innerHTML = ""

    $.ajax({
        url: "https://www.googleapis.com/books/v1/volumes?q=" + search,
        dataType: "json",

        success: function(data) {
            for(i = 0; i < data.items.length; i++){
                results.innerHTML += "<h2>" + data.items[i].volumeInfo.title + "</h2>" + "<img src="+data.items[i].volumeInfo.imageLinks.smallThumbnail+">" + '<button id="ajout" type="button" class="btn btn-warning">' + "Ajouter" + "</button>"
            }
        },

        type: 'GET'
    });
}

document.getElementById('button').addEventListener('click', bookSearch, false)