const initProfile = () => {
  const header = document.querySelectorAll('.user-info-bar2 h3')
  console.log(header)
  if (header) {
    header.addEventListener('click', (event) => {
      event.classList.add('active');
    })
  }
};

initProfile();
