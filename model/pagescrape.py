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
    prefix="https://jobs.boeing.com/search-jobs/Seattle%2C%20WA",
    max_depth=3,  # Example prefix
)

# Start scraping from a base URL
documents = scraper.load_data(
    base_url="https://jobs.boeing.com/search-jobs/Seattle%2C%20WA"
)  # Example base URL

index = VectorStoreIndex.from_documents(documents)
query_engine = index.as_query_engine()
response = query_engine.query(
    "Summarize the job description with the job id of 00000417463"
)
print(response)

# https://jobs.boeing.com/search-jobs/Seattle%2C%20WA
# https://jobs.boeing.com/job/seattle/flight-training-deployment-and-support-manager/185/625264130723
# https://jobs.boeing.com/job/seattle/training-enablement-lead/185/62609988160loader = KnowledgeBaseWebReader()
loader = KnowledgeBaseWebReader()
KnowledgeBaseWebReader = download_loader("KnowledgeBaseWebReader")
documents = loader.load_data(
    root_url="https://jobs.boeing.com/search-jobs/Seattle%2C%20WA",
    link_selectors=["search-results__job-link a"],
    article_path="https://jobs.boeing.com/job/seattle",
)
