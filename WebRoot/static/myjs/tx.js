//蒙版状态
var openmb = true;
//蒙版控制js
var txkiss={
	init: function() {
        function n(e, t) {
            this.Cover = document.getElementById('appCover'),
            this.oLip = document.getElementById('kissLip'),
            this.isStop = !1,
            this.oStyle = ["left", "top", "opacity", t],
            this.oTips = ["请亲吻手机屏幕哦！", "请再深情一点亲吻吧！", "亲吻好像不给力哦，再试试！"],
            this.oFloor = Math.floor(Math.random() * this.oTips.length + 1) - 1,
            this.X = 0,
            this.Y = 0,
            this.N = 0,
            this.H = 0,
            this.Tx = 0,
            this.Ty = 0,
            this.max = 0
        }
        $(".app-cover").on("mousedown mousemove mouseup touchstart touchmove touchend",
        function(e) {}),
        n.prototype = {
            init: function() {
            	//console.log(document.getElementById('appCover'));
                var e = this;
                if (!e.Cover || !e.oLip) return ! 1;
                //t.disableFlipPage();
                var n = /android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase()),
                r = n ? "touchstart": "mousedown";
                this.Cover.addEventListener("touchstart",
                function(t) {
                    t.preventDefault(),
                    e.toTouchStart(e, t)
                },
                !1),
                this.Cover.addEventListener("touchmove",
                function(t) {
                    t.preventDefault(),
                    e.toTouchMove(e, t)
                },
                !1),
                this.Cover.addEventListener("touchend",
                function(t) {
                    t.preventDefault(),
                    e.toTouchEnd(e, t)
                },
                !1),
                n || this.Cover.addEventListener("click",
                function(t) {
                    t.preventDefault(),
                    e.toOpen(e, t)
                },
                !1)
					
            },
            toTouchStart: function(e, t) {
                var n = e;
                n.isStop = !0,
                t.preventDefault(),
                n.oFloor = Math.floor(Math.random() * n.oTips.length + 1) - 1,
                n.Tx = n.oLip.offsetLeft,
                n.Ty = n.oLip.offsetTop,
                n.X = t.touches[0].pageX,
                n.Y = t.touches[0].pageY,
                n.oLip.style[n.oStyle[0]] = t.touches[0].pageX + "px",
                n.oLip.style[n.oStyle[1]] = t.touches[0].pageY + "px"
            },
            toTouchMove: function(e, t) {
                var n = e;
                t.preventDefault();
                if (!n.isStop) return ! 1;
                n.N = t.touches[0].pageX - n.X,
                n.H = t.touches[0].pageY - n.Y,
                n.oLip.style[n.oStyle[0]] = t.touches[0].pageX + "px",
                n.oLip.style[n.oStyle[1]] = t.touches[0].pageY + "px",
                n.max = t.touches.length
            },
            toTouchEnd: function(n, r) {
                var i = n;
                return r.preventDefault(),
                i.max <= 1 ? !1 : (i.oLip.style[i.oStyle[2]] = 1, setTimeout(function() {
                    i.oLip.style.display = "none";
                    i.Cover.style[i.oStyle[1]] = "-100%";
                    $(".m-animationBox").addClass("m-scale");
                    $(".toour_wedding").addClass("toour_show");
                    $(".ey_love").addClass("ey_show");
                    $(".m-foregroundImg").show();
                    $(".tit_cir").addClass("cover");
                    $(".u-guideTop").show();
                    openmb=false;
                    appstart();
                },
                1500), i.max = 0, i.isStop = !1, !1)
            },
            toOpen: function(n, r) {
                var i = n;
                return r.preventDefault(),
                i.oLip.style[i.oStyle[2]] = 1,
                setTimeout(function() {
                    i.oLip.style.display = "none";
                    i.Cover.style[i.oStyle[1]] = "-100%";
                    $(".m-animationBox").addClass("m-scale");
                    $(".toour_wedding").addClass("toour_show");
                    $(".ey_love").addClass("ey_show");
                    $(".m-foregroundImg").show();
                    $(".tit_cir").addClass("cover");
                    $(".u-guideTop").show();
                    openmb=false;
                    appstart();
                },
                1500),
                i.max = 0,
                i.isStop = !1,
                !1
            }
        };
        var r = new n("appCover", "kissLip");
        r.init();
    }
};

var txguaguaka={
		 
    init: function() {
        function n(e, t, n, r, i, s) {
            this.conId = e,
            this.conNode = document.getElementById(this.conId),
            this.background = null,
            this.backCtx = null,
            this.mask = null,
            this.maskCtx = null,
            this.lottery = null,
            this.lotteryType = "image",
            this.cover = t || "#000",
            this.coverType = n,
            this.pixlesData = null,
            this.width = r,
            this.height = i,
            this.lastPosition = null,
            this.drawPercentCallback = s,
            this.vail = !1
        }
        n.prototype = {
            createElement: function(e, t) {
                var n = document.createElement(e);
                for (var r in t) n.setAttribute(r, t[r]);
                return n
            },
            getTransparentPercent: function(e, t, n) {
                var r = e.getImageData(0, 0, t, n),
                i = r.data,
                s = [];
                for (var o = 0,
                u = i.length; o < u; o += 4) {
                    var a = i[o + 3];
                    a < 128 && s.push(o)
                }
                return (s.length / (i.length / 4) * 100).toFixed(2)
            },
            resizeCanvas: function(e, t, n) {
                e.width = t,
                e.height = n,
                e.getContext("2d").clearRect(0, 0, t, n)
            },
            resizeCanvas_w: function(e, t, n) {
                e.width = t,
                e.height = n,
                e.getContext("2d").clearRect(0, 0, t, n),
                this.vail ? this.drawLottery() : this.drawMask()
            },
            drawPoint: function(e, t, n) {
                this.maskCtx.beginPath(),
                this.maskCtx.arc(e, t, 30, 0, Math.PI * 2),
                this.maskCtx.fill(),
                this.maskCtx.beginPath(),
                this.maskCtx.lineWidth = 60,
                this.maskCtx.lineCap = this.maskCtx.lineJoin = "round",
                this.lastPosition && this.maskCtx.moveTo(this.lastPosition[0], this.lastPosition[1]),
                this.maskCtx.lineTo(e, t),
                this.maskCtx.stroke(),
                this.lastPosition = [e, t],
                this.mask.style.zIndex = this.mask.style.zIndex == 20 ? 21 : 20
            },
            bindEvent: function() {
                var e = this,
                t = /android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase()),
                n = t ? "touchstart": "mousedown",
                r = t ? "touchmove": "mousemove";
                if (!t) {
                    var i = !1;
                    e.conNode.addEventListener("mouseup",
                    function(t) {
                        t.preventDefault(),
                        i = !1;
                        var n = e.getTransparentPercent(e.maskCtx, e.width, e.height);
                        n >= 50 && typeof e.drawPercentCallback == "function" && e.drawPercentCallback()
                    },
                    !1)
                } else e.conNode.addEventListener("touchmove",
                function(e) {
                    i && e.preventDefault(),
                    e.cancelable ? e.preventDefault() : window.event.returnValue = !1
                },
                !1),
                e.conNode.addEventListener("touchend",
                function(t) {
                    i = !1;
                    var n = e.getTransparentPercent(e.maskCtx, e.width, e.height);
                    n >= 50 && typeof e.drawPercentCallback == "function" && e.drawPercentCallback()
                },
                !1);
                this.mask.addEventListener(n,
                function(n) {
                    n.preventDefault(),
                    i = !0;
                    var r = t ? n.touches[0].pageX: n.pageX || n.x,
                    s = t ? n.touches[0].pageY: n.pageY || n.y;
                    e.drawPoint(r, s, i)
                },
                !1),
                this.mask.addEventListener(r,
                function(n) {
                    n.preventDefault();
                    if (!i) return ! 1;
                    n.preventDefault();
                    var r = t ? n.touches[0].pageX: n.pageX || n.x,
                    s = t ? n.touches[0].pageY: n.pageY || n.y;
                    e.drawPoint(r, s, i)
                },
                !1)
            },
            drawLottery: function() {
                if (this.lotteryType == "image") {
                    var e = new Image,
                    t = this;
                    e.onload = function() {
                        this.width = t.width,
                        this.height = t.height,
                        t.resizeCanvas(t.background, t.width, t.height),
                        t.backCtx.drawImage(this, 0, 0, t.width, t.height),
                        t.drawMask()
                    },
                    e.src = this.lottery
                } else if (this.lotteryType == "text") {
                    this.width = this.width,
                    this.height = this.height,
                    this.resizeCanvas(this.background, this.width, this.height),
                    this.backCtx.save(),
                    this.backCtx.fillStyle = "#FFF",
                    this.backCtx.fillRect(0, 0, this.width, this.height),
                    this.backCtx.restore(),
                    this.backCtx.save();
                    var n = 30;
                    this.backCtx.font = "Bold " + n + "px Arial",
                    this.backCtx.textAlign = "center",
                    this.backCtx.fillStyle = "#F60",
                    this.backCtx.fillText(this.lottery, this.width / 2, this.height / 2 + n / 2),
                    this.backCtx.restore(),
                    this.drawMask()
                }
            },
            drawMask: function() {
                if (this.coverType == "color") this.maskCtx.fillStyle = this.cover,
                this.maskCtx.fillRect(0, 0, this.width, this.height),
                this.maskCtx.globalCompositeOperation = "destination-out";
                else if (this.coverType == "image") {
                    var e = new Image,
                    t = this;
                    e.onload = function() {
                        t.resizeCanvas(t.mask, t.width, t.height);
                        var e = /android/i.test(navigator.userAgent.toLowerCase());
                        t.maskCtx.globalAlpha = .98,
                        t.maskCtx.drawImage(this, 0, 0, this.width, this.height, 0, 0, t.width, t.height),
                        t.maskCtx.globalCompositeOperation = "destination-out"
                    },
                    e.src = this.cover
                }
            },
            init: function(e, t) {
                e && (this.lottery = e, this.lottery.width = this.width, this.lottery.height = this.height, this.lotteryType = t || "image", this.vail = !0),
                this.vail && (this.background = this.background || this.createElement("canvas", {
                    style: "position:fixed;left:50%;top:0;width:100%;height:100%;margin-left:-50%;background-color:transparent;display:none; "
                })),
                this.mask = this.mask || this.createElement("canvas", {
                    style: "position:fixed;left:50%;top:0;width:100%;height:100%;margin-left:-50%;background-color:transparent;"
                }),
                this.mask.style.zIndex = 20,
                this.conNode.innerHTML.replace(/[\w\W]| /g, "") || (this.vail && this.conNode.appendChild(this.background), this.conNode.appendChild(this.mask), this.bindEvent()),
                this.vail && (this.backCtx = this.backCtx || this.background.getContext("2d")),
                this.maskCtx = this.maskCtx || this.mask.getContext("2d"),
                this.vail ? this.drawLottery() : this.drawMask();
                var n = this;
                window.addEventListener("resize",
                function() {
                    n.width = document.documentElement.clientWidth,
                    n.height = document.documentElement.clientHeight,
                    n.resizeCanvas_w(n.mask, n.width, n.height)
                },
                !1);
                $(".cover-background-bg").show();
            }
        };
        var r = "lotteryContainer",i = $("#" + r);
        if (! (i.length > 0)) return ! 1;
        var s = i.find(".cover-lottery").attr("src"),
        o = i.find(".cover-background").attr("src"),
        u = function() {
            i.hide();
            openmb=false;
            appstart();
        };
        if (s) {
            var a = new n(r, s, "image", window.innerWidth, window.innerHeight, u);
            a.init(o, "image");
        }
    }  
};

var txfingerprint={
	init:function(){
		if (0 != $(".page-fingerprint").length){
	        var item;
	        var node;
	        var scrollIntervalId;
	        var i = 1138;
	        var show = true;
	        $(function() {
	            var device = (/android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase()));
	            var touchStartEvent = device ? "touchstart" : "mousedown";
	            var stopEvent = device ? "touchend" : "mouseup";

	            $("#finger_print_zw").on(touchStartEvent, function(e) {
	                show = true;
	                i = 1138;
	                $("#finger_print_line").show();
	                $("#finger_print_scaninfo").html("扫描中...");
	                $("#finger_print_line").animate({
	                    marginBottom : "95px"
	                }, 2E3, function() {
	                    if(show){
	                    	
	                        $("#finger_print_zw").unbind();
	                      	$("#finger_print_scaninfo").html("扫描成功");
	                      	openmb=false;
                            setTimeout(function(){
                            	appstart();
	                      	},1000);
	                        
	                    }
	                });
			if(!/opera mini/i.test(navigator.userAgent.toLowerCase())){
				e.preventDefault();
			}
	            });
	            $("#finger_print_zw").on(stopEvent, function() {
	            	console.log(1);
	                $("#finger_print_line").hide();
	                //$("#app_coveretc").hide();
	                $("#finger_print_line").stop(true);
	                show = false;
	                $("#finger_print_line").css("marginBottom",'0px');
	                //$("#finger_print_scaninfo").hide();
	                $("#finger_print_scaninfo").html("扫描失败！请重新扫描");
	                //$("#finger_print_scaninfo").fadeIn();
	            });
	        });
	    }
	}
};

var txsandian={
    init: function(item) {
     	var ttt1=$('#touch2_2');
	    var ttt2=$('#touch1_1');
	    var ttt3=$('#touch3_3');
	    var r=3,n=4;
	    var u = _y_a = _i_a = 0;
	    if(item==1){
	      ttt1.addClass('touch-11');
	      var setInterOne = setInterval(function() {
	                u >= n && (u = 0, _y_a = _y_a >= r ? 0 : _y_a += 1);
	                ttt1.css("-webkit-mask-position", $(window).width() * -u + "px " + -_y_a * $(window).height() +"px");
	                u += 1;
	                _i_a++;
	                _i_a >= 12 && (clearInterval(setInterOne));
	            },30);   
	    }else if(item==2){
	      ttt2.addClass('touch-22');
	      var setInterTwo = setInterval(function() {
	                u >= n && (u = 0, _y_a = _y_a >= r ? 0 : _y_a += 1);
	                ttt2.css("-webkit-mask-position", $(window).width() * -u - 20 + "px " +  -_y_a*$(window).height() +"px");
	                u += 1;
	                _i_a++;
	                _i_a >= 12 && (clearInterval(setInterTwo));
	            },30); 
	    }else{
	      ttt3.addClass('touch-33');
	      var setInterSea = setInterval(function() {
	                u >= n && (u = 0, _y_a = _y_a >= r ? 0 : _y_a += 1);
	                ttt3.css("-webkit-mask-position", $(window).width() * -u +60+ "px " + -_y_a * $(window).height() + "px");
	                u += 1;
	                _i_a++;
	                _i_a >= 12 && (clearInterval(setInterSea));
	            },30); 
	    }

	    if(ttt1.hasClass('touch-11') && ttt2.hasClass('touch-22') && ttt3.hasClass('touch-33')){
	      setTimeout(function(){
	          $("#m-mask").animate({opacity:0},1000,function(){
	              $(this).css({display:"none"});
	          });
	      },1000);
          openmb=false;
	      setTimeout(appstart,3000);
	    }
    }
};

var txyaoyiyao={
	yaoyiyaokaiguan: true,
	SHAKE_THRESHOLD:5000,
	last_update:0,
	yiy_x :0,
	yiy_y :0,
	yiy_z :0,
	yiy_last_x :0,
	yiy_last_y :0,
	yiy_last_z :0,
	init:function(){
		if (window.DeviceMotionEvent) {
	        window.addEventListener('devicemotion', function(eventData){
	        	if(txyaoyiyao.yaoyiyaokaiguan){
				    var acceleration = eventData.accelerationIncludingGravity;
				    var curTime = new Date().getTime();
				    if ((curTime - txyaoyiyao.last_update) > 100) {
				        var diffTime = curTime - txyaoyiyao.last_update;
				        txyaoyiyao.last_update = curTime;
				        txyaoyiyao.yiy_x = acceleration.x;
				        txyaoyiyao.yiy_y = acceleration.y;
				        txyaoyiyao.yiy_z = acceleration.z;
				        var speed = Math.abs(txyaoyiyao.yiy_x + txyaoyiyao.yiy_y + txyaoyiyao.yiy_z - txyaoyiyao.yiy_last_x - txyaoyiyao.yiy_last_y - txyaoyiyao.yiy_last_z) / diffTime * 10000;

				        if (speed > txyaoyiyao.SHAKE_THRESHOLD) {
				            //alert("摇动了");
                            openmb=false;
				            appstart();
				            txyaoyiyao.yaoyiyaokaiguan=false;
				        }else{
				          //alert("使劲");
				        }
				        txyaoyiyao.yiy_last_x = txyaoyiyao.yiy_x;
				        txyaoyiyao.yiy_last_y = txyaoyiyao.yiy_y;
				        txyaoyiyao.yiy_last_z = txyaoyiyao.yiy_z;
				    }
				  }
	        }, false);
	    } 
	}
};

var txring={
    status:0,
    init:function(){
            
            $("#slider").draggable({
                axis: 'x',
                containment: 'parent',
                drag: function(event, ui) {
                    if (ui.position.left > 188) {
                        txring.status = 1;
                        $("#slider").css("pointer-events","none");
                        $("#slider").fadeOut();
                        $("#slider_r2").fadeOut();
                        $(".mb-alert").css("cssText","display: block!important;position: absolute;"); 
                        openmb=false;
                        appstart();
                        $(".mb-alert").removeClass('f-hide');
                        $(".mb-alert").css("cssText","position: absolute;z-index: 1000;");
                        setTimeout(function(){
                             $(".mb-alert").fadeOut(3000);   
                        },1000);
                        
                    } else {
                        // Apparently Safari isn't allowing partial opacity on text with background clip? Not sure.
                        // $("h2 span").css("opacity", 100 - (ui.position.left / 5))
                    }
                },
                stop: function(event, ui) {
                    if (ui.position.left < 190) {
                        $(this).animate({
                            left: 0
                        })
                    }
                }
            });
            

            // The following credit: http://www.evanblack.com/blog/touch-slide-to-unlock/
            
            $('#slider')[0].addEventListener('touchmove', function(event) {
                event.preventDefault();
                var el = event.target;
                var touch = event.touches[0];
                curX = touch.pageX - this.offsetLeft - 45;
                if(curX <= 0) return;
                if(curX > 189){
                    txring.status = 1;
                    $("#slider").css("pointer-events","none");
                    $("#slider").fadeOut();
                    $("#slider_r2").fadeOut();
                    $(".mb-alert").css("cssText","display: block!important;position: absolute;"); 
                    openmb=false;
                    appstart();
                    $(".mb-alert").removeClass('f-hide');
                    $(".mb-alert").css("cssText","position: absolute;z-index: 1000;");
                    setTimeout(function(){
                         $(".mb-alert").fadeOut(3000);   
                    },1000);
                        
                   
                }else{
                    el.style.webkitTransform = 'translateX(' + curX + 'px)';    
                }

            }, false);
            
            $('#slider')[0].addEventListener('touchend', function(event) {  
                if(txring.status){
                    $("#slider").css("pointer-events","none");
                                        
                }else{
                    this.style.webkitTransition = '-webkit-transform 0.3s ease-in';
                    this.addEventListener( 'webkitTransitionEnd', function( event ) { this.style.webkitTransition = 'none'; }, false );
                    this.style.webkitTransform = 'translateX(0px)';
                }
                
            }, false);

      

    }
}

var qjpic={
	autotype : 0,
	autopicfuncjinc :0,
	autopicfuncjincc:0,
	//相册自动播放
	wautopic:function(){
		if($('.fenruimg').attr('class').indexOf("item_show")>0){
			if(qjpic.autopicfuncjincc==3){
				if(qjpic.autotype%2){
		            $("#photo_btn_left").click();    
		        }else{
		            $("#photo_btn_right").click();
		        }
		        qjpic.autotype++;	
			}else{
				qjpic.autopicfuncjincc++;
			}
		}else{
			qjpic.autopicfuncjincc=0;
		}
	},
	/*相册控制事件绑定*/
	bindpic:function (){
		$("#photo_btn_right").on("click", function(e) {
	    	qjpic.photo_btn_right();
	    });
	    $("#photo_btn_left").on("click", function(e) {
	    	qjpic.photo_btn_left();
	    });

	    $("#photodiv").on("touchstart", function(e) {
			e.preventDefault();
	        startX = e.originalEvent.changedTouches[0].pageX,
	        startY = e.originalEvent.changedTouches[0].pageY;
	    });
	    $("#photodiv").on("touchend", function(e) {
	        e.preventDefault();
	        moveEndX = e.originalEvent.changedTouches[0].pageX,
	        moveEndY = e.originalEvent.changedTouches[0].pageY,
	        X = moveEndX - startX,
	        Y = moveEndY - startY;
	      	//console.log(X);
	        if ( X > 100 ) {
	            $("#photo_btn_right").click();
	        }else if ( X < -100 ) {
	            $("#photo_btn_left").click();
	        }
	    });
	},
	photo_btn_right:function(){
		scoll_sta = 0;
		var ele = jQuery('#Gallery_main li:first');
		var ld0 = jQuery('#Gallery_main li:eq(0)').find('img');

		if (ld0.attr('bgsrc')) {
			ld0.attr('src', ld0.attr('bgsrc'));
			ld0.removeAttr('bgsrc');
		}
		var ld = jQuery('#Gallery_main li:eq(1)').find('img');
		if (ld.attr('bgsrc')) {
			ld.attr('src', ld.attr('bgsrc'));
			ld.removeAttr('bgsrc');
		}
		var ld2 = jQuery('#Gallery_main li:eq(2)').find('img');
			if (ld2.attr('bgsrc')) {
			ld2.attr('src', ld2.attr('bgsrc'));
			ld2.removeAttr('bgsrc');
		}

		var ld0_ = jQuery('#Gallery_main li:eq(1)').find('span').addClass('imgtexth');
		var ld_ = jQuery('#Gallery_main li:eq(0)').find('span').removeClass('imgtexth');
		var ld2_ = jQuery('#Gallery_main li:eq(2)').find('span').removeClass('imgtexth');

		ele.addClass('z-hideToRight');

		setTimeout(function (){
			ele.remove().appendTo('#Gallery_main');//.css('left', '0').css('opacity', '1');
			jQuery("#Gallery_main li").each(function(){
				jQuery(this).removeClass('z-hideToRight');
				jQuery(this).removeClass('z-hideToLeft');
			}); 
		},700);                
	},
	photo_btn_left:function(){
		scoll_sta = 0;
		var ele = jQuery('#Gallery_main li:first');
		var ld0 = jQuery('#Gallery_main li:eq(0)').find('img');
		if (ld0.attr('bgsrc')) {
			ld0.attr('src', ld0.attr('bgsrc'));
			ld0.removeAttr('bgsrc');
		}
		var ld = jQuery('#Gallery_main li:eq(1)').find('img');
		if (ld.attr('bgsrc')) {
			ld.attr('src', ld.attr('bgsrc'));
			ld.removeAttr('bgsrc');
		}
		var ld2 = jQuery('#Gallery_main li:eq(2)').find('img');
		if (ld2.attr('bgsrc')) {
			ld2.attr('src', ld2.attr('bgsrc'));
			ld2.removeAttr('bgsrc');
		}


		var ld0_ = jQuery('#Gallery_main li:eq(1)').find('span').addClass('imgtexth');
		var ld_ = jQuery('#Gallery_main li:eq(0)').find('span').removeClass('imgtexth');
		var ld2_ = jQuery('#Gallery_main li:eq(2)').find('span').removeClass('imgtexth');

		ele.addClass('z-hideToLeft');

		setTimeout(function (){
			ele.remove().appendTo('#Gallery_main');//.css('left', '0').css('opacity', '1');
			jQuery("#Gallery_main li").each(function(){
				jQuery(this).removeClass('z-hideToLeft');
				jQuery(this).removeClass('z-hideToRight');
			});   
		},700);
	},
	photo_init:function(){
        //如果开启了相册
        if($("#Gallery_main")[0]){
            //绑定相册滑动控制
            qjpic.bindpic();
            //相册自动播放程序
            qjpic.autopicfuncjinc = setInterval('qjpic.wautopic()',3300);
        }
        //如果存在3D相册
        $(document).ready(function() {
            if($(".3dimagetx")[0]){
                image_3d();
            }
        }); 
	}
};



function inc(url){ 
    var body=document.getElementsByTagName("body")[0],
    js=document.createElement("script");
    js.type="text/javascript";
    js.src=url;body.appendChild(js);
}

/**页面特效 js */
const NUMBER_OF_LEAVES = 25;
function initf(){
    var container = document.getElementById('leafContainer');
    if(container!=null){
     for (var i = 0; i < NUMBER_OF_LEAVES; i++) {
          container.appendChild(createALeaf());
      } 
    }
}
function randomInteger(low, high){
    return low + Math.floor(Math.random() * (high - low));
}
function randomFloat(low, high){
    return low + Math.random() * (high - low);
}
function pixelValue(value){
    return value + 'px';
}
function durationValue(value){
    return value + 's';
}
function createALeaf(){
    var leafDiv = document.createElement('div');
    var image = document.createElement('img');
    image.src = tximgurl+'css/wap/texxiao/'+texiao+'/' +texiao+ randomInteger(1, 5) + '.png';
    leafDiv.style.top = "-30px";
    leafDiv.style.left = pixelValue(randomInteger(0, 500));
    var spinAnimationName = (Math.random() < 0.5) ? 'clockwiseSpin' : 'counterclockwiseSpinAndFlip';
    leafDiv.style.webkitAnimationName = 'fade, drop';
    image.style.webkitAnimationName = spinAnimationName;
    var fadeAndDropDuration = durationValue(randomFloat(5, 11));
    var spinDuration = durationValue(randomFloat(4, 8));
    leafDiv.style.webkitAnimationDuration = fadeAndDropDuration + ', ' + fadeAndDropDuration;
    var leafDelay = durationValue(randomFloat(0, 5));
    leafDiv.style.webkitAnimationDelay = leafDelay + ', ' + leafDelay;
    image.style.webkitAnimationDuration = spinDuration;

    leafDiv.appendChild(image);
    return leafDiv;
}
