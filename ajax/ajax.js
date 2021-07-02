var container = document.querySelector('.small-container')
var products
function fetchJsonData(number) {
    var xhr = new XMLHttpRequest()
    var url = `ajax/products${number}.json`
    xhr.open('GET', url, false)
    xhr.onload = function () {
        products = JSON.parse(this.response)
    }
    xhr.send()
    for (let i = 0; i < products.length; i++) {
        var rating = generateStars(products[i].rating)
        var temp = `<div class="col1">
                            <a href="${products[i].url}">
                                <img src="${products[i].img}" alt="Tinytanmemonotes">
                            </a>
                            <h4>${products[i].name}</h4>
                            <div class="rating">
                                ${rating}
                            </div>
                            <p>Rs ${products[i].price}/-</p>
                            </div>`
        container.innerHTML += temp
    }
    if (number == 2) {
        document.querySelector('#loadMoreProducts').style.display = 'none'
    }
}


function generateStars(number) {
    var string = ''
    for (let i = 0; i < parseInt(number); i++)
        string += `<i class="fas fa-star"></i>`
    if (number != 5) {
        if (number % 1 != 0)
            string += `<i class="fas fa-star-half-alt"></i>`
        for (let i = 0; i < parseInt(5 - number); i++)
            string += `<i class="far fa-star"></i>`
    }
    return string
}

fetchJsonData(1)






