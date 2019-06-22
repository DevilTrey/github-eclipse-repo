<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1800px',
			top : '100px'
		}, 12000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		/* $('#poem-txt').fadeOut('slow'); */
/* 		$('#poem-txt').animate({
			width : '350px',
			opacity : '0.2',
			left : '1500px',
			top : '1000px'
		},10000);  */
		$('#wanderingearth-txt').fadeIn('slow');
/* 		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);  */
		$('#earth-txt').fadeIn('slow');
		$("#wandering-txt").fadeOut('slow');
		$('#tony-jpg').fadeIn('slow');
		$('#earth-png').fadeIn('slow');
		$('#waiting')[0].play();
	}
	function run1(clickword){
/* 		alert("click me !"); */
		$(clickword).animate({
			width : '350px',
			opacity : '0.2',
			left : '1500px',
			top : '1000px'
		},5000); 
	}
	function run2(clickword){
		$(clickword).animate({
			width:'350px',
			opacity:'0.2',
			left:'150px',
			top:'1000px'
		},5000);
	}
	function run3(clickword){
		$(clickword).animate({
			width:'350px',
			left:'220px',
			top:'0px'
		},5000);
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
	<span id="firstline" style="font-size: 26px; color: white">大家好，我准备设计和实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的漂亮网页！ 欢迎大家观赏,谢谢！
	</span>
	<audio id="waiting" src="/static/audio/waiting.mp3" preload="auto"></audio>
	<div id="poem-txt"	
		style="display: none; font-size: 22px; color: orange; position:absolute; left :10px;top:50px"  
		onclick="run1(this);return false">
		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: grey">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>
	<div id="wanderingearth-txt"	
		style="display: none; font-size: 22px; color: orange; position:absolute; right :10px;top:50px" 
		onclick="run2(this);return false">
		《"流浪地球"》<br /> <span style="font-size: 18px; color: grey">
			北京第三区交通委提醒您 </span><br /> <br /> 道路千万条，安全第一条 <br /> 行车不规范，亲人两行泪
	</div>
	<div id="wandering-txt"
	style=" font-size: 22px; color:red; position:absolute; right: 50px;top:300px">
	<br /><span style="font-size:30px;color:red"><a href="https://baike.baidu.com/item/流浪地球/16278407?fr=aladdin" target="_blank">流浪地球</a></span><br />
	</div>
	<div id="earth-txt"
	style=" display: none;font-size: 22px; color:red; position:absolute; right: 70px;top:500px">
	<br /><span style="font-size:30px;color:red"><a href="https://www.iqiyi.com/v_19rrfe142o.html" target="_blank">点击观看电影《流浪地球》</a></span><br />
	</div>
<!-- 	<img src=
	/> -->
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" />
	<img src="/static/imgs/timg.jpeg"
		id="tony-jpg"
		style="display:none;position:absolute;left:10px;top:30px;width:200px"/>
	<img src="/static/imgs/earth.png"
		id="earth-png"
		style="display:none;position: absolute; right: 10px; bottom: 10px; width: 200px"
		onclick="run3(this);return false"/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="https://gss3.baidu.com/6LZ0ej3k1Qd3ote6lo7D0j9wehsv/tieba-smallvideo-transcode/61990981_fd6360c7b3d2674e0b0937c34a4c1b1b_0.mp4" onended="onVideoEnd();" />
	</div>
</body>
</html>