var searchBox = document.querySelector('.search-box input[type="text"]');
var autocompleteBox = document.querySelector('.autocomplete');

// List of search suggestions
var suggestions = [
  {
    title: 'C',
    link: 'https://www.interviewbit.com/blog/c-programming-books/'
  },
  {
    title: 'PYTHON',
    link: 'https://realpython.com/best-python-books/'
  },
  {
    title: 'JAVA',
    link: 'https://www.geeksforgeeks.org/best-books-to-learn-java-for-beginners-and-experts/'
  },
  {
    title: 'JAVASCRIPT',
    link: 'https://www.interviewbit.com/blog/best-javascript-books/'
  }
];

searchBox.addEventListener('keyup', function(event) {
  var inputValue = event.target.value;
  autocompleteBox.innerHTML = '';

  if (inputValue) {
    // Filter the suggestions that match the search input
    var filteredSuggestions = suggestions.filter(function(suggestion) {
      return suggestion.title.toLowerCase().includes(inputValue.toLowerCase());
    });

    // Generate the HTML for the autocomplete suggestions
    filteredSuggestions.forEach(function(suggestion) {
      var suggestionLink = document.createElement('a');
      suggestionLink.setAttribute('href', suggestion.link);
      suggestionLink.textContent = suggestion.title;
      autocompleteBox.appendChild(suggestionLink);
    });
  }
});
