# **DetectXiaoZhuan-Backend**

This project is a modification based on the “Famous City Guangzhou - AI Exploration and Object Recognition” project, originally developed by the “Object Recognition Exploration” development team. While leveraging the foundation of the original project, this project (DetectXiaoZhuan) adapts the codebase to achieve a different functionality, specifically for the detection of XiaoZhuan (small seal script) characters.

This repository contains the backend code for the **DetectXiaoZhuan** project, which is designed to detect XiaoZhuan (small seal script) characters using YOLOv5. The backend includes model handling and database interaction logic.

## Related Repositories

- [Frontend](https://github.com/empty0845/DetectXiaoZhuan-WeChat.git): The front-end that displays the results generated by this backend API.
- [Dataset](https://github.com/empty0845/DetectXiaoZhuan-Dataset.git): The dataset used for training the model, although the model is already pre-trained and available for use in the backend.

## Character Explanations and Evolution Sources
The character explanations used in this project are sourced from **[Zdic.net](https://www.zdic.net/)**, and the character evolution images are sourced from **[Guoxuedashi.net](https://www.guoxuedashi.net/)**

## **Project Structure**

- **`/static/new_image/`**: Directory for images containing XiaoZhuan characters.
- **`/static/new_logo/`**: Directory for the program logo images.

- **`./id_to_uuid.json`**: A JSON file mapping IDs to a dictionary containing `{uuid, name}` for each item.
- **`./newtable.sql`**: SQL script for importing data into a MySQL database.
- **`./models/`**: Directory containing the trained YOLOv5 model files.

- **`./mysql.py`**: Python script for handling MySQL database operations.
- **`./server.py`**: Flask server code to expose API endpoints and handle client requests.
- **`./Yolo.py`**: Python script for YOLOv5 model operations (loading the model, inference, etc.).

## **Installation & Setup**

### 1. **Clone the repository**
```bash
git clone https://github.com/yourusername/DetectXiaoZhuan-Backend.git
cd DetectXiaoZhuan-Backend
```

### 2. **Install dependencies**
It is recommended to use Python 3.9.

You can install the required dependencies using:

```bash
pip install -r requirements.txt
```

### 3. **Set up the MySQL database**
- Ensure you have MySQL installed and running.
- Create a new database (e.g., `xiao_zhuan_db`).
- Run the SQL script `newtable.sql` to import necessary tables.
- **Note:** Due to copyright concerns, the actual video URLs are not included in the `newtable.sql` file. Users must add their own video URLs to the database.

### 4. **Configure the Flask server**
- Update the database connection settings in `mysql.py` with your MySQL credentials (host, username, password, database name).
- If necessary, update any model paths or configurations in `server.py` or `Yolo.py`.

### 5. **Run the server**
To start the Flask server:

```bash
python server.py
```

The server will run on `http://127.0.0.1:5000/` by default.

## **File Descriptions**

- **`id_to_uuid.json`**: A mapping file where each record’s ID is mapped to a unique UUID and a name. This is used for identifying the detected characters.
- **`newtable.sql`**: The SQL script to set up the necessary database tables for storing detection results and other data.
- **`models/`**: Contains the trained YOLOv5 models. Ensure the correct model is loaded when performing inference.
- **`mysql.py`**: Contains functions for interacting with the MySQL database, such as querying and inserting data.
- **`server.py`**: The main Flask server file, which hosts the RESTful API and handles incoming requests related to XiaoZhuan character detection.
- **`Yolo.py`**: The code responsible for loading and running the YOLOv5 model to perform object detection on input images.

## **License**

This project is licensed under the MIT License. See the full details at [MIT License](https://opensource.org/licenses/MIT).

## Contributors

This project is maintained and contributed to by the following individuals:

- [empty0845](https://github.com/empty0845)
- [SparseMatric-1](https://github.com/SparseMatric-1)
- [Xi2aoyu24](https://github.com/Xi2aoyu24)
- [Eloisseee](https://github.com/Eloisseee)
