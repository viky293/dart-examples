### Bridge Pattern Example

This section is part 7 and aims to provide an example for the Bridge pattern.

Goals of bridge pattern are:-

- Avoid explosion of number or classes
- Prefer composition over inheritance
- The hard to understand "Decouple abstraction from implementation"

I have found that it is hard to understand the third point as it's confusing. The abstraction here is not an interface or abstract class.
The abstraction here is what you have exposed to the client in order to use this functionality.

In this particular example of automobiles, we have implemented [ManualTransmission](./gearbox/ManualTransmission.dart) gearbox and [AutomaticTransmission](./gearbox/AutomaticTransmission.dart). We also adapted electric drive system to the gearbox interface so that the client can still use the electric vehicle without any modifications.

Now for the demonstration of bridge pattern we introduce the drive modes. Implementation of drive mode is fairly simple it just tells whether a shift is allowed or not. At the end of the implementation what we were able to achieve.

- Instead of have extended each type of gearbox to support the drive modes we utlized composition
- Implementation of drive modes is completely abstracted away from the client, nothing changes for the client to use gearboxes
- Hear what we have exposed to the client is gearbox interface so that's our abstraction
- Gearbox behavior can be either extended or modified using concrete implementations of drive modes
- Any gearbox can utilize these drive modes without having a sub-class for each drive mode

Implementation in following :-

- [BaseAutomobile.dart](./BaseAutomobile.dart) // provide methods to change modes during runtime
- // Add reference to drive mode implementation, use drive modes to decide shift
  - [Gearbox](./interface/Gearbox.dart)
  - [EVGearboxAdapter](./adapter/EvGearboxAdapter.dart)
  - [AutomaticTransmission](./gearbox/AutomaticTransmission.dart)
  - [ManualTransmission](./gearbox/ManualTransmission.dart)
- *Implementation of drive modes*
  - [DriveMode](./gearbox/modes/DriveMode.dart) // Base class for drive modes
  - *Extends Drive Mode*
    - [NoDriveMode](./gearbox/modes/NoDriveMode.dart) // Default mode for all gearboxes
    - [EcoMode](./gearbox/modes/EcoMode.dart)
    - [SportsMode](./gearbox/modes/SportsMode.dart)

- [TuneUp](./TuneUp.dart) //Test different drive modes

---

#### Carry forward from the pervious exercise

---

### Example: Code to an interface not to an implementation

About the example, we have a base class of `BaseAutomobile` that's applicable for every consumer automobile in the world. Like Cars, Buses or Trucks. The implementation is extensible for multiple engines, gearboxes, wheels setup and brakes.

Let's assume that you walk into the showroom for a car and start evaluating multiple variants for a specific car. You will observe that there are certain components that differ from variant to variant and there are certain things that remain unchanged.

Let's segregate what changes from whats not changing at the car showroom. Some variants come with disc brakes, some have drum brakes, some cars have manunal transmission and some have the automatic transmission.

Now let's look at the swappable components that you believe have been swapped at the factory during creation of these variants. Remember yet everything fits in the chassis, you still get the option to apply brakes, check which gear you are on, you will always be able to start stop engine otherwise what's the point of being in the car showroom. Until unless you are buying an EV where gearbox is a thing of past, something under the hood would still be changing gears even if you go for automatic. Though with this a approach your would still be able to fit in EV with no actual gearbox setup but let's not get into those details.

### Swappable components: -

(That's how Ford won at Le Mans and that's how we will too)

- Engine
- Gearbox
- Wheels
- Brakes

For the sake of example let's stick to only these major components. There won't be actual scientific implementation of how each of them or automobile overall works. Purpose of example is to attempt and implementation that helps understand the benefits of coding to an interface as opposed to an implementation.

Since these components are swappable yet they perform same operation but with different capabilities, hence it is good to assume a common interface for them.

We begin with defining the interface for each component. Then we define the base class and initialize each of these components in the constructor (better approaches are there, but not for this example).

### What's not changing: -

- You will always drive the vehicle
- You will always use the breaks
- You would always have speed tracking

So, we implement these functionalites in the `BaseAutomobile` class and we code to interfaces for swapable components.

### What are the different variations of what's changing: -

- Four by four drive
- Front wheel drive
- Manual Transmission
- Automatic Transimission
- Disc brakes
- Drum brakes

So these are our actual implementations that adheres to the interfaces that we have already defined. Which means there would always be an option to apply the brakes.

### Showroom

Actually, showroom could have got prebuilt models from the `Factory` but let's for now assemble them in the showroom itself.

We create the actual `Automobile` variations by inherinting from `BaseAutomobile` Class in the showroom directory.

### Track.dart

Finally let's do some driving and test our brakes and transmissions.

Hope you will find this example useful to understand the benefits or this principle.

This allows us composing our objects.
