# Manual Setup and Run Guide
## Cloud-Based Movie Ticket Booking System

Complete step-by-step instructions to run the project manually from scratch.

---

## TABLE OF CONTENTS
1. Prerequisites Installation
2. Project Setup
3. Database Setup
4. Backend Setup
5. Frontend Setup
6. Running the Application
7. Testing the Application
8. Troubleshooting

---

## PART 1: PREREQUISITES INSTALLATION

### Step 1.1: Install Node.js and NPM

**Windows:**
1. Go to https://nodejs.org/
2. Download the **LTS version** (Recommended)
3. Run the installer (.msi file)
4. Click **Next** through the installation wizard
5. Check "Automatically install necessary tools" checkbox
6. Click **Install**
7. Wait for installation to complete
8. Click **Finish**

**Verify Installation:**
1. Press `Win + R`
2. Type: `cmd` and press Enter
3. Type: `node --version` (should show v18.x.x or higher)
4. Type: `npm --version` (should show 9.x.x or higher)

**If not working:**
- Restart your computer
- Try again

---

### Step 1.2: Install MongoDB

**Windows:**
1. Go to https://www.mongodb.com/try/download/community
2. Select:
   - Version: 5.0 or higher
   - Platform: Windows
   - Package: MSI
3. Click **Download**
4. Run the downloaded .msi file
5. Choose **Complete** installation
6. Check "Install MongoDB as a Service"
7. Check "Run service as Network Service user"
8. Keep default data directory
9. **Important:** Check "Install MongoDB Compass" (GUI tool)
10. Click **Next** and **Install**
11. Wait for installation (may take 5-10 minutes)
12. Click **Finish**

**Verify MongoDB Installation:**
1. Press `Win + R`
2. Type: `services.msc` and press Enter
3. Look for **MongoDB** in the list
4. Check Status column shows **Running**

**If MongoDB is not running:**
1. Right-click on MongoDB service
2. Click **Start**

---

### Step 1.3: Install Git (Optional but Recommended)

1. Go to https://git-scm.com/download/win
2. Download the installer
3. Run installer with default settings
4. Click **Next** through all steps
5. Click **Install**

---

## PART 2: PROJECT SETUP

### Step 2.1: Locate Your Project

1. Open File Explorer
2. Navigate to your project location:
   ```
   D:\update project\
   ```
3. You should see these folders:
   - `backend`
   - `frontend`
   - Various .md and .txt files

---

### Step 2.2: Open Command Prompt in Project Folder

**Method 1:**
1. Navigate to project folder in File Explorer
2. Click on the address bar (where it shows the path)
3. Type: `cmd` and press Enter

**Method 2:**
1. Press `Win + R`
2. Type: `cmd` and press Enter
3. Type: `cd "D:\update project"` and press Enter

---

## PART 3: DATABASE SETUP

### Step 3.1: Verify MongoDB is Running

1. Press `Win + R`
2. Type: `services.msc` and press Enter
3. Find **MongoDB** service
4. Verify Status is **Running**

### Step 3.2: Open MongoDB Compass (Optional but Recommended)

1. Open MongoDB Compass application
2. In connection string, enter: `mongodb://localhost:27017`
3. Click **Connect**
4. You should see connected to MongoDB
5. Keep it open - we'll use it later

---

## PART 4: BACKEND SETUP

### Step 4.1: Open Backend Folder

1. Open Command Prompt
2. Navigate to backend:
   ```bash
   cd "D:\update project\backend"
   ```

### Step 4.2: Install Backend Dependencies

**This will take 2-5 minutes:**

```bash
npm install
```

**What's happening:**
- Downloading all required Node.js packages
- Installing Express, MongoDB drivers, JWT, etc.

**Wait until you see:**
```
added XXX packages in XXs
```

### Step 4.3: Create Environment File

**Check if .env file exists:**
```bash
dir .env
```

**If file not found, create it:**
```bash
copy .env.example .env
```

**Verify .env file was created:**
```bash
dir .env
```

### Step 4.4: View/Edit Environment Variables (Optional)

**To view the file:**
```bash
notepad .env
```

**Default configuration should look like:**
```
NODE_ENV=development
PORT=5000
MONGODB_URI=mongodb://localhost:27017/moviebooking
JWT_SECRET=your_jwt_secret_key_change_this_in_production
JWT_EXPIRE=7d
GEMINI_API_KEY=your_gemini_api_key_here
OPENAI_API_KEY=your_openai_api_key_here
```

**Important:**
- Keep `MONGODB_URI=mongodb://localhost:27017/moviebooking`
- Keep `PORT=5000`
- AI keys are optional (chatbot will use fallback mode)

**Save and close Notepad**

### Step 4.5: Seed Database with Sample Data

**This creates sample movies, theaters, users, etc.**

```bash
npm run seed
```

**Wait for success message:**
```
✓ Database seeded successfully
✓ Sample data created:
  - 12 movies
  - 3 theaters
  - 15 showtimes
  - 2 users (admin & regular user)
  - 10 snacks
```

**If you see errors:**
- Make sure MongoDB is running
- Check connection string in .env

### Step 4.6: Verify Database in MongoDB Compass

1. Switch to MongoDB Compass
2. Click refresh button (circular arrow icon)
3. You should see **moviebooking** database
4. Click to expand it
5. You should see these collections:
   - users
   - movies
   - theaters
   - showtimes
   - snacks
6. Click on **movies** collection
7. You should see 12 movies with details

---

## PART 5: FRONTEND SETUP

### Step 5.1: Open New Command Prompt

**Don't close the backend terminal!**

1. Press `Win + R`
2. Type: `cmd` and press Enter
3. Navigate to frontend:
   ```bash
   cd "D:\update project\frontend"
   ```

### Step 5.2: Install Frontend Dependencies

**This will take 3-7 minutes:**

```bash
npm install
```

**What's happening:**
- Downloading React and all UI libraries
- Installing axios, react-router, etc.

**Wait until you see:**
```
added XXX packages in XXs
```

### Step 5.3: Create Frontend Environment File

**Check if .env file exists:**
```bash
dir .env
```

**If file not found, create it:**
```bash
copy .env.example .env
```

### Step 5.4: Verify Environment Variables

```bash
notepad .env
```

**Should contain:**
```
REACT_APP_API_URL=http://localhost:5000/api
```

**Save and close**

---

## PART 6: RUNNING THE APPLICATION

### Step 6.1: Start Backend Server

**In the backend command prompt:**

```bash
npm run dev
```

**You should see:**
```
Server running in development mode on port 5000
MongoDB Connected: localhost
```

**✓ Backend is now running!**

**Keep this window open and running**

### Step 6.2: Start Frontend Server

**In the frontend command prompt:**

```bash
npm start
```

**You should see:**
```
Compiled successfully!

You can now view movie-booking-frontend in the browser.

  Local:            http://localhost:3000
  On Your Network:  http://192.168.x.x:3000
```

**✓ Frontend is now running!**

**After a few seconds, your browser should automatically open to:**
```
http://localhost:3000
```

**If browser doesn't open automatically:**
1. Open your web browser
2. Go to: http://localhost:3000

---

## PART 7: TESTING THE APPLICATION

### Step 7.1: View the Landing Page

**You should see:**
- Movie Booking System logo/title
- Navigation bar with: Home, Movies, Login, Register
- Welcome message
- Featured movies (if any)
- Animated robot assistant (bottom right)

### Step 7.2: Register a New User

1. Click **Register** in the navigation bar
2. Fill in the form:
   - Name: Your Name
   - Email: test@example.com
   - Password: Test@123
   - Phone: 1234567890 (optional)
3. Click **Register** button
4. You should be redirected to home page
5. You should see your name in the navigation

### Step 7.3: Login with Admin Account

**To access admin features:**

1. Click **Logout** (if logged in)
2. Click **Login**
3. Enter admin credentials:
   - Email: `admin@moviebooking.com`
   - Password: `Admin@123`
4. Click **Login**
5. You should see **Admin Dashboard** in navigation

### Step 7.4: Browse Movies

1. Click **Movies** in navigation
2. You should see 12 sample movies
3. Each movie card shows:
   - Movie poster
   - Title
   - Genre
   - Language
   - Rating
4. Try the search box at top
5. Try the genre filter

### Step 7.5: View Movie Details

1. Click on any movie card
2. You should see:
   - Large poster
   - Full description
   - Cast and director
   - Duration
   - Available showtimes
3. Click **Book Now** on any showtime

### Step 7.6: Book a Ticket

**Step 1: Select Seats**
1. You'll see the seat map
2. Green seats = Available
3. Red seats = Booked (if any)
4. Click on seats to select (they turn blue)
5. Select 2-3 seats
6. See total amount update
7. Click **Continue to Snacks**

**Step 2: Select Snacks (Optional)**
1. Browse available snacks
2. Use + button to add items
3. See total update
4. Click **Continue** or **Skip**

**Step 3: Payment**
1. Review your booking:
   - Movie name
   - Showtime
   - Selected seats
   - Snacks (if any)
   - Total amount
2. Select payment method
3. Enter card details (dummy data for testing):
   - Card: 4111 1111 1111 1111
   - Expiry: 12/25
   - CVV: 123
4. Click **Pay Now**

**Step 4: Get Ticket**
1. You'll see success message
2. Booking code displayed
3. QR code ticket generated
4. Click **Download Ticket** to save

### Step 7.7: View Your Bookings

1. Click **My Bookings** in navigation
2. You should see all your bookings
3. Each booking shows:
   - Movie name
   - Theater
   - Date and time
   - Seats booked
   - Amount paid
   - Status
4. Click **View Ticket** to see QR code

### Step 7.8: Try the AI Chatbot

1. Look for robot icon at bottom right
2. Click to open chat
3. Try these queries:
   - "Show me action movies"
   - "When is [Movie Name] playing?"
   - "How do I book tickets?"
   - "What snacks are available?"
4. Chatbot will respond with helpful information

### Step 7.9: Access Admin Dashboard

**Login as admin first (see Step 7.3)**

1. Click **Admin Dashboard** in navigation
2. You should see statistics:
   - Total Users
   - Total Movies
   - Total Theaters
   - Total Showtimes
   - Total Bookings
   - Customer Feedback
3. Click on any card to manage that section

**Admin Features to Test:**

**A. Manage Movies**
1. Click **Manage Movies**
2. See list of all movies
3. Click **Add Movie** to add new
4. Click **Edit** on any movie to modify
5. Click **Delete** to remove (soft delete)

**B. Manage Theaters**
1. Click **Manage Theaters**
2. See list of theaters
3. Add/Edit/Delete theaters

**C. Manage Showtimes**
1. Click **Manage Showtimes**
2. Create new showtime:
   - Select movie
   - Select theater
   - Choose date and time
3. System prevents overlapping showtimes

**D. View All Bookings**
1. Click **All Bookings**
2. See bookings from all users
3. Search by booking code
4. Filter by date
5. Click **Export to Excel** to download

**E. Manage Feedback**
1. Click **Manage Feedback**
2. View all customer reviews
3. See ratings and comments

---

## PART 8: COMMON ISSUES AND SOLUTIONS

### Issue 1: Backend won't start

**Error: "Port 5000 is already in use"**

**Solution:**
1. Close the backend terminal
2. Press `Ctrl + Shift + Esc` (Task Manager)
3. Find **Node.js** processes
4. Right-click → End Task
5. Try starting backend again

**OR change the port:**
1. Open backend/.env
2. Change `PORT=5000` to `PORT=5001`
3. Open frontend/.env
4. Change API_URL to `http://localhost:5001/api`
5. Restart both servers

---

### Issue 2: Frontend won't start

**Error: "npm not recognized"**

**Solution:**
1. Restart Command Prompt
2. If still not working, restart computer
3. Verify Node.js installation: `node --version`

**Error: "Module not found"**

**Solution:**
1. Delete node_modules folder
2. Delete package-lock.json file
3. Run `npm install` again

---

### Issue 3: Cannot connect to MongoDB

**Error: "MongooseServerSelectionError"**

**Solution:**
1. Open Services: `Win + R` → `services.msc`
2. Find MongoDB service
3. Right-click → Start
4. Wait 10 seconds
5. Restart backend server

---

### Issue 4: Database is empty

**No movies showing on website**

**Solution:**
1. Go to backend folder
2. Run: `npm run seed`
3. Wait for success message
4. Refresh website

---

### Issue 5: Login not working

**Invalid credentials error**

**Solution:**
1. Make sure you seeded the database
2. Use correct credentials:
   - Admin: admin@moviebooking.com / Admin@123
   - User: user@test.com / User@123
3. Or register a new account

---

### Issue 6: Pages load but no data shows

**Blank screens or loading forever**

**Solution:**
1. Check backend is running (terminal shows "Server running")
2. Check MongoDB is running (services.msc)
3. Check browser console for errors (F12)
4. Verify .env files are correct
5. Clear browser cache (Ctrl + Shift + Delete)

---

### Issue 7: AI Chatbot not responding

**Chatbot shows error message**

**Solution:**
- Chatbot will work in fallback mode without API keys
- For full AI features:
  1. Get Gemini API key from https://makersuite.google.com/app/apikey
  2. Add to backend/.env: `GEMINI_API_KEY=your_key_here`
  3. Restart backend server

---

## PART 9: STOPPING THE APPLICATION

### When you want to stop:

**Stop Frontend:**
1. Go to frontend Command Prompt
2. Press `Ctrl + C`
3. Type: `Y` and press Enter

**Stop Backend:**
1. Go to backend Command Prompt
2. Press `Ctrl + C`
3. Type: `Y` and press Enter

**MongoDB:**
- Can be left running (uses minimal resources)
- Or stop via services.msc

---

## PART 10: RESTARTING THE APPLICATION

**Every time you want to run the project again:**

### Quick Start (Next Time):

**Terminal 1 - Backend:**
```bash
cd "D:\update project\backend"
npm run dev
```

**Terminal 2 - Frontend:**
```bash
cd "D:\update project\frontend"
npm start
```

**Wait for both to start, then open browser:**
```
http://localhost:3000
```

---

## PART 11: USEFUL COMMANDS

### Backend Commands:
```bash
npm run dev          # Start development server
npm run seed         # Seed database with sample data
npm start            # Start production server
```

### Frontend Commands:
```bash
npm start            # Start development server
npm run build        # Create production build
```

### MongoDB Commands (in mongosh):
```bash
mongosh                        # Start MongoDB shell
use moviebooking              # Switch to database
show collections              # List all collections
db.movies.find()              # View all movies
db.users.find()               # View all users
db.bookings.find()            # View all bookings
db.dropDatabase()             # Delete database (careful!)
```

---

## PART 12: PROJECT STRUCTURE

```
movie-booking-system/
│
├── backend/                   # Backend API
│   ├── config/               # Configuration files
│   ├── controllers/          # Business logic
│   ├── middleware/           # Auth, validation
│   ├── models/               # Database schemas
│   ├── routes/               # API endpoints
│   ├── utils/                # Helper functions
│   ├── .env                  # Environment variables
│   ├── package.json          # Dependencies
│   └── server.js             # Main entry point
│
├── frontend/                  # React Frontend
│   ├── public/               # Static files
│   ├── src/
│   │   ├── components/       # Reusable components
│   │   ├── context/          # State management
│   │   ├── pages/            # Page components
│   │   ├── services/         # API calls
│   │   ├── App.js            # Main App component
│   │   └── index.js          # Entry point
│   ├── .env                  # Environment variables
│   └── package.json          # Dependencies
│
└── Documentation files (.md)
```

---

## PART 13: DEFAULT CREDENTIALS

### Admin Account:
- Email: `admin@moviebooking.com`
- Password: `Admin@123`
- Access: Full admin dashboard

### User Account:
- Email: `user@test.com`
- Password: `User@123`
- Access: Regular user features

### Database:
- URL: `mongodb://localhost:27017/moviebooking`
- No authentication by default

---

## PART 14: PORTS USED

- **Frontend:** http://localhost:3000
- **Backend:** http://localhost:5000
- **MongoDB:** localhost:27017
- **API Base:** http://localhost:5000/api

---

## PART 15: TESTING CHECKLIST

✓ Home page loads
✓ Can view movies list
✓ Can view movie details
✓ Can register new user
✓ Can login as user
✓ Can login as admin
✓ Can search movies
✓ Can filter movies
✓ Can view showtimes
✓ Can select seats
✓ Can add snacks
✓ Can complete booking
✓ Can view my bookings
✓ Can download ticket
✓ Chatbot responds
✓ Admin can add movies
✓ Admin can manage theaters
✓ Admin can view bookings
✓ Can export to Excel

---

## CONGRATULATIONS! 🎉

Your Movie Ticket Booking System is now running successfully!

**For more help:**
- Check MongoDB_Manual_Connection_Guide.md
- Check README.md
- Check other documentation files

**Need assistance?**
- Check browser console (F12) for errors
- Check terminal outputs for error messages
- Review this guide's troubleshooting section

---

**Project developed for academic purposes**
**© 2024 Movie Ticket Booking System**
