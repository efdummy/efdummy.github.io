// Données encodées en base64
const p1 = "cG9pc3N5"
const p2 = "MDYxMzA2MTMyOQ=="

document.getElementById("passwordForm").addEventListener("submit", function(e) {
    e.preventDefault();
    
    const inputPassword = document.getElementById("password").value;
    const inputEncoded = btoa(inputPassword);
    const resultDiv = document.getElementById("result");
    
    if (inputEncoded === p1) {
        resultDiv.className = "result success";
        resultDiv.innerHTML = `
            ✓ Mot de passe correct !
            <div class="phone-number">${atob(p2)}</div>
        `;
        resultDiv.style.display = "block";
        document.getElementById("password").value = "";
    } else {
        resultDiv.className = "result error";
        resultDiv.innerHTML = "✗ Mot de passe incorrect !";
        resultDiv.style.display = "block";
        document.getElementById("password").value = "";
    }
});
