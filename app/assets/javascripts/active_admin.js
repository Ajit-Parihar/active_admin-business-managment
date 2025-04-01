//= require active_admin/base

document.addEventListener("DOMContentLoaded", function () {
    const adminRatio = parseFloat(document.body.dataset.adminRatio) || 0;
    const sellerRatio = parseFloat(document.body.dataset.sellerRatio) || 0;
    const userRatio = 100 - (adminRatio + sellerRatio); // Remaining %
  
    document.documentElement.style.setProperty("--admin-ratio", adminRatio);
    document.documentElement.style.setProperty("--seller-ratio", sellerRatio);
    document.documentElement.style.setProperty("--user-ratio", userRatio);
  });
  