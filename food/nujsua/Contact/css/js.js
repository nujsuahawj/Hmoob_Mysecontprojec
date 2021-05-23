var namee = document.getElementById('name');
var nameerror = document.getElementById('nameerror');
var comment = document.getElementById('comment');
var commenterror = document.getElementById('comementerror');
function checkaddcomment(){
          if(namee.value.length <10){
                    nameerror.style.display="block";
                    namee.focus();
                    return false;
          }
          if(comment.value.length <10){
                   commenterror.style.display="block";
                    comment.focus();
                    return false;
          }
                    
}
function namevalify(){
          if(namee.value.length>=10){
            nameerror.style.display="none";
            return true;
          }
        }
function commentvalify(){
          if(comment.value.length>=10){
          commenterror.style.display="none";
            return true;
          }
}
comment.addEventListener('input',namevalify);
namee.addEventListener('input',commentvalify);