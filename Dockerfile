FROM pytorch/pytorch:latest

RUN apt update && apt install -y git nodejs
RUN python -m pip install optimum[exporters,onnxruntime]@git+https://github.com/huggingface/optimum.git transformers sentence-transformers
