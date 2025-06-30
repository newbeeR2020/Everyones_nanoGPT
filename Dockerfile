FROM python:3.12-slim

# Install system packages (git, ffmpeg)
RUN apt-get update \
  && apt-get install -y git ffmpeg \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Upgrade pip and install JupyterLab
RUN pip install --upgrade pip && pip install jupyterlab

# Install Python packages
COPY requirements.txt .
RUN pip install -r requirements.txt

# Register Jupyter kernel (use a clear, friendly name!)
RUN python -m ipykernel install --sys-prefix --name "nanogpt312" --display-name "NanoGPT Python 3.12"

# Expose JupyterLab port
EXPOSE 8888

# Launch JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
