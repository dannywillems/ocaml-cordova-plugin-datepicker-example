let on_device_ready _ =
  let t = Cordova_datepicker.t () in
  let on_success date =
    Jsoo_lib.alert (Js_date.to_string date)
  in
  let on_error s =
    Jsoo_lib.alert s
  in
  t#show on_success on_error

let _ =
  Cordova.Event.device_ready on_device_ready
