<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

   
   <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<title></title>
<style type="text/css">
	body{

		background-image: url(./statics/img/beijing.jpg);
		background-repeat: no-repeat;
		background-size: 100%;
	}
	*{
		margin-left: 0;padding-left: 0;
	}
	#title{
		width: 560px;
		height: 321px;
		margin: 200px auto 0 auto;
	}

	.shanDeng,.shanDeng2{
		width: 858px;
		height: 858px;
		background-size: 100%;
		background-repeat: no-repeat;
		margin: 88px auto 0 auto;
	}

	.shanDeng{
		background-image: url(./statics/img/shandeng1.png);
	}
	.shanDeng2{
		background-image: url(./statics/img/shandeng2.png);
	}

	#btn .cjBtnDom,#btn .cjBtn,.shanDeng .active,.shanDeng td{
		width: 180px;
		height: 180px;
		background-repeat: no-repeat;
		background-size: 100%;
	}

	#btn.cjBtn{
		background-image: url(./statics/img/2125823302.jpg);
	}
	#btn.cjBtnDom{
		background-image: url(./statics/img/buttonDown.png);
	}


	#luck .active{
		background-image: url(./statics/img/active.png);
	}
	.shanDeng td{
		text-align: center;
		background-image: url(./statics/img/proBj.png);
	}
	.shanDeng table{
		padding-left: 63px;
		padding-top: 63px;
	}
	</style>

</head>
<body>
 
	<div id="title">
	<!-- 	<img src="./statics/img/title.png"  > -->
	</div>
	<a href="photo.jsp">相机</a>
	<audio controls>
	<source src="./statics/music/d45941c332ad8c513fe7ca5db709708f.mp3"/>
	</audio>
	<div>
	&emsp;&emsp;&emsp;&emsp;&emsp;<img  src="./statics/img/1494604085.jpg" width="200" height="200">
	&emsp;&emsp;&emsp;&emsp;&emsp;<img  src="./statics/img/1853617608.jpg" width="200" height="200">
	&emsp;&emsp;&emsp;&emsp;&emsp;<img  src="./statics/img/2125823302.jpg"width="200" height="200">
	&emsp;&emsp;&emsp;&emsp;&emsp;<img  src="./statics/img/508785852.jpg" width="200" height="200">
	&emsp;&emsp;&emsp;&emsp;&emsp;<img  src="./statics/img/watch.jpg" width="200" height="200"></hr>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a class="a" href="xiaomi.jsp">小米手机</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a class="a" href="photo.jsp">相机</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a class="a" href="iphonex.jsp">苹果手机</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a class="a" href="index.jsp">锤子</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a class="a" href="watch.jsp">手表</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	
	</div>
	<div class="shanDeng" id="deng">
		<div id="luck"><!-- luck -->
			<table>
				<tr>
					<td class="luck-unit luck-unit-0"><img src="./statics/img/huangyu.jpg" width="150" height="150"></td>
					<td class="luck-unit luck-unit-1"><img src="./statics/img/lichendaixizhong.jpg"  width="150" height="150"></td>
					<td class="luck-unit luck-unit-2"><img src="./statics/img/lichengliangpeiying.jpg" width="150" height="150"></td>
					<td class="luck-unit luck-unit-3"><img src="./statics/img/lichenlijingran.jpg"width="150" height="150"></td>
				</tr>
				<tr>
					<td class="luck-unit luck-unit-11"><img src="./statics/img/lichenpandehua.jpg" width="150" height="150"></td>
					<td rowspan="2" colspan="2" class="cjBtn" id="btn"></td>
					<td class="luck-unit luck-unit-4"><img src="./statics/img/lichenxuliang.jpg" width="150" height="150"></td>
				</tr>
				<tr>
					<td class="luck-unit luck-unit-10"><img src="./statics/img/lichenzhaozhenhai.jpg" width="150" height="150"></td>
					<td class="luck-unit luck-unit-5"><img src="./statics/img/lingchenchenhongyu.jpg" width="150" height="150"></td>
				</tr>
				<tr>
					<td class="luck-unit luck-unit-9"><img src="./statics/img/lingchenwujunrui.jpg" width="150" height="150"></td>
					<td class="luck-unit luck-unit-8"><img src="./statics/img/lingchenyaowei.jpg" width="150" height="150"></td>
					<td class="luck-unit luck-unit-7"><img src="./statics/img/lishaojie.jpg"  width="150" height="150"></td>
					<td class="luck-unit luck-unit-6"><img src="./statics/img/chenyangke.jpg" width="150" height="150"></td>
				</tr>
			</table>
		</div><!-- luckEnd -->
	</div>

    <a href="photo.jsp" ></a>
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>

	<script>
		var luck={
			index:-1,	//当前转动到哪个位置，起点位置
			count:0,	//总共有多少个位置
			timer:0,	//setTimeout的ID，用clearTimeout清除
			speed:20,	//初始转动速度
			times:0,	//转动次数
			cycle:50,	//转动基本次数：即至少需要转动多少次再进入抽奖环节
			prize:-1,	//中奖位置
			init:function(id){
				if ($("#"+id).find(".luck-unit").length>0) {
					$luck = $("#"+id);
					$units = $luck.find(".luck-unit");
					this.obj = $luck;
					this.count = $units.length;
					$luck.find(".luck-unit-"+this.index).addClass("active");
				};
			},

			
			roll:function(){
				var index = this.index;
				var count = this.count;
				var luck = this.obj;
				$(luck).find(".luck-unit-"+index).removeClass("active");
				index += 1;
				if (index>count-1) {
					index = 0;
				};
				$(luck).find(".luck-unit-"+index).addClass("active");
				this.index=index;
				return false;
			},
			stop:function(index){
				this.prize=index;
				return false;
			}
		};


		function roll(){
			luck.times += 1;
			luck.roll();
			if (luck.times > luck.cycle+10 && luck.prize==luck.index) {
				clearTimeout(luck.timer);
				luck.prize=-1;
				luck.times=0;
				click=false;
			}else{
				if (luck.times<luck.cycle) {
					luck.speed -= 10;
				}else if(luck.times==luck.cycle) {
					var index = Math.random()*(luck.count)|0;
					luck.prize = index;		
				}else{
					if (luck.times > luck.cycle+10 && ((luck.prize==0 && luck.index==7) || luck.prize==luck.index+1)) {
						luck.speed += 110;
					}else{
						luck.speed += 20;
					}
				}
				if (luck.speed<40) {
					luck.speed=40;
				};

				luck.timer = setTimeout(roll,luck.speed);
			}
			return false;
		}


	//闪灯效果
		var num = 0;
		$(".shanDeng").attr("class",function(){
			setInterval(function(){ 
				num++;
				if(num%2==0){
					$('#deng').addClass("shanDeng2");
				}else{
					$('#deng').addClass("shanDeng");
					$('#deng').removeClass('shanDeng2');
				}
			},500)
		})


		var click=false;
		window.onload=function(){
			luck.init('luck');
			$("#btn").click(function(){
				//按下弹起效果
				$("#btn").addClass("cjBtnDom");
				setTimeout(function(){	
					$("#btn").removeClass("cjBtnDom");
				},200);

				
				if(click) {
					return false;
				}
				else{
					luck.speed=100;
					roll();
					click=true;
					return false;
				}
			
			});
		};





	</script>
</body>
</html>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
