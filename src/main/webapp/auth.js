function validate(event){
    event.preventDefault();
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    let name=document.getElementById("name").value.trim()
    let email=document.getElementById("email").value.trim()
    let password=document.getElementById("password").value.trim()
    if(name === ""){
        console.log("Name cannot be empty")
        return ;
    }
    if(name.length < 3){
        console.log("Name should be more than 3 characters")
        return ;
    }
    if(!emailRegex.test(email)){
        console.log("Enter valid email")
        return ;
    }
    if (password === ""){
        console.log("Password cannot be empty");
        return ;
    }
    if(password.length < 8){
        console.log("Password must be 8 characters long")
        return ;
    }
    console.log("validated")
    document.querySelector("form").submit();
}