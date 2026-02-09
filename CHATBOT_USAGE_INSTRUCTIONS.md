# 🤖 AI Chatbot Usage Instructions

## ✅ Servers Started!

Two PowerShell windows should now be open:
1. **Backend Server** - Running on `http://localhost:5000`
2. **Frontend Server** - Running on `http://localhost:3000`

Wait for both servers to fully start (30-60 seconds for first time).

---

## 🎬 How to Use the AI Chatbot

### Step 1: Access the Application
1. Open your browser
2. Go to: **http://localhost:3000**
3. You'll see the landing page

### Step 2: Login or Register
**Test Credentials:**
- **User Account**: 
  - Email: `user@test.com`
  - Password: `User@123`
  
- **Admin Account**:
  - Email: `admin@moviebooking.com`
  - Password: `Admin@123`

### Step 3: Navigate to Chatbot
1. After login, click on **"Chatbot"** in the navigation menu
2. You'll see the AI assistant with a purple robot avatar

---

## 💬 Sample Conversations

### Example 1: Quick Booking
```
You: I want to book 2 tickets for a Sci-Fi movie tonight
Bot: Shows available Sci-Fi movies with showtimes
You: [Click on "Galactic War at 8:00 PM"]
Bot: Shows interactive seat map
You: [Select seats D3, D4 on the map]
You: [Click "Confirm Selected Seats"]
Bot: "Choose seat type: Premium or Regular?"
You: [Click "Premium"]
Bot: "🍿 Would you like to add snacks?" + Shows snack grid
You: [Select popcorn and coke, adjust quantities]
You: [Click "Add Snacks (₹200)"]
Bot: Shows payment options
You: [Click "UPI"]
Bot: "🎉 Payment Successful!" + Shows e-ticket
```

### Example 2: Browse Movies
```
You: What movies are playing today?
Bot: Shows list of all movies with showtimes
```

### Example 3: Search by Genre
```
You: Show me action movies
Bot: Displays action movies available
```

### Example 4: Check Bookings
```
You: Show my bookings
Bot: Displays your recent bookings
```

---

## 🎯 Key Features to Test

### 1. **Movie Search & Selection**
- Natural language queries work
- Genre-based search
- Showtime selection from cards

### 2. **Interactive Seat Map** 💺
- Visual seat layout (rows A-J, columns 1-10)
- Click seats to select/deselect
- Color coding:
  - **White**: Available
  - **Purple**: Your selection
  - **Gray**: Already booked
- Seat legend at bottom
- Real-time selection count

### 3. **Snacks Selection** 🍿 ✨ NEW
- Beautiful grid layout with emoji icons
- Categories: Popcorn, Beverages, Snacks, Combos
- Click to select/deselect
- Quantity controls (+ and - buttons)
- Shows selected items and total
- Option to skip snacks

### 4. **Payment Processing** 💳 ✨ NEW
- 4 payment methods:
  - Credit Card (pink gradient)
  - Debit Card (pink gradient)
  - UPI (blue gradient)
  - Wallet (green gradient)
- Shows total amount
- Instant processing

### 5. **E-Ticket Generation** 🎫 ✨ NEW
- Professional ticket design
- Booking code (e.g., BK-123456)
- Complete details:
  - Movie name and genre
  - Theater name and location
  - Date and time
  - Seat numbers and type
  - Snacks (if selected)
  - Total amount paid
- QR code placeholder
- "View Ticket" option in suggestions

---

## 🎨 UI Highlights

All components match your beautiful UI design:
- **Purple gradient backgrounds** (matching your mockup)
- **Smooth animations** on hover
- **Card-based layouts** for movies and snacks
- **Professional ticket** design
- **Responsive design** for mobile

---

## 🐛 Troubleshooting

### Backend not starting?
Check the backend PowerShell window for errors. Common issues:
- MongoDB not running
- Port 5000 already in use

**Solution:**
```bash
# Make sure MongoDB is running
# Check .env file in backend folder
```

### Frontend not loading?
Check the frontend PowerShell window. It should say:
"Compiled successfully!" or "webpack compiled"

**If you see errors:**
```bash
cd frontend
npm install
npm start
```

### Chatbot not responding?
1. Check browser console (F12) for errors
2. Verify backend is running (http://localhost:5000)
3. Try refreshing the page
4. Clear browser cache

### No snacks appearing?
Run the snacks seed script:
```bash
cd backend
node utils/seedSnacks.js
```

---

## 📱 Mobile View

The chatbot is fully responsive! Try it on:
- Desktop (best experience)
- Tablet (optimized layout)
- Mobile (touch-friendly, 2-column snacks grid)

---

## 🎉 Complete Booking Flow Summary

1. **Search** → AI finds movies based on your query
2. **Select Movie** → Choose from available showtimes
3. **Pick Seats** → Interactive visual seat map
4. **Choose Type** → Premium or Regular seats
5. **Add Snacks** ✨ → Select food & beverages (or skip)
6. **Pay** ✨ → Choose payment method
7. **Get Ticket** ✨ → E-ticket with booking code

---

## 🔗 Quick Links

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5000
- **Chatbot Page**: http://localhost:3000/chatbot (after login)

---

## 💡 Pro Tips

1. **Natural Language**: The bot understands casual language
   - "book tickets" or "I want to watch a movie"
   - "show me comedy movies" or "what's playing tonight"

2. **Suggestions**: Click the suggestion chips for quick actions

3. **Reset**: If something goes wrong, click "🔄 Reset" button

4. **Multiple Bookings**: You can book again after completing one

5. **View History**: Say "show my bookings" to see past tickets

---

## 🎊 Enjoy Your Enhanced Chatbot!

Your AI assistant can now handle the complete booking journey from search to ticket generation. Test it out and enjoy the beautiful, smooth experience!

**Questions or issues?** Check the PowerShell windows for detailed logs.
