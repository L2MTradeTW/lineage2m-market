
document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll("[data-coming]").forEach(el => {
    el.addEventListener("click", e => {
      e.preventDefault();
      alert("此功能將於後續版本開放。");
    });
  });
});
