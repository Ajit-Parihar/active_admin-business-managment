document.addEventListener("DOMContentLoaded", function() {
    const donut = document.querySelector('.donut');
  
    if (donut) {
      const ratioAdmin = parseFloat(donut.dataset.admin);
      const ratioSeller = parseFloat(donut.dataset.seller);
      const ratioUser = parseFloat(donut.dataset.user);
  
      const donutStyle = `conic-gradient(
        #ff5733 ${ratioAdmin}%, 
        #4caf50 ${ratioAdmin}% ${ratioAdmin + ratioSeller}%, 
        #2196f3 ${ratioAdmin + ratioSeller}% 100%
      )`;
  
      donut.style.background = donutStyle;
    }
  });
  