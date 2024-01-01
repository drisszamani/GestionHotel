document.addEventListener("DOMContentLoaded", function() {
    const images = document.querySelectorAll('.slide-image');

    images.forEach(img => {
        const direction = img.getAttribute('data-slide-direction');
        if (direction === 'left') {
            img.classList.add('slide-from-left');
        } else if (direction === 'right') {
            img.classList.add('slide-from-right');
        }
    });
});
