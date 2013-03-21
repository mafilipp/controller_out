
(cl:in-package :asdf)

(defsystem "control_publisher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "controller_out" :depends-on ("_package_controller_out"))
    (:file "_package_controller_out" :depends-on ("_package"))
    (:file "control_message" :depends-on ("_package_control_message"))
    (:file "_package_control_message" :depends-on ("_package"))
  ))