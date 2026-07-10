# 🌐 URL RAG Chatbot

A Retrieval-Augmented Generation (RAG) chatbot that answers questions about any website by extracting its content, storing semantic embeddings in a Chroma vector database, and generating context-aware responses using Google Gemini.

---

## 🚀 Features

- 🌍 Extract content directly from a website URL
- ✂️ Intelligent text chunking
- 🔍 Semantic search using vector embeddings
- 🗂️ ChromaDB vector database
- 💬 Conversational question answering
- 🧠 History-aware retrieval for follow-up questions
- ⚡ FastAPI backend
- 🐳 Docker support for deployment

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|------------|
| Language | Python |
| Backend | FastAPI |
| Framework | LangChain |
| LLM | Google Gemini |
| Embeddings | HuggingFace Embeddings |
| Vector Database | ChromaDB |
| Web Parsing | BeautifulSoup |
| Deployment | Docker |

---

## 📂 Project Structure

```text
URL-RAG/
│
├── .data/
│   └── vectorstore/          # Chroma vector database
│
├── main.py                   # FastAPI application
├── rag_url.py                # Complete RAG pipeline
├── requirements.txt
├── pyproject.toml
├── Dockerfile
├── .gitignore
└── README.md
```

---

## ⚙️ How It Works

```text
User enters Website URL
           │
           ▼
Extract Website Content
           │
           ▼
Split into Text Chunks
           │
           ▼
Generate Embeddings
           │
           ▼
Store in ChromaDB
           │
           ▼
User asks a Question
           │
           ▼
Retrieve Relevant Chunks
           │
           ▼
Generate Answer using Gemini
```

---

## 📦 Installation

Clone the repository

```bash
git clone https://github.com/yadavnitesh86/url-rag.git
cd url-rag
```

Install dependencies

```bash
pip install -r requirements.txt
```

Run the application

```bash
uvicorn main:app --reload
```

---

## 📌 API Usage

### Ask a Question

Provide:

- Website URL
- User Question

The application automatically:

- Extracts website content
- Creates vector embeddings
- Retrieves relevant information
- Generates an AI-powered answer

---

## 💡 Key Concepts Demonstrated

- Retrieval-Augmented Generation (RAG)
- Semantic Search
- Vector Embeddings
- ChromaDB
- LangChain Pipelines
- History-Aware Retrieval
- Prompt Engineering
- FastAPI Development

---

## 🔮 Future Improvements

- PDF document support
- Multiple document ingestion
- User authentication
- Streaming responses
- Source citations
- Hybrid search
- Cloud deployment
- Persistent vector storage

---

## 👨‍💻 Author

**Nitesh Yadav**

Aspiring AI/ML Engineer passionate about building practical Generative AI applications using LangChain, FastAPI, Vector Databases, and Large Language Models.
