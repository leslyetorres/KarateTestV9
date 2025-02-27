function fn() {   
    karate.configure('report', { 
        showLog: true,  // Muestra el log en el reporte
        showStats: true // Muestra las estadísticas
    });


    var env = karate.env; // get java system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
      env = 'dev'; // a custom 'intelligent' default
    }
    var config = { // base config JSON
      someUrlBase: 'https://petstore.swagger.io/v2',
      anotherUrlBase: 'https://another-host.com/v1/'
    };
    if (env == 'dev') {
      // over-ride only those that need to be
      config.someUrlBase = 'https://stage-host/v1/auth';
    } else if (env == 'e2e') {
      config.someUrlBase = 'https://e2e-host/v1/auth';
    }
    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    var config = {
      report: {
        showLog: true, // Esto muestra los logs en el reporte
        showStats: true // Esto muestra las estadísticas de ejecución en el reporte
      }
    }
    return config;
  }