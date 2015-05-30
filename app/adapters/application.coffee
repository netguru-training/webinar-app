`import config from '../config/environment';`
`import Firebase from 'firebase';`
`import FirebaseAdapter from 'emberfire/adapters/firebase';`

Adapter = FirebaseAdapter.extend
  firebase: new Firebase(config.firebase)


`export default Adapter;`
