proc enableHDPI*() =
  dos_qapplication_enable_hdpi()
  
proc applicationDirPath*(app: QCoreApplication): string =
  let str = dos_qcoreapplication_application_dir_path()
  result = $str
  dos_chararray_delete(str)
