import pytest
from app import app

@pytest.fixture
def client():
    app.testing = True
    with app.test_client() as client:
        yield client

def test_home(client):
    response = client.get('/')
    assert response.status_code == 200

def test_chat_post(client):
    response = client.post('/chat', data={'user_input': 'Hello', 'scenario': 'interview'})
    assert response.status_code == 200
    assert 'response' in response.get_json()

def test_chat_audio(client):
    with open("static/speech_output.mp3", "rb") as audio:
        response = client.post('/chat_audio', data={'audio': audio, 'scenario': 'interview'})
        assert response.status_code == 200
        assert 'response' in response.get_json()
