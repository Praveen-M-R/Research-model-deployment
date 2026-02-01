FROM ollama/ollama

ENV OLLAMA_HOST=0.0.0.0:7860


RUN echo '#!/bin/bash' > /start.sh && \
    echo 'ollama serve &' >> /start.sh && \
    echo 'sleep 5' >> /start.sh && \
    echo 'ollama pull qwen2.5:0.5b' >> /start.sh && \
    echo 'wait' >> /start.sh && \
    chmod +x /start.sh

CMD ["/start.sh"]
