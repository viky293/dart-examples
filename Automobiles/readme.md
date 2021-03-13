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


