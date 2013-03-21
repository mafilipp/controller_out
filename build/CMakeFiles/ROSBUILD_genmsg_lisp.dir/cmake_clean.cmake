FILE(REMOVE_RECURSE
  "../src/control_publisher/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/controller_out.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_controller_out.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
