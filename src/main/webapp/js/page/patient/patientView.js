var paper1 = Raphael(document.getElementByID('svg'),320,200);
var circle = paper1.cicle(50,40,10);

var elementId = document.getElementsByClassName('genomicOverviewTracksContainer')[0];
var paper = Raphael(elementId, 1120, 45);
var chmInfo = {"genomeRef":[
        {0: 0},
        {1:249250621},
        {2:243199373},
        {3:198022430},
        {4:191154276},
        {5:180915260},
        {6:171115067},
        {7:159138663},
        {8:146364022},
        {9:141213431},
        {10:135534747},
        {11:135006516},
        {12:133851895},
        {13:115169878},
        {14: 107349540},
        {15:102531392},
        {16:90354753},
        {17:81195210},
        {18:78077248},
        {19:59128983},
        {20:63025520},
        {21:48129895},
        {22:51304566},
        {23:155270560},
        {24:59373566}
    ],
    "total":3095677412,
    "perc" : [
        {0: 0},
        {1: 0.08051569586476022},
        {2: 0.15907665058739007},
        {3: 0.22304404888037474},
        {4: 0.2847928200084693 },
        {5: 0.34323407079858875},
        {6: 0.3985095547158387 },
        {7: 0.44991628798304517},
        {8: 0.4971964152445739 },
        {9: 0.5428127415622336 },
        {10: 0.5865946764869182},
        {11: 0.6302059763842087},
        {12: 0.6734442978194914},
        {13: 0.7106477472336838},
        {14: 0.7453249844625609},
        {15: 0.7784458101669932},
        {16: 0.807633203094225 },
        {17: 0.8338617790063201},
        {18: 0.8590831563040138},
        {19: 0.8781836552031542},
        {20: 0.8985428566353479},
        {21: 0.9140903083218288},
        {22: 0.9306632773919019},
        {23: 0.980820493191621 },
        {24: 1.0000000000000002}
    ]
};

var chmName =[
    '1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','X','Y'
];

var yRuler=15;
var genomeBuild = "GRCh37";
drawLine(config.wideLeftText,yRuler,25+1060,yRuler,paper,'#000',1);
var xt = [25, 110.34663761664584, 193.62124962263348, 261.42669181319724 , 326.8803892089774, 388.8281150465041, 447.42012799878904, 501.9112652620279, 552.0282001592484,
    600.3815060559676,  646.7903570761333, 693.0183349672612 , 738.850955688661, 778.2866120677048, 815.0444835303146, 850.1525587770128,
    881.0911952798785,  908.8934857466993 , 935.6281456822546,  955.8746745153435, 977.4554280334688, 993.9357268211386, 1011.503074035416 ,
    1064.6697227831182];

var m = [ 67.67331880832292, 151.98394361963966 , 227.52397071791538, 294.15354051108733, 357.8542521277408, 418.1241215226466,  474.66569663040843,
    526.9697327106381, 526.9697327106381, 623.5859315660505, 669.9043460216972, 715.9346453279611, 758.5687838781829, 796.6655477990097, 832.5985211536636 , 865.6218770284456 ,
    894.9923405132889,  922.260815714477, 945.751410098799, 966.6650512744061, 985.6955774273036, 1002.7194004282773, 1038.086398409267 ,1074.8348613915593  ];
for (var i=1; i<chmInfo.genomeRef.length; i++) {
    if (chmInfo.genomeRef[i] === 0 && genomeBuild === "GRCm38") {
        // Do not display chromosomes 20, 21 and 22 in mouse, they do not exist
        // They have length 0 in the file chromosomeSizes.json
    } else {
        //var xt = chmInfo.loc2xpixil(i,0,config);
        drawLine(xt,yRuler,xt,5,paper,'#000',1);

        //var m = chmInfo.middle(i,config);
        //console.log('chmInfo.chmName(i) ', chmInfo.chmName(i));
        p.text(m,yRuler-5,chmName[i]);
    }
}
drawLine(25+2060,yRuler,25+1060,5,paper,'#000',1);


function drawLine(x1, y1, x2, y2, p, cl, width) {
    //console.log( 'x1 ', x1 , ' y1 ', y1, ' x2 ', x2, ' y2 ',y2, ' p ', p, ' cl ', cl, ' width ', width);
    var path = "M" + x1 + " " + y1 + " L" + x2 + " " + y2;
    var line = p.path(path);
    line.attr("stroke", cl);
    line.attr("stroke-width", width);
    line.attr("opacity", 0.5);
    line.translate(0.5, 0.5);
    return line;
}

