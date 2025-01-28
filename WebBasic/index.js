
let loginBtn = document.getElementById("login-btn");

loginBtn.addEventListener('click',()=>{
    
    let username = document.getElementById("email");
    let password = document.getElementById("password");
    let errormsg = document.getElementById("invalid-msg");

    if(username.value != "sankey901@solutions.com"){
        errormsg.innerText = "Invalid username/email !";
        errormsg.style.display = 'block';
    }
    else if( password.value != "mindset"){
        errormsg.innerText = "Invalid password !";
        errormsg.style.display = 'block';
    }
    else{
        errormsg.style.display = 'none';
        window.location.href = 'success.html';
    }
})