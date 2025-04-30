abstract class ChatbotService {
  Future<void> initialize();
  Stream<ChatMessage> sendMessage(String message);
}

class ChatMessage {
}