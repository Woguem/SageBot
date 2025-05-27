# SageBot - AI Communication Coach

SageBot is an AI-powered application designed to help users improve their communication skills through interactive conversations, training modules, and assessments.

## Features

- **Interactive Chat** with different scenarios:
  - Casual conversation
  - Job interview simulation
  - Debate practice
  - Storytelling development
- **Voice Interaction**:
  - Speech-to-text transcription
  - Text-to-speech responses
- **Training Modules**:
  - Impromptu speaking
  - Storytelling techniques
  - Conflict resolution
- **Assessment Tools**:
  - Presentation evaluation
  - Speech analysis
  - Progress tracking

## Technologies Used

- Backend: Python, Flask
- Frontend: HTML, CSS, JavaScript
- AI: Groq API (LLaMA models)
- Speech Processing: SpeechRecognition, gTTS
- Database: SQLite
- Deployment: Docker, AWS EC2, ECR

## Installation

### Local Development

1. Clone the repository:

   git clone https://github.com/yourusername/sagebot.git
   cd sagebot

2. Create and activate a virtual environment:

python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate     # Windows

3. Install dependencies:

pip install -r requirements.txt

4. Run the application:

python app.py

Docker Deployment

1. Build the Docker image:

docker build -t sagebot .

2. Run the container:

docker run -d -p 8080:8080 --name sagebot sagebot

Configuration

Create a .env file with the following variables:

GROQ_API_KEY=your_api_key

CI/CD Pipeline
The project includes GitHub Actions workflows for:

Automated testing

Docker image building and pushing to AWS ECR

Deployment to AWS EC2

Demo Video