from sentence_transformers import SentenceTransformer

model = SentenceTransformer('all-MiniLM-L6-v2')
embedding = model.encode("hello world")
print(f"Vector dimensions: {len(embedding)}")
print(f"First 5 values: {embedding[:5]}")