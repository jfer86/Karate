function fn() {
  var env = karate.env
  karate.log("karate.env system property was:", env)
  if (!env) {
    env = "dev"
  }
  var config = {
    env: env
    //baseUrl: 'http://localhost:8080'
  }
  if (env == "dev") {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == "e2e") {
    // customize
  }
  karate.configure('ssl', true);
  karate.configure('connectTimeout', 60000);
  karate.configure('readTimeout', 60000);
  return config
}
