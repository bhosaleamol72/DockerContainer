# DockerContainer


To create and run a new container in Docker, follow these steps:

---

### **1. Pull an Image (Optional)**
First, ensure you have the Docker image for the container you want to create. For example, to use the `ubuntu` image:
```bash
docker pull ubuntu
```

---

### **2. Create and Start a New Container**
Use the `docker run` command to create and start a container.

#### **Basic Command:**
```bash
docker run -it --name my-container ubuntu
```

#### **Explanation:**
- `docker run`: Creates and starts the container.
- `-it`: Starts the container in interactive mode with a terminal attached.
- `--name my-container`: Assigns a custom name (`my-container`) to the container.
- `ubuntu`: Specifies the image to use for the container.

This command will open an interactive shell inside the container. You can run commands like `ls`, `pwd`, etc.

---

### **3. Detach and Run in the Background**
To run the container in detached mode (background):
```bash
docker run -dit --name my-container ubuntu
```

---

### **4. Run a Custom Application**
If you want to run a specific application or command in the container, you can append it to the `docker run` command. For example:
```bash
docker run -it --name my-container ubuntu bash
```

OR, for a .NET Core application:
```bash
docker run --name my-dotnet-app my-dotnet-image
```

---

### **5. Verify the Container**
To verify the container is running:
```bash
docker ps
```

---

### **6. Access the Container**
To interact with a running container:
```bash
docker exec -it my-container bash
```

---

### **7. Stop and Remove the Container**
- Stop the container:
  ```bash
  docker stop my-container
  ```
- Remove the container:
  ```bash
  docker rm my-container
  ```

These commands will create, start, and manage your new Docker container!
