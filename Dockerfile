FROM python:3.12-slim

# Install system packages (git, ffmpeg)
RUN apt-get update \
  && apt-get install -y git ffmpeg \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Upgrade pip to latest stable (25.1.1) and install JupyterLab (4.4.5)
RUN python -m pip install --upgrade pip==25.1.1 \
  && pip install \
       jupyterlab==4.4.3 \
       torch==2.6.0 \
       ipykernel==6.29.5

# Register Jupyter kernel (use a clear, friendly name!)
RUN python -m ipykernel install --sys-prefix --name "nanogpt312" --display-name "NanoGPT Python 3.12"

# Expose JupyterLab port
EXPOSE 8888

# Launch JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
