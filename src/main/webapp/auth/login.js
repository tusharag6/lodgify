let form = document.getElementById("login");
function shower(element, message) {
    const parent = element.parentElement;
    const error = parent.querySelector(".err_msg");
    console.log("error",error,message);
    error.innerText = message;
    parent.classList.add("error");
    parent.classList.remove("success");
}
function showsuccess(element) {
    const parent = element.parentElement;
    const error = parent.querySelector(".err_msg");
    error.innerText = "";
    parent.classList.remove("error");
    parent.classList.add("success");
}
form.addEventListener('submit',(event)=>{
    event.preventDefault();
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    let email=document.getElementById("email")
    let password=document.getElementById("password")
    let status = false
    console.log(email.value);
    if(email.value === ""){
        shower(email,"Email cannot be empty")
        status = true
    }
    else if(!emailRegex.test(email.value)){
        shower(email,"Invalid Email")
        status = true
    }
    else {
        showsuccess(email)
    }
    if (password.value === ""){
        shower(password,"Password cannot be empty")
        status = true
    }
    else {
        showsuccess(password)
    }
    if(!status){
        showsuccess(password)
        console.log(email.value);
        form.submit()
    }
})