<?php
if (isset($response) && is_array($response) && $response['response'] == "negative") { ?>
  <script>
    swal('Error', '<?php echo isset($response['alert']) ? $response['alert'] : 'Unknown error' ?>', 'error');
  </script>
<?php } else if (isset($response) && is_array($response) && $response['response'] == "positive") { ?>
  <script>
    swal({
      title: "Berhasil",
      text: "",
      type: "success",
      showCancelButton: false,
      confirmButtonText: "Yes",
      closeOnConfirm: false,
      closeOnCancel: true
    }, function(isConfirm) {
      if (isConfirm) {
        window.location.href = "<?php echo isset($response['redirect']) ? $response['redirect'] : '#' ?>";
      }
    });
  </script>
<?php } ?>