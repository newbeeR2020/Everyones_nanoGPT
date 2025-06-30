FROM python:3.12-slim

# システムパッケージのインストール（git, ffmpeg）
RUN apt-get update \
  && apt-get install -y git ffmpeg \
  && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ
WORKDIR /workspace

# JupyterLabとpipの最新化
RUN pip install --upgrade pip && pip install jupyterlab

# Pythonパッケージ
COPY requirements.txt .
RUN pip install -r requirements.txt

# Jupyterカーネル登録（わかりやすい名前に！）
RUN python -m ipykernel install --sys-prefix --name "nanogpt312" --display-name "NanoGPT用Python3.12"

# ポート公開
EXPOSE 8888

# JupyterLab起動
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
