from sqlalchemy import create_engine, Column, Integer, String, Float
from sqlalchemy.orm import declarative_base, Session

DATABASE_URL = "postgresql://postgres:Radhikaj%4021@localhost/fde_practice"

engine = create_engine(DATABASE_URL)
Base = declarative_base()

class User(Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key=True)
    name = Column(String)
    email = Column(String, unique=True)

class Document(Base):
    __tablename__ = "documents"
    id = Column(Integer, primary_key=True)
    title = Column(String)
    content = Column(String)

class Query(Base):
    __tablename__ = "queries"
    id = Column(Integer, primary_key=True)
    question = Column(String)
    answer = Column(String)

# Create all tables
Base.metadata.create_all(engine)

# Insert a user
with Session(engine) as session:
    user = User(name="Pravin", email="pravinj0611@gmail.com")
    session.add(user)
    session.commit()

# Read it back
with Session(engine) as session:
    users = session.query(User).all()
    for u in users:
        print(f"ID: {u.id}, Name: {u.name}, Email: {u.email}")