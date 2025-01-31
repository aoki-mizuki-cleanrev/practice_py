# .devcontainer/Dockerfile

FROM python:3.10-slim

# 作業ディレクトリを設定
WORKDIR /workspace

# 必要なシステムパッケージをインストール
RUN apt-get update && apt-get install -y \
    git \
    vim \
    sudo \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Pythonの依存関係をキャッシュするためにrequirements.txtをコピー
COPY requirements.txt .

# Pythonパッケージをインストール
RUN pip install --upgrade pip && pip install --root-user-action=ignore -r requirements.txt

# プロジェクトのソースコードをコピー
COPY . .

# カスタマイズした .bashrc をコピー
COPY .bashrc /root/.bashrc

# .bashrc の権限を設定
RUN chmod 644 /root/.bashrc

# デフォルトのシェルをbashに設定
SHELL ["/bin/bash", "-c"]

# デフォルトのコマンドを設定
CMD ["bash"]
