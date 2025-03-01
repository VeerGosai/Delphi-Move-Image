# MoveImage: Delphi Image Dragging Program

## Overview
MoveImage is a Delphi application that allows users to click and drag an image (`TImage`) within a form. The program utilizes mouse event handlers to track movement and reposition the image dynamically.

## Features
- **Drag and Drop Functionality**: Users can move an image within the application window.
- **Smooth Movement**: The image follows the cursor as long as the left mouse button is held.
- **Simple and Efficient**: Uses native Delphi event handlers for real-time interaction.

## How It Works
The application listens to three key mouse events:
1. **`OnMouseDown`**: Captures the initial click position.
2. **`OnMouseMove`**: Moves the image based on cursor movement.
3. **`OnMouseUp`**: Releases the image when the mouse button is lifted.

### Code Explanation
- **Tracking Movement**:  
  The program records the cursor’s position relative to the image when clicked.  
- **Updating Position**:  
  While the left mouse button is held, the image’s `Left` and `Top` properties are updated dynamically.  
- **Stopping Dragging**:  
  Once the mouse button is released, the program stops updating the image's position.

## Usage
1. Run the Delphi application.
2. Click and hold the image (`TImage`).
3. Move the mouse while holding the left button to reposition the image.
4. Release the button to stop dragging.

## Technologies Used
- **Delphi (VCL framework)**
- **Pascal (Object Pascal)**
- **Windows API (for handling UI events)**

## Potential Enhancements
- **Edge Constraints**: Prevent the image from moving outside the form boundaries.
- **Smooth Animations**: Implement easing for a more natural dragging experience.
- **Touch Support**: Add compatibility for touch-screen interactions.

## Author
**Veer Gosai**  
This program was created as a simple demonstration of interactive UI elements in Delphi.

---
This document serves as a guide for understanding and improving the MoveImage Delphi program.
