
$(document).ready(function () {
    $(window).keydown(function(event){
        if(event.keyCode == 13) {
            event.preventDefault();
            return false;
        }
    });

    //console.log('localStorage["digcategory"]) ',localStorage["digcategory"]);
    var digcategory=[];
    if(!_.isUndefined(localStorage["digcategory"]))
        digcategory = JSON.parse(localStorage.getItem("digcategory"));
    else{
        var item = {};
        item.idd = 'TISSUE';item.pid='SPECIMEN';digcategory.push(item);item = {};
        item.idd = 'BRC';item.pid='SPECIMEN';digcategory.push(item);item = {};
        item.idd = 'IHC';item.pid='PATHOLOGY_EXAM';digcategory.push(item);item = {};
        item.idd = 'ISH';item.pid='PATHOLOGY_EXAM';digcategory.push(item);item = {};
        item.idd = 'PCR';item.pid='PATHOLOGY_EXAM';digcategory.push(item);item = {};
        item.idd = 'SURGERY';item.pid='SURGERY';digcategory.push(item);item = {};
        item.idd = 'BIOPSY';item.pid='BIOPSY';digcategory.push(item);item = {};
        item.idd = 'CT';item.pid='IMAGING';digcategory.push(item);item = {};
        item.idd = 'MRI';item.pid='IMAGING';digcategory.push(item);item = {};
        item.idd = 'PET-CT';item.pid='IMAGING';digcategory.push(item);item = {};
        item.idd = 'UTRASONO';item.pid='IMAGING';digcategory.push(item);item = {};
        localStorage.setItem("digcategory",JSON.stringify(digcategory));
    }
    console.log('digcategory ', digcategory);
    var cindex = [];
    var action = new Action();
    var util = new Util();
    var ds_cond = {};
    ds_cond.data = {"queryId": "selectPatientCategory"};
    ds_cond.callback = setCategory;
    action.selectList(ds_cond);
    var CATE_TREE=[];

    function setCategory(json){
        CATE_TREE = json;
        var txt = '';
        // console.log(" category rawdata is ", json);
        var data  = util.arrayToTree(json);
        // console.log('category tree data ',data);

        for (var i=0; i<data.length; i++) {
            var checked = '';
            if( _.findIndex(digcategory, function(o) {return o.idd === data[i].id;} ) !== -1){
                checked = 'checked';
            }
            txt += '<tr>' ;
            if(data[i].data.length==0) txt +='<td><input type="checkbox" id="catechk_' + data[i].id + '" ' + checked + '/></td>' ;
            else txt += '<td class="active">+</td>';
            txt+=  '<td>' + data[i].id + '</td>' +
                '<td>' + data[i].name + '</td>' +
                '</tr>';
            if(data[i].data.length>0){
                for(var j=0; j< data[i].data.length;j++){
                    checked='';
                    if( _.findIndex(digcategory, function(o) {return o.idd === data[i].data[j].id;} ) !== -1){
                        checked = 'checked';
                    }
                    txt += '<tr>' +
                        '<td><input type="checkbox" id="catechk_' + data[i].data[j].id + '" ' + checked + '/></td>' +
                        '<td>&nbsp;&nbsp;&nbsp;&nbsp;' + data[i].data[j].id + '</td>' +
                        '<td>&nbsp;&nbsp;&nbsp;&nbsp;' + data[i].data[j].name + '</td>' +
                        '</tr>';
                }
            }

        }

        //console.log('txt is ', txt);
        $("#cate_con").empty();
        $("#cate_con").append(txt);
    }

    $("#cate_con").on("click", "[id^='catechk_']",function (e) {
        //alert($(this).prop("checked"));
        var idd = this.id.split("_")[1];
        var idx = _.findIndex(digcategory, function(o) {return o.idd === idd;} );
        var pid = _.find(CATE_TREE, function(o){return o.id === idd;}).pid;
        if(idx===-1 && $(this).prop("checked")){
            var item = {};
            item.idd=idd;
            item.pid = pid;
            digcategory.push(item);
        }
        if(idx !==-1 && !$(this).prop("checked")){
            digcategory.splice(idx,1);
        }
    });

    $("#cateApply").on("click", function(e){
        localStorage.setItem("digcategory",JSON.stringify(digcategory));
        $("#contactModal .close").click();
        //console.log(digcategory);
        location.reload();
    });

    var patientView = new TimeLine();
    patientView.init();
    // var pt = new PatientViewMutationTable();
    // pt.init();

});

function tabToggle(seq,id){
    if(seq===1){
        $(".oncogenicity").addClass("enable-hover-active");
        $(".mutation-effect").removeClass("enable-hover-active");
        $("#tab1_"+id+"").show();
        $("#tab2_"+id+"").hide();
        $('.oncokb-treatment-table').show();
    }
    if(seq===2){
        $(".mutation-effect").addClass("enable-hover-active");
        $(".oncogenicity").removeClass("enable-hover-active");
        $("#tab1_"+id+"").hide();
        $("#tab2_"+id+"").show();
        $('.oncokb-treatment-table').hide();
    }
}
var toggle=false;
function levelToggle(id){
    console.log(id, toggle);
    (!toggle) ? ($("#secret1_"+id+"").show(),toggle=true, $("#ardown_"+id+"").show(),$("#arup_"+id+"").hide() ) :
        ( $("#secret1_"+id+"").hide(),toggle=false, $("#arup_"+id+"").show(),$("#ardown_"+id+"").hide() )
}

var EVA;
function pmidtooltip(id){

    console.log('id is ', id);
    console.log('EVA is ', EVA);
    var cache;
    for(var i=0;i<EVA.length;i++) {
        _.map(EVA[i], function (v, k) {
            console.log(k, id);
            if ($.trim(k) === id) {
                console.log('bingo');
                cache = v.data.treatments.sensitivity;
            }
        });
    }
    var data = cache[0];
    console.log(' datais ', data);
    var abstracts = data.abstracts;
    var articles = data.articles;
    var pmids = data.pmids;
    var description = data.description;
    var content = '<ul class="no-style-ul">';
    var abstract = '';
    var article = '';
    console.log('abstracts is ', abstracts);
    console.log('articles is ' , articles);
    if(!_.isUndefined(abstracts) && abstracts.length>0) {
        for(var i=0;i<abstracts.length;i++) {
            abstract +=
                '   <li class="list-group-item">\n' +
                '    <span className="list-group-item-title"><a href="' + abstracts[i].link + '" target="_blank">' + abstracts[i].abstract + '</a></span>\n' +
                '  </li>';
        }

    }
    if(!_.isUndefined(articles) && articles.length>0){
        for(var i=0;i<articles.length;i++){
            if(articles[i].pmid==null)continue;
            article +=
                ' <li key='+articles[i].pmid+' class="list-group-item">\n' +
                '                <a\n' +
                '                    class="list-group-item-title"\n' +
                '                    href="getNCBIlink(/pubmed/'+articles[i].pmid+')" \n' +
                '                    target="_blank"\n>' +
                '                    <b>'+articles[i].title+'</b>\n' +
                '                </a>\n' +
                '                <div class="list-group-item-content">\n' +
                '                    <span>'+articles[i].authors+''+ articles[i].reference +'.'+ articles[i].pubDate+'</span>\n' +
                // '                    <span>PMID: '+articles[i].pmid+'</span>\n' +
                '                </div>\n' +
                '                <div class="list-group-item-content">\n' +
                '                    <span>PMID: '+articles[i].pmid+'</span>\n' +
                '                </div>\n' +
                '            </li>';
        }
    }

    content+=abstract+article+'</ul>';

    console.log(id);
    //console.log(content);

    // $('#article_'+id+'').trigger('hover');
    $('#article_'+id+'').tooltipster({
        theme: 'tooltipster-shadow',
        contentAsHTML: true,
        interactive: true,
        content : content
    });
    $('#article_'+id+'').tooltipster('open');

    // new jBox('Tooltip', {
    //     //$(this).jBox('Tooltip', {
    //     attach: '#article_' + id + '',
    //     width: 350,
    //     closeOnMouseleave: true,
    //     animation: 'move',
    //     content: content,
    // });

    // $('#article_'+id+'').trigger('mouseover');
    // $('#article_'+id+'').trigger('mouseout');
    // addpmidToolTip(id, content, 100, '','qtip-light');
}
function addpmidToolTip(node, tip, showDelay, position, theme) {
    var theme = theme;
    if(_.isUndefined(theme)) theme = 'qtip-dark';
    var param = {
        content: {text: tip},
        show: {event: "mouseover"},
        hide: {fixed: true, delay: 100, event: "mouseout"},
        //style: {classes: ''+theme+' qtip-rounded'},
        style: {classes: ''+theme+' qtip-bootstrap'},
        position: {
            my: "bottom right",
            at: "top left",
            viewport: $("body")
        }
    };
    $('#'+node+'').qtip(param);
}

