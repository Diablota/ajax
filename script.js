window.onload = function() {
  


  document.getElementById('continent').addEventListener('change', function(e){
    var valeurListeDeroulante = document.getElementById("continent").value;
    $.ajax({
      url: "controller/bubuhbu.php",
      data: "idContinent=" + valeurListeDeroulante,
      type: "GET",
      dataType : 'html',
      success: function(result){
        $("#pays").empty();
        $("#pays").append(result);
      }
    });
  });

  document.getElementById('pays').addEventListener('change', function(e){
    var valeurListeDeroulante = document.getElementById("pays").value;
    $.ajax({
      url: "controller/bubuhbu1.php",
      data: "idPays=" + valeurListeDeroulante,
      type: "GET",
      dataType : 'html',
      success: function(result){
        $("#ville").empty();
        $("#ville").append(result);
      }
    });
  });


  $('#firstName').keyup(function() {
    prenom = $('#firstName').val();
    $.ajax({
      type:"POST",
      url:"controller/verifPseudo.php",
      data:'prenom=' + prenom,
      success:function(data) {
        if(data == 1) {
          $('#erreur').show();
        } else {
          $('#erreur').hide();
        }
      }


    });
  });
}

