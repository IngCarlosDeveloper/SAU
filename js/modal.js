const Abrir_Modal = document.querySelector("#Abrir_Popup");
const Cerrar_Modal = document.querySelector("#Cerrar_Popup");
const Modal = document.querySelector("#modal")

Abrir_Modal.addEventListener("click", ()=>{
    Modal.showModal();
})

Cerrar_Modal.addEventListener("click", ()=>{
    Modal.close();
})