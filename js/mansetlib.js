var currentM = "100"; 
var currentMkategori = "10";
var currentYazar = "100";
var currentMSagkategori = "0";
var currentMSag = "100"; 
var currentPuan = "2"; 
var imsak_interval;
var manset_interval;
var cacheTime = new Date().getTime();
var currentFontSize = 14;
var agent=navigator.userAgent.toLowerCase();
var is_iphone = ((agent.indexOf('iphone')!= -1) || (agent.indexOf('ipad')!= -1));
var currentCityCode = "TR3401";
var currenMulti = "";
var sayfaKategori = "0";

$("document").ready(function() {
akisGetir();
if(is_iphone) $('object[id^=flashBanner]').css('display', 'none');  

w = $(document).width();
h = $(document).height();
//
if (w > 1239) {
   $("#pageSkinBanner").show();
}
$(window).bind('resize',
function () {
    w = $(document).width();
    if (w > 1239) {
        $("#pageSkinBanner").show();
    } else {
        $("#pageSkinBanner").hide();
    }
});
setTimeout(function(){$("#floatingDiv").css('display', 'none')}, 10000);
});

function AnaMansetStart()
{
    var i;	
	for(i=0; i<19; i++) thumbHover(i);	
	MansetBasla();  mansetSagDegis(0);
}

function AnaStart()
{
	var i;	
	for(i=0; i<4; i++) 
	{
	    kategoriMansetHover(i, 1);
	    kategoriMansetHover(i, 2);
	    kategoriMansetHover(i, 3);
	    kategoriMansetHover(i, 4);
    }
	kategoriMansetDegis(0,1);
	kategoriMansetDegis(0,2);
	kategoriMansetDegis(0,3);
	kategoriMansetDegis(0,4);
	
       
    $("#mansetSlider .navigasyon ul.left li a").each(function (index, value) {
        //alert(index + ': ' + value); 
		if(is_iphone){
			$(value).click(function () {
			    thumbDegis(index);
			})
			$('#mansetSlider .navigasyon ul.left li:eq('+index+') a').removeAttr('href');
		}
	});

}

function KategoriStart()
{
	//KategoriManþeti JS Baþla-1
	var j;	
	for(j=0; j<6; j++) thumbHoverKategori(j);
	thumbDegisKategori(0);
	MansetBaslaKategori();
	//KategoriManþeti JS Bitir-1
	MansetSagKategoriBasla();
}

//KategoriManþeti JS Baþla-2
function MansetBaslaKategori()
{
    $("img.mansetResimKategori").hover( function() { clearInterval(manset_kategori_interval); } , function() { manset_kategori_interval = setInterval(MansetRotateKategori,6000);  });
    $("#mansetOkKat").hover( function() { clearInterval(manset_kategori_interval); } , function() { manset_kategori_interval = setInterval(MansetRotateKategori,6000);  });
    manset_kategori_interval = setInterval(MansetRotateKategori,6000); //time in milliseconds
}

function thumbHoverKategori(id)
{ 
    $('#mt' + id).hover( function() { thumbDegisKategori(id); clearInterval(manset_kategori_interval); } , function() { manset_kategori_interval = setInterval(MansetRotateKategori,6000);  });
}
 
function thumbDegisKategori(id)
{ 
    if(id != currentMkategori)
    {
         $("img.mansetResimKategori").attr({ src: $("div.mansPictKat:eq(" + id + ")").text() });
         $("#mansetLinkKategori").attr({ href: $("div.mansLinktKat:eq(" + id + ")").text() });         
         var soldanKat = (112 * id) + 0;
         $("#mansetOkKat").css('left', soldanKat + 'px');
         //$('#mt' + currentMkategori).removeClass("mansetThumb2"); $('#mt' + currentMkategori).addClass("mansetThumb");
         //$('#mt' + id).removeClass("mansetThumb"); $('#mt' + id).addClass("mansetThumb2");
         currentMkategori = id;         
         if(!is_iphone) $("#mansetLinkOk").attr({ href: $("div.mansLinktKat:eq(" + id + ")").text() });
         GelecekKat(1);
    }
}

function GelecekKat(numm)
{
    var fId = currentMkategori + numm;
    fId = fId % 6;
    $("#future" + numm).attr({ src: $("div.mansPictKat:eq(" + fId + ")").text() });
}

function MansetRotateKategori()
{
    var mId = currentMkategori + 1;
    mId = mId % 6;
    thumbDegisKategori(mId);    
}
//KategoriManþeti JS Bitir-2

//KategoriManþeti JS Bitir-2

//Kategori Manþeti SAÐ JS Baþla
function MansetSagKategoriBasla()
{
    $("#mansetSagResim").attr({ src: $(".maddeKat .sakliDiv:eq(0)").text() });
    $("#mansetSagLink").attr({ href: $(".maddeKat .sakliDiv:eq(1)").text() });
    var hoverIndex;
    $(".maddeKat").hover(
    function () {
       hoverIndex = $(".maddeKat").index(this);
       if(hoverIndex != currentMSagkategori)
       {
            $("#mansetSagResim").attr({ src: $(".maddeKat .sakliDiv:eq(" + (2 * hoverIndex) + ")").text() });
            $("#mansetSagLink").attr({ href: $(".maddeKat .sakliDiv:eq(" + ((2 * hoverIndex) + 1) + ")").text() });
            $('.maddeKat:eq('+currentMSagkategori+')').removeClass("secili");
            $('.maddeKat:eq('+hoverIndex+')').addClass("secili");
            currentMSagkategori = hoverIndex;
       }      
    },
    function () {}
    );
}
//Kategori Manþeti SAÐ JS Bitir


function MansetSagBasla()
{
    $('.madde:eq(0)').addClass("secili");
    var hoverIndex;
    var unHoverIndex;
    $(".madde").hover(
   function () {
       hoverIndex = $(".madde").index(this);
       $('.madde:eq(0)').removeClass("secili");
       
       $(".madde").each(function (i) {
           if (i != unHoverIndex){
                          $('.madde:eq('+unHoverIndex+')').removeClass("secili");
           }
       });
       $('.madde:eq('+hoverIndex+')').addClass("secili");
   },
   function () {
       unHoverIndex = $(".madde").index(this);
       $(".madde").each(function (i) {
           if (i != unHoverIndex){
                          $('.madde:eq('+unHoverIndex+')').removeClass("secili");
           }
       });
       $('.madde:eq('+unHoverIndex+')').addClass("secili");
   }
);

}

function mansetSagDegis(id)
{ 
    if(id != currentMSag)
    {
        if(id == 0) 
        {
            $("#haberSekmeleri .icerik .innerTube").html($("div.mansetSagSonDak").html()); 
            MansetSagBasla();
        }
        else $.get("/haber/incs/cokSag" + (id-1) + ".htm?dt=" + cacheTime, function(_Str){ $("#haberSekmeleri .icerik .innerTube").html(_Str); MansetSagBasla(); }); 
        $("div.haberSekmeleriMenu .hsm li:eq(" + id + ")").addClass("secili");      
        $("div.haberSekmeleriMenu .hsm li:eq(" + currentMSag + ")").removeClass("secili");      
        currentMSag = id;
         
    }
}

function kategoriMansetHover(id, sira)
{ 
    $('ul.list-links'+sira+' li:eq('+id+')').hover( function() { kategoriMansetDegis(id, sira); } , function() { });
}

function MansetBasla()
{
    thumbDegis(0);
//    $("#mansetSlider").hover( function() { clearInterval(manset_interval); } , function() { manset_interval = setInterval(MansetRotate,6000);  });
    $("div.mansetSolFlash").hover( function() { clearInterval(manset_interval); } , function() { manset_interval = setInterval(MansetRotate,6000);  });
    $("img.mansetResim").hover( function() { clearInterval(manset_interval); } , function() { manset_interval = setInterval(MansetRotate,6000);  });
    manset_interval = setInterval(MansetRotate,6000); //time in milliseconds
    //thumbDegis(0);
}



function thumbHover(id)
{ 
    $('#mansetSlider .navigasyon .left li a:eq('+id+')').hover( function() { thumbDegis(id); clearInterval(manset_interval); } , function() { manset_interval = setInterval(MansetRotate,6000);  });
}

function kategoriMansetDegis(id, sira)
{
    //alert(id + " - " + sira);
    $("#anaKategoriManset" + sira + " img.anaKategoriMansetResim").attr({ src: $("#anaKategoriManset" + sira + " div.sakliDiv div.kategoriMansetResimList:eq(" + id + ")").text() });
    $("#anaKategoriManset" + sira + " a.anaKategoriMansetLink").attr({ href: $("#anaKategoriManset" + sira + " div.sakliDiv div.kategoriMansetLinkList:eq(" + id + ")").text() });
    
    $('ul.list-links'+sira+' li').removeClass("hover"+sira)
    $('ul.list-links'+sira+' li:eq('+id+')').addClass("hover"+sira)
//    $('ul.list-links'+sira+' li:eq('+id+')').css({"background-image", "url(../images/2012/KategoriManset/altMansetBg_"+sira+".png)"})
}

function thumbDegis(id)
{ 
    if(id != currentM)
    {
        $("img.mansetResim").attr({ src: $("div.mansPict:eq(" + id + ")").text() });
        $("#mansetLink").attr({ href: $("div.mansLink:eq(" + id + ")").text() });         
       
        $('#mansetSlider .navigasyon .left li:eq('+currentM+') a').removeClass('selected');
        $('#mansetSlider .navigasyon .left li:eq('+id+') a').addClass('selected');
        
        if($("div.mansTur:eq(" + id + ")").text() == "5")
        {
            $('#mansetSlider .mansetResimYaziZemin').css("display", "block");
            $('#mansetSlider .mansetResimYaziZemin .innerTube').html($("div.mansBaslik:eq(" + id + ")").text());
        }
        else $('#mansetSlider .mansetResimYaziZemin').css("display", "none");
       

        if($("div.mansPat:eq(" + id + ")").text() == "1")
        {
            $('#mansetSlider .mansetSolFlash').css("display", "block");
        }
        else  $('#mansetSlider .mansetSolFlash').css("display", "none");

        currentM = id;         
        Gelecek(1);
        Gelecek(2);
    }
}

function Gelecek(numm)
{
    var fId = currentM + numm;
    fId = fId % 19;
    $("#future" + numm).attr({ src: $("div.mansPict:eq(" + fId + ")").text() });
}

function MansetRotate()
{
    var mId = currentM + 1;
    mId = mId % 19;
    thumbDegis(mId);    
}
