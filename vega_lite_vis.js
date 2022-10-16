var vg_1 = "vega/globe.vg.json";
vegaEmbed("#map", vg_1).then(function(result) {}).catch(console.error);

var vg_2 = "vega/heatmap.vg.json";
vegaEmbed("#heatmap", vg_2).then(function(result) {}).catch(console.error);

var vg_3 = "vega/groupedBar.vg.json";
vegaEmbed("#groupedbar", vg_3).then(function(result) {}).catch(console.error);

var vg_4 = "vega/choropleth.vg.json";