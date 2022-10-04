import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// export { application }
// setTimeout(function() { 

// }, 1000);

// $(document).ready (function(){
//   $("#success-alert").hide();
//   $("#myWish").click(function showAlert() {
//      $("#success-alert").alert();
//      window.setTimeout(function () { 
//         $("#success-alert").alert('close'); 
//      }, 2000);             
//   });      
// });