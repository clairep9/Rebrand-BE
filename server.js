const app = require('./app');
const cors = require('cors');

app.use(cors())

console.log('CORS')


const PORT = process.env.PORT || 5001;

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});