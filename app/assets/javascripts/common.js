$(document).ready( function(){
	$('#projects_table').dataTable();
	$('#bugs_table').dataTable();
	 $('#bug_bug_type').on('change', function() {
    var val = $('#bug_bug_type').val();
    console.log("*************");
    if (val === 'Feature') {
      console.log(val);
      $('#type_feature').removeClass('hide_select');
      $('#type_bug').addClass('hide_select');
    } else if (val === 'Bug') {
      console.log(val);
      $('#type_bug').removeClass('hide_select');
      $('#type_feature').addClass('hide_select');
    }
  });

});

