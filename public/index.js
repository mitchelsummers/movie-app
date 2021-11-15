/* global Vue, axios */

// import axios from "axios";

var app = new Vue({
  el: "#app",
  data: function () {
    return {
      message: "Hello from JavaScript!",
      movies: [],
      newMovie: "",
      actors: [],
    };
  },
  created: function () {
    this.indexMovies();
  },
  methods: {
    addMovie: function () {
      this.movies.push(this.newMovie);
      this.newMovie = "";
    },
    indexMovies: function () {
      axios.get("http://localhost:3000/movies").then((response) => {
        this.movies = response.data;
        console.log(this.movies);
      });
    },
  },
});
