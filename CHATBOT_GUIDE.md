# 💬 Chatbot Guide - Movie Booking Assistant

## Overview
The Chatbot is an intelligent conversational assistant that helps you book movie tickets, browse movies, find theaters, and manage your bookings using natural language conversations.

## 🌟 Features

### 1. **Natural Language Understanding**
- Understands various ways of asking questions
- Extracts intent and entities from your messages
- Maintains conversation context

### 2. **Core Capabilities**
- 🎬 **Browse Movies**: See what's currently showing
- 🎟️ **Book Tickets**: Complete booking flow through conversation
- 🏢 **Find Theaters**: Discover nearby theaters and locations
- ⏰ **View Showtimes**: Check available showtimes
- 📋 **My Bookings**: View your booking history
- ⭐ **Recommendations**: Get personalized movie suggestions
- ❓ **Help**: Get assistance on what the chatbot can do

### 3. **Smart Suggestions**
- Context-aware quick reply buttons
- Guided conversation flow
- One-click actions for common tasks

## 🚀 Getting Started

### Accessing the Chatbot
1. Log in to your account
2. Click on "💬 Chatbot" in the navigation bar
3. Start chatting with the assistant!

### Example Conversations

#### Booking a Movie
```
You: "Show me movies"
Bot: [Lists current movies with ratings]

You: "Book tickets for Avatar"
Bot: [Shows available showtimes]

You: [Select a showtime]
Bot: [Confirms booking with details]
```

#### Finding Showtimes
```
You: "When is Inception playing?"
Bot: [Shows all showtimes for Inception]

You: "Show afternoon shows"
Bot: [Filters and shows afternoon showtimes]
```

#### Getting Recommendations
```
You: "Recommend a movie"
Bot: [Shows top-rated movies with descriptions]

You: "What's popular?"
Bot: [Shows trending movies]
```

#### Viewing Your Bookings
```
You: "My bookings"
Bot: [Shows your recent bookings with details]

You: "Show my tickets"
Bot: [Displays booking history]
```

## 💡 Tips for Best Results

### What You Can Ask

**Movies:**
- "Show me movies"
- "What's playing?"
- "List all movies"

**Booking:**
- "Book tickets for [movie name]"
- "Reserve seats"
- "Get me 2 tickets"

**Theaters:**
- "Show theaters"
- "Where can I watch movies?"
- "List all cinemas"

**Showtimes:**
- "Show timings"
- "When is [movie] playing?"
- "Show evening shows"

**Personal:**
- "My bookings"
- "Show my tickets"
- "Booking history"

**Help:**
- "Help"
- "What can you do?"
- "How do I book?"

## 🎯 Conversation Flow

### Booking Flow
1. **Start**: Ask to see movies or book tickets
2. **Select Movie**: Choose from available movies
3. **Choose Showtime**: Pick your preferred theater and time
4. **Confirm Details**: Specify number of seats and seat type
5. **Complete**: Booking confirmed with details

### Interactive Elements
- **Movie Cards**: Click to select a movie
- **Showtime Cards**: Click "Book Now" to reserve seats
- **Suggestion Chips**: Quick replies for common actions
- **Reset Button**: Start a fresh conversation

## 🔧 Technical Details

### API Endpoints

#### Send Message
```http
POST /api/chatbot/message
Authorization: Bearer <token>
Content-Type: application/json

{
  "message": "Show me movies"
}
```

**Response:**
```json
{
  "success": true,
  "reply": "Here are the movies currently showing...",
  "data": { "movies": [...] },
  "suggestions": ["Book a ticket", "More details"],
  "requiresAction": false
}
```

#### Select Movie
```http
POST /api/chatbot/select-movie
Authorization: Bearer <token>
Content-Type: application/json

{
  "movieId": "64a1b2c3d4e5f6789"
}
```

#### Confirm Booking
```http
POST /api/chatbot/confirm-booking
Authorization: Bearer <token>
Content-Type: application/json

{
  "showtimeId": "64a1b2c3d4e5f6789",
  "numberOfSeats": 2,
  "seatType": "regular"
}
```

#### Reset Conversation
```http
POST /api/chatbot/reset
Authorization: Bearer <token>
```

#### Get Conversation History
```http
GET /api/chatbot/history
Authorization: Bearer <token>
```

## 🎨 Features

### Intent Recognition
The chatbot automatically recognizes these intents:
- Greeting
- Movie browsing
- Booking
- Theater search
- Showtime queries
- Personal bookings
- Recommendations
- Help requests
- Cancel/reset

### Entity Extraction
Automatically extracts:
- Movie names
- Theater names
- Dates (today, tomorrow, weekend)
- Times (morning, afternoon, evening)
- Number of seats
- Seat types (regular, premium)

### Conversation State Management
- Maintains context across messages
- Remembers your current booking flow
- Tracks selected movies and preferences

## 🛠️ Customization

### Adding New Intents
Edit `backend/controllers/chatbotController.js`:
```javascript
const intents = {
  greeting: /^(hi|hello|hey)/i,
  // Add your custom intent pattern
  customIntent: /pattern/i
};
```

### Modifying Responses
Update the switch cases in `processChatMessage` function to customize bot replies.

### Styling the Interface
Modify `frontend/src/pages/Chatbot.css` to change colors, fonts, and layout.

## 📱 Responsive Design
- Works seamlessly on desktop, tablet, and mobile
- Touch-friendly interface
- Optimized chat experience for all screen sizes

## 🔒 Security
- All endpoints require authentication
- User-specific conversation states
- Secure booking confirmation process

## 🐛 Troubleshooting

### Bot Not Responding
- Check your internet connection
- Ensure you're logged in
- Try refreshing the page

### Bookings Not Showing
- Verify you have active bookings
- Check your authentication token
- Try resetting the conversation

### Reset Not Working
- Click the 🔄 button in the header
- Or type "cancel" or "reset" in the chat

## 🎓 Best Practices

1. **Be Clear**: Use simple, direct language
2. **Use Suggestions**: Click suggestion chips for faster navigation
3. **Follow Flow**: Complete the booking flow step by step
4. **Reset When Needed**: Start fresh if you change your mind
5. **Ask for Help**: Type "help" if you're unsure

## 🚀 Future Enhancements

Planned features:
- Multi-language support
- Voice input
- Advanced filters (genre, rating, language)
- Group booking coordination
- Seat selection visualization
- Payment integration within chat
- Notification preferences

## 📞 Support

If you encounter any issues:
1. Try resetting the conversation
2. Check the console for errors
3. Contact support with your booking ID
4. Report bugs through the feedback form

---

**Happy Chatting! 🎬🍿**
