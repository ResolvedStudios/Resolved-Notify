window.addEventListener('message', function(event) {
    if (event.data.action == 'show') {
        let type = event.data.type;
        let message = event.data.message;
        let duration = event.data.duration;
        let sound = event.data.sound || 'notify'; // Default sound is 'notify'

        let notificationContainer = document.getElementById('notify-container');
        let notification = document.createElement('div');
        let icon = document.createElement('i'); 
        let messageText = document.createElement('span');
        let mark = document.createElement('div');

        notification.className = 'notification';
        notification.id = 'notification';

        // Set the icon and mark based on the notification type
        if (type == 'success') {
            icon.className = 'fas fa-check-circle'; 
            icon.style.color = 'green'; 
            mark.className = 'mark success';
            notification.classList.add('success');
        } else if (type == 'info') {
            icon.className = 'fas fa-info-circle'; 
            icon.style.color = '#1d72b8'; 
            mark.className = 'mark info';
            notification.classList.add('info');
        } else if (type == 'error') {
            icon.className = 'fas fa-exclamation-triangle'; 
            icon.style.color = 'red';
            mark.className = 'mark error';
            notification.classList.add('error');
        }

        messageText.innerText = message;

        notification.appendChild(mark);
        notification.appendChild(icon);
        notification.appendChild(messageText);

        notificationContainer.appendChild(notification);

        notificationContainer.style.display = 'block';

        playSound(sound);

        setTimeout(() => {
            notification.style.animation = 'fadeOut 0.5s forwards'; 

            setTimeout(() => {
                notificationContainer.removeChild(notification);

              
                if (notificationContainer.children.length === 0) {
                    notificationContainer.style.display = 'none';
                }
            }, 500); 
        }, duration);
    }
});

function playSound(sound) {
    if (!sound) return;
    let audio = new Audio('/html/' + sound + '.mp3');
    audio.preload = 'auto';
    audio.play().catch((error) => {
        console.error('Error playing the sound:', error.message); 
    });
}
