const API_URL = "http://localhost:3000/reservas";
const form = document.getElementById("form-reserva");

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

    alert("Reserva feita com sucesso!");
    form.reset();

    // Redireciona para a lista de reservas
    window.location.href = "reserva.html";
});
