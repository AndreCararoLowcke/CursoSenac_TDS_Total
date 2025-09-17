const API_URL = "http://localhost:3000/reservas";
const form = document.getElementById("form-reserva");
const lista = document.getElementById("lista-reservas");

// Carregar reservas ao abrir a página
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

// Enviar reserva para o servidor
form.addEventListener("submit", async (e) => {
  e.preventDefault();

  const reserva = {
    nome: document.getElementById("nome").value,
    data: document.getElementById("data").value
  };

  await fetch(API_URL, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(reserva)
  });

  form.reset();
  carregarReservas();
});

// Inicializar
carregarReservas();
