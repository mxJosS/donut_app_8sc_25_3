# 🍩 Donut App  

> 📱 Flutter practice project for the **Programación de Aplicaciones Móviles** class  
> 👨‍🏫 Instructor: **Rodrigo Fidel Gaxiola Sosa**  
> 👨‍💻 Student: **José Ángel Espinosa García – Group 8SC**

---

## 🧁 Short Description  

**Donut App** is a Flutter project developed as part of my Mobile Applications course.  
The main goal is to build a beautiful and functional user interface inspired by a **donut shop concept** from Dribbble.  
Through this app, I practiced how to use Flutter widgets, structure files, and manage the design of a modern interface.  

---

## ⚙️ Functionalities  

- 🍩 Displays a donut catalog with images, names, and prices  
- 🧭 Allows simple navigation between pages  
- 🎨 Uses custom colors, gradients, and text styles  
- ⚡ Supports **Hot Reload** for fast testing  
- 💾 Organized project structure with reusable widgets  

---

## 🧱 Main Widgets Used  

- **Scaffold** → Base layout structure  
- **AppBar** → Top navigation bar  
- **ListView / SingleChildScrollView** → Scrollable content  
- **Container / Padding / Align** → Layout and spacing  
- **Image.asset** → Displays donut images from assets  
- **Text** → Displays titles, descriptions, and prices  
- **Row & Column** → Used for horizontal and vertical layout  
- **SliverGridDelegateWithFixedCrossAxisCount** → Defines the number of columns and spacing for the grid layout in the donut list (used inside `GridView.builder`)
---

## 🛠️ Technologies  

- 🐦 **Flutter 3.x**  
- 💻 **Dart** programming language  
- 🧩 **Visual Studio Code**  
- 🔧 **Git & GitHub** for version control  

---

## 📂 Project Structure  

```plaintext
lib/
 ├── icons/                         # Icons used in the app
 ├── images/                        # Donut images
 │    ├── chocolate_donut.png
 │    ├── grape_donut.png
 │    ├── icecream_donut.png
 │    └── strawberry_donut.png
 ├── screens/
 │    └── home_page.dart            # Main home screen
 ├── tab/                           # Different product tabs
 │    ├── burger_tab.dart
 │    ├── donut_tab.dart
 │    ├── pancake_tab.dart
 │    ├── pizza_tab.dart
 │    └── smoothie_tab.dart
 ├── utils/
 │    ├── donut_tile.dart           # Custom widget for donut items
 │    ├── my_tab.dart               # Widget for custom tab navigation
 │    └── main.dart                 # Main app logic and tab structure
```

🎥 Demo

![donut_demo](https://github.com/user-attachments/assets/09b58353-964a-456e-8ca7-1754c7c79649)



🎨 Design Credits

Original design inspired by a Dribbble concept.
All visual rights belong to the original creator.
https://dribbble.com/shots/19649140-App-UI




<img width="600" height="600" alt="image" src="https://github.com/user-attachments/assets/4be14363-9373-4e24-b7ce-70da11c54e40" />















