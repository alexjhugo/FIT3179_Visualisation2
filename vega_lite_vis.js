var vg_1 = "tokyo2020.vg.json";
vegaEmbed("#map", vg_1).then(function(result) {}).catch(console.error);

var vg_2 = "medal_heatmap.vg.json";
vegaEmbed("#heatmap", vg_2).then(function(result) {}).catch(console.error);