define(['settings'], function (Settings) {
  return new Settings({
    //elasticsearch: "https://" + window.location.hostname + ":443",
    elasticsearch: "http://" + window.location.hostname,
    default_route: '/dashboard/file/nginx.json',
    panel_names: [
      'histogram',
      'map',
      'goal',
      'table',
      'filtering',
      'timepicker',
      'text',
      'hits',
      'column',
      'trends',
      'bettermap',
      'query',
      'terms',
      'stats',
      'sparklines'
    ]
  });
});
