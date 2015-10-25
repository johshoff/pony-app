// const (
//   Accelerometer = Type(0)
//   Gyroscope     = Type(1)
//   Magnetometer  = Type(2)
//   nTypes        = Type(3)
// )

// // Event represents a sensor event.
// type Event struct {
//   // Sensor is the type of the sensor the event is coming from.
//   Sensor Type

//   // Timestamp is a device specific event time in nanoseconds.
//   // Timestamps are not Unix times, they represent a time that is
//   // only valid for the device's default sensor.
//   Timestamp int64

//   // Data is the event data.
//   //
//   // If the event source is Accelerometer,
//   //  - Data[0]: acceleration force in x axis in m/s^2
//   //  - Data[1]: acceleration force in y axis in m/s^2
//   //  - Data[2]: acceleration force in z axis in m/s^2
//   //
//   // If the event source is Gyroscope,
//   //  - Data[0]: rate of rotation around the x axis in rad/s
//   //  - Data[1]: rate of rotation around the y axis in rad/s
//   //  - Data[2]: rate of rotation around the z axis in rad/s
//   //
//   // If the event source is Magnetometer,
//   //  - Data[0]: force of gravity along the x axis in m/s^2
//   //  - Data[1]: force of gravity along the y axis in m/s^2
//   //  - Data[2]: force of gravity along the z axis in m/s^2
//   //
//   Data []float64
// }
