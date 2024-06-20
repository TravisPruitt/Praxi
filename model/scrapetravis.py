from llama_index.core import VectorStoreIndex
from llama_index.readers.web import WholeSiteReader
from llama_index.embeddings.huggingface import HuggingFaceEmbedding
from llama_index.core import Settings, download_loader
from dotenv import load_dotenv
from llama_index.llms.ollama import Ollama

load_dotenv()

Settings.llm = Ollama(model="llama2:13b", request_timeout=60.0)
Settings.embed_model = HuggingFaceEmbedding(model_name="BAAI/bge-small-en-v1.5")

# Initialize the scraper with a prefix URL and maximum depth
scraper = WholeSiteReader(
    prefix="https://www.travislpruitt.com",
    max_depth=3,  # Example prefix
)

# Start scraping from a base URL
documents = scraper.load_data(
    base_url="https://www.travislpruitt.com"
)  # Example base URL

index = VectorStoreIndex.from_documents(documents)
query_engine = index.as_query_engine()
response = query_engine.query("What years did Travis work at Microsoft?")
print(response)
