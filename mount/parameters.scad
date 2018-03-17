// Feather wig doubler dimensions pulled from here: https://learn.adafruit.com/featherwing-proto-and-doubler/downloads

// All measurements are in mm

mmPerIn = 25.4;

// Feather Wing Dimensions
featherWingDoublerWidth = 2 * mmPerIn;
featherWingDoublerLength = 1.85 * mmPerIn; 
screwHoleCenterFromEdge = 0.1 * mmPerIn;
riserBase = 2 * screwHoleCenterFromEdge;
bodyMargin = 10;
heightMargin = 5;
solderHeight = 4;

// Battery Dimensions
batteryDiameter = 18;
batteryLength = 69;
batteryMargin = 5;

// Screw Dimensions
m3ThreadDiameter = 3.00;
m3InnerThreadDiameter = 2;
m3HeadDiameter = 6.00; 
m3HeadHeight = 3.00;
threadLength = 10;
screwMargin = 2; // Min distance between screws

// Attachment Adaptor Dimensions
attachAdaptorWidth = 20;
attachAdaptorBezzelRad = 2;

// Intermediate calculations 
// NOTE: These should not need to be changed if you're just adjusting the parameters above
plateHeight = threadLength - solderHeight + heightMargin;
plateWidth = max(batteryLength, featherWingDoublerWidth);
plateLength = featherWingDoublerLength + batteryDiameter + 2 * batteryMargin;
minBodyMargin = max(bodyMargin, riserBase/2);
attachAdaptorWidthActual = min(featherWingDoublerWidth - attachAdaptorBezzelRad - 3 * riserBase - 2 * screwMargin, attachAdaptorWidth);
attachAdaptorScrewOffset = (attachAdaptorWidthActual + attachAdaptorBezzelRad)/2 + m3HeadDiameter/2 + abs(screwMargin - attachAdaptorBezzelRad);