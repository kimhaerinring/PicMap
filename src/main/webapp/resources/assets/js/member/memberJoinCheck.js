/**
 * 
 */
 
//submit button id
const btn = document.getElementById("btn");

//input tag class
const ch = document.getElementsByClassName("ch");

//each infos' id
const memberId = document.getElementById("memberId");
const pw = document.getElementById("memberPassword");
const pwCheck = document.getElementById("memberPasswordCheck");
const memberName = document.getElementById("memberName");
const memberNickName = document.getElementById("memberNickName");
const phone = document.getElementById("memberPhone");
const email = document.getElementById("memberEmail");
const modalbtn1= document.getElementById("modalbtn1")
const modalbtn2= document.getElementById("modalbtn2")
const modalback = document.getElementsByClassName("modal-backdrop")
//form tag id
const frm = document.getElementById("frm");

//modla close 
modalbtn2.addEventListener("click",function(){
    modalbtn1.click;
})
$('.modal-backdrop').last().css("z-index", "9999");

//password validation div's id
const passwordError = document.getElementById("password-error");
btn.addEventListener("click", function() {
    passwordError.innerHTML="";
    
    //password validation
    if(pw.value=="") {
        passwordError.innerHTML="pw is required";
        pw.value="";
        pw.focus();
        return;
    } else if(pw.value.length < 4) {
        passwordError.innerHTML="pw must be over 4 characters";
        pw.focus();
        return;
    }

    if(pwchk() == -1) return;

    //id validation
    if(memberId.value=="" || pw.value=="" ||
        memberName.value=="" || phone.value=="" ||
        email.value==""
    ) {
        alert("missing information");
        return;
    } else {
        alert("로그인성공");
        frm.submit();
        return;
    }
})

memberId.addEventListener("change", function(){
    console.log(memberId.value);
    fetch("/member/idCheck?memberId="+memberId.value,{
        method:"GET" 
    })
    .then((res)=>{return res.text();})
    .then((res)=>{
        if(res == 0){
         return;
        } else {
            alert("중복된 ID 입니다");
            memberId.value="";
            memberId.focus();
        }
    })
    .catch((e)=>{
        console.log(e);
        alert("오류");
    })
});

memberNickName.addEventListener("change", function(){
    console.log(memberNickName.value);
    fetch("/member/memberNickName?memberNickName="+memberNickName.value,{
        method:"GET" 
    })
    .then((res)=>{return res.text();})
    .then((res)=>{
        if(res == 0){
         return;
        } else {
            alert("중복된 닉네임 입니다");
            memberNickName.value="";
            memberNickName.focus();
        }
    })
    .catch((e)=>{
        console.log(e);
        alert("오류");
    })
});
const passwordEqError = document.getElementById("password-eqError");

function pwchk () {
    passwordEqError.innerHTML="";
    if(pw.value != pwCheck.value) {
        passwordEqError.innerHTML="wrong password";
        passwordEqError.style.color="red";
        passwordEqError.value="";
        return -1;
    } else {
        passwordEqError.innerHTML="correct";
        passwordEqError.style.color="green";
        return 1;
    }
}

pwCheck.addEventListener("blur", pwchk());