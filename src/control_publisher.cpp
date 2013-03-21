#include "ros/ros.h"
#include "control_publisher/controller_out.h"


/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;


  ros::Publisher control_out_pub = n.advertise<control_publisher::controller_out>("/to_MAVLink_node", 1000);
  ros::Rate loop_rate(50);

  control_publisher::controller_out msg;
  msg.header.frame_id = "cont";
  msg.set_thrust = 0.5;
  msg.set_phi = 0.1;
  msg.set_theta = 0.2;
  msg.set_psi = 0.4;

  while (ros::ok())
  {
    msg.header.stamp = ros::Time::now();
    control_out_pub.publish(msg);
    
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
