var vg_1 = "vega/medal_globe.vg.json";
vegaEmbed("#map", vg_1).then(function(result) {}).catch(console.error);

var vg_2 = "vega/medal_heatmap.vg.json";
vegaEmbed("#heatmap", vg_2).then(function(result) {}).catch(console.error);

var vg_3 = "vega/gender_bar.vg.json";
vegaEmbed("#groupedbar", vg_3).then(function(result) {}).catch(console.error);