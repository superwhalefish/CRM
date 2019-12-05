$(function(){
	flySnow();
})
function flySnow(){
	var snow = document.createElement("div");
	snow.style.cssText = 'position:absolute;color:#fff;';
	var vw = document.documentElement.clientWidth - 20,
		vh = document.documentElement.clientHeight - 5;
	setInterval(function(){
		var cloneSnow = snow.cloneNode();
		var arr = ['❄','❉','❅','❆','✻','✼','❇','❈','❊','✥','✺'],
			style = arr[Math.floor(Math.random() * 11)];
			cloneSnow.innerHTML = style;
		var startLeft = vw * Math.random(),
			endLeft = vw * Math.random();
		var startOpa = 0.8 + 0.2 * Math.random(),
			endOpa = 0.2 + 0.2 * Math.random();
		var startSize = 6 + 25 * Math.random(),
			endSize = 5 + 18 * Math.random();
		var duration = 5000 + 6000 * Math.random();
		cloneSnow.style.cssText += 'left:'+startLeft+'px;'
								 + 'top:'+-22+'px;'
								 + 'opacity:'+startOpa+";"
								 + 'font-size:'+startSize+'px;'
								 + 'transition:'+duration+'ms;';
		document.body.appendChild(cloneSnow);
		setTimeout(function(){
			cloneSnow.style.cssText += 'left:'+endLeft+'px;'
									 + 'top:'+(vh - endSize)+'px;'
									 + 'opacity:'+endOpa+';'
									 + 'font-size:'+endSize+'px;'
									 + 'transform:'+'rotateZ(720deg);';
			setTimeout(function(){
				cloneSnow.remove();
			},duration)
		},0)
	},15)
}

