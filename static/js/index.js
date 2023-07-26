// PARA ELIMINAR LA NOTA
const deleteButtons = document.querySelectorAll('.btnDelete');
deleteButtons.forEach(button => {
    button.addEventListener('click', confirmDelete);
});
function confirmDelete(event) {
    event.preventDefault(); // Detener el comportamiento por defecto del enlace
    const deleteId = this.dataset.id;
    if (confirm(`¿Estás seguro que deseas eliminar el registro con ID ${deleteId}?`)) {
        window.location.href = `/delete/${deleteId}`; // Redirigir al servidor para eliminar el registro
    } else {
        // Si el usuario cancela, no se realizará la eliminación
    }
}