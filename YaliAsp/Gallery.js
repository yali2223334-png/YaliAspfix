function picShow(pic) {
    // מילון שמקשר בין המספר הישן לשם התמונה החדש של המכונית
    const carImages = {
        11: "main_cars.jpg",
        12: "car_engine.jpg",
        13: "gearbox.jpg",
        14: "climate_control.jpg",
        21: "safety_sensors.jpg",
        24: "car_thermostat.jpg",
        31: "engine_lubrication.jpg",
        34: "car_brakes.jpg",

        // ארבעת המיקומים הנוספים בשורה התחתונה של הגלריה
        41: "main_cars.jpg",
        42: "car_engine.jpg",
        43: "gearbox.jpg",
        44: "car_brakes.jpg"
    };

    // בדיקה שהמספר שנשלח באמת קיים במילון שלנו
    if (carImages[pic]) {
        // עדכון נתיב התמונה הגדולה לתיקייה החדשה ולשם הנכון
        document.getElementById("bigPic").src = "/Images/" + carImages[pic];
    }
}