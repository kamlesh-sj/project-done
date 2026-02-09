# 💬 Chatbot - Quick Start Guide

## 🚀 Get Started in 3 Steps

### 1. Start the Application
```bash
# Using Docker (Recommended)
docker-compose up -d

# OR Using npm
# Terminal 1 - Backend
cd backend
npm install
npm start

# Terminal 2 - Frontend
cd frontend
npm install
npm start
```

### 2. Access the Chatbot
1. Open your browser: `http://localhost:3000`
2. Login or Register
3. Click **💬 Chatbot** in the navigation bar

### 3. Start Chatting!
Try these commands:
- "Show me movies"
- "Book tickets for Avatar"
- "My bookings"
- "Recommend a movie"
- "Help"

## 💡 Example Conversations

### Quick Movie Booking
```
You: Show me movies
Bot: [Displays movies with ratings and genres]

You: [Click on a movie card]
Bot: [Shows available showtimes]

You: [Click "Book Now" on a showtime]
Bot: 🎉 Booking confirmed!
```

### Natural Language Booking
```
You: Book 2 tickets for Inception
Bot: Great! Here are the available showtimes...

You: [Select showtime]
Bot: Booking confirmed! Enjoy your movie! 🍿
```

### Get Recommendations
```
You: What's a good movie to watch?
Bot: Here are my top recommendations...
     1. Avatar ⭐ 9.2/10
     2. Inception ⭐ 8.8/10
     ...
```

## 🎯 What Can the Chatbot Do?

| Feature | Example Commands |
|---------|-----------------|
| 🎬 Browse Movies | "Show movies", "What's playing?", "List all movies" |
| 🎟️ Book Tickets | "Book tickets", "Reserve seats", "Get me 2 tickets" |
| 🏢 Find Theaters | "Show theaters", "Where can I watch?", "List cinemas" |
| ⏰ View Showtimes | "Show timings", "When is Avatar playing?" |
| 📋 My Bookings | "My bookings", "Show my tickets", "Booking history" |
| ⭐ Recommendations | "Recommend a movie", "What's popular?", "Best movies" |
| ❓ Get Help | "Help", "What can you do?", "How to book?" |
| 🔄 Reset | "Cancel", "Reset", "Start over" |

## 🎨 Features

### Smart Suggestions
Click the suggestion chips for quick actions:
- No typing needed
- Context-aware suggestions
- One-click responses

### Visual Cards
- **Movie Cards**: Click to select and see details
- **Showtime Cards**: One-click booking
- **Booking Cards**: View your history

### Conversation Controls
- **Reset Button** (🔄): Start a fresh conversation
- **Scroll**: Auto-scrolls to latest messages
- **Typing Indicator**: See when bot is responding

## 🔧 API Endpoints (for developers)

### Send Message
```javascript
POST /api/chatbot/message
Headers: { Authorization: "Bearer <token>" }
Body: { "message": "Show me movies" }
```

### Select Movie
```javascript
POST /api/chatbot/select-movie
Headers: { Authorization: "Bearer <token>" }
Body: { "movieId": "64a1b2c3d4e5f6789" }
```

### Confirm Booking
```javascript
POST /api/chatbot/confirm-booking
Headers: { Authorization: "Bearer <token>" }
Body: {
  "showtimeId": "64a1b2c3d4e5f6789",
  "numberOfSeats": 2,
  "seatType": "regular"
}
```

### Reset Conversation
```javascript
POST /api/chatbot/reset
Headers: { Authorization: "Bearer <token>" }
```

## 💡 Pro Tips

1. **Use Natural Language**: Just type what you want!
2. **Click Suggestions**: Faster than typing
3. **Interactive Cards**: Click cards to select
4. **Reset Anytime**: Use 🔄 button to start over
5. **Mobile Friendly**: Works great on phones

## 🐛 Troubleshooting

**Bot not responding?**
- Check internet connection
- Ensure you're logged in
- Refresh the page

**Can't see chatbot link?**
- Make sure you're logged in
- Look for "💬 Chatbot" in navbar

**Messages not appearing?**
- Click reset (🔄) button
- Clear browser cache
- Re-login

## 📱 Mobile Usage

The chatbot is fully responsive:
- ✅ Touch-friendly interface
- ✅ Optimized layout
- ✅ Smooth scrolling
- ✅ Easy navigation

## 🎓 Best Practices

1. **Start Simple**: Try "Show me movies" first
2. **Follow Suggestions**: Click the chips
3. **One Step at a Time**: Complete the flow
4. **Be Specific**: "Book Avatar" vs "Book a movie"
5. **Ask for Help**: Type "help" if stuck

## 🚀 Next Steps

1. ✅ Try the chatbot
2. ✅ Book your first ticket
3. ✅ Check your bookings
4. ✅ Get recommendations
5. ✅ Explore all features

## 📚 More Information

- **Full Guide**: See `CHATBOT_GUIDE.md`
- **All Features**: See `FEATURES.md`
- **API Docs**: See `CHATBOT_GUIDE.md` (API section)

---

**Ready to chat? Let's go! 🎬🍿**
