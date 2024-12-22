const { initializeApp } = require('firebase/app');
const { getAuth } = require('firebase/auth');

const firebaseConfig = {
  apiKey: "AIzaSyCNXglOXF2mTREYGXdC__ewlLgEj4raDWQ",
  authDomain: "optima-2c6b3.firebaseapp.com",
  projectId: "optima-2c6b3",
  storageBucket: "optima-2c6b3.appspot.com",
  messagingSenderId: "890175748163",
  appId: "1:890175748163:web:bf717168afb315239e3cf6",
  measurementId: "G-S7QK2KC9NJ"
};


const app = initializeApp(firebaseConfig);
const auth = getAuth(app);

module.exports = { auth };
