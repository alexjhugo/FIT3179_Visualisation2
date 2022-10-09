var vg_1 = "../vegalite/tokyo2020.vg.json";
vegaEmbed("#map", vg_1).then(function(result) {}).catch(console.error);

var vg_2 = "../vegalite/medal_heatmap.vg.json";
vegaEmbed("#heatmap", vg_2).then(function(result) {}).catch(console.error);

var vg_3 = "../vegalite/gender_bar.vg.json";
vegaEmbed("#groupedbar", vg_3).then(function(result) {}).catch(console.error);