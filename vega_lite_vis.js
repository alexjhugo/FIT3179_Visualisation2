var vg_1 = "vega/propSymbol.vg.json";
vegaEmbed("#map", vg_1, {"actions": false}).then(function(result) {}).catch(console.error);

var vg_2 = "vega/heatmap.vg.json";
vegaEmbed("#heatmap", vg_2, {"actions": false}).then(function(result) {}).catch(console.error);

var vg_3 = "vega/groupedBar.vg.json";
vegaEmbed("#groupedbar", vg_3).then(function(result) {}).catch(console.error);

var vg_4 = "vega/chorpleth.vg.json";
vegaEmbed("#choropleth", vg_4, {"actions": false}).then(function(result) {}).catch(console.error);