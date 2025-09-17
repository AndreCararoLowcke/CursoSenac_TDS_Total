const API_URL = "http://localhost:3000/reservas";
const lista = document.getElementById("lista-reservas");

async function carregarReservas() {
    lista.innerHTML = "";
    const res = await fetch(API_URL);
    const reservas = await res.json();

    reservas.forEach(r => {
        const li = document.createElement("li");
        li.textContent = `${r.nome} - ${r.data}`;
        lista.appendChild(li);
    });
}

carregarReservas();
