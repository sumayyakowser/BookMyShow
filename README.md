##  BookMyShow DB Design & Query Solution

### ✅ Overview

This PR implements a normalized database schema and query solution for a movie ticketing platform similar to BookMyShow.

---

###  What’s Included

#### 1. **Schema Design (`schema.sql`)**

* Tables: Movie, Theatre, Screen, Show, Seat
* Proper PK–FK relationships
* Follows **1NF, 2NF, 3NF, BCNF**
* Includes constraints and indexes
* Safe re-runnable script

#### 2. **Sample Data (`data.sql`)**

* Realistic sample entries
* Covers multiple theatres, screens, and shows

#### 3. **Queries (`queries.sql`)**

* ✅ P2 Solution: Fetch shows by theatre & date
* ➕ Bonus queries:

  * Next 7 days shows
  * Show count per movie

---

### 🧠 Design Highlights

* Eliminated redundancy via normalization
* Ensured referential integrity using foreign keys
* Added indexing for optimized query performance
* Designed extensible schema for future features (booking, payments, seat selection)

---

### ▶️ How to Run

```bash
mysql -u root -p < schema.sql
mysql -u root -p < data.sql
mysql -u root -p < queries.sql
```

---

### 🚀 Outcome

* Fully functional relational schema
* Optimized queries for show retrieval
* Production-ready and scalable foundation
