const initCard = () => {
  var price = document.getElementById("price-plant").innerHTML;
  //var noPlants = document.getElementById("plant-quantity-show").value;
  //var total = parseFloat(price) * noPlants;
  //price = total;
  var input = document.getElementById("plant-quantity-show");
  input.addEventListener ('click',() => {
    var noPlants = document.getElementById("plant-quantity-show").value;
    var priceDiv = document.getElementById("price-plant");
    var total = parseFloat(price) * parseInt(noPlants);
    console.log(total);
    priceDiv.innerHTML = `R$${total}`


  });
};

export { initCard };
