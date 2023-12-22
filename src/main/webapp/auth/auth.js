let form = document.getElementById("auth");
function shower(element, message) {
    const parent = element.parentElement;
    const error = parent.querySelector(".err_msg");
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
    let name=document.getElementById("name")
    let email=document.getElementById("email")
    let password=document.getElementById("Password")
    let status = false
    if(name.value === ""){
        shower(name,"Name cannot be empty")
        status = true
    }
    else if(name.value.length < 3){
        shower(name,"Name must be more than 3 character")
        status = true
    }
    else {
        showsuccess(name)
    }
    if(!emailRegex.test(email.value)){
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
    else if(password.value.length < 8){
        shower(password,"Password must be more than 8 character")
        status = true
    }
    else {
        showsuccess(password)
    }
    if(!status){
        showsuccess(password)
        console.log("validated");
        form.submit()
    }
})