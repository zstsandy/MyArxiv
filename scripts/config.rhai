let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Diffusion", "NeRF", "Transformer"];
let titles_method = ["Segmentation", "SLAM", "Self-Supervised", "implicit", "semantic"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yann LeCun", "Geoffrey Hinton"];

let conferences = [
    // AI
    "AAAI", "ICRA", "IJCAI", "IROS",
    // CV
    "3DV", "ACCV", "CVPR", "ECCV", "ICCV", "WACV",
    // ML
    "ACML", "ICLR", "ICML", "NeurIPS",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
