import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('plant_address');
  if (addressInput) {
    console.log(addressInput)
    places({ container: addressInput });
  }
};

export { initAutocomplete };
