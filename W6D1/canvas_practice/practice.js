document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas");
    const ctx = canvas.getContext('2d');

    // Rectangle
    ctx.fillStyle = 'red';
    ctx.fillRect(10, 10, 100, 50);
    
    // Circle
    ctx.beginPath();
    ctx.arc(50, 100, 20, 0, 2*Math.PI);
    ctx.strokeStyle = 'blue';
    ctx.lineWidth = 10;
    ctx.stroke();
    ctx.fillStyle = 'green';
    ctx.fill()
});
