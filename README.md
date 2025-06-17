 ## 1. What is Postgres?
Answer:Postgres, যা PostgreSQL নামেও পরিচিত, একটি রিলেশনাল ডেটাবেজ ম্যানেজমেন্ট সিস্টেম (RDBMS)। এটি SQL (Structured Query Language) ব্যবহার করে ডেটা পরিচালনা ও সংগঠিত করার জন্য ব্যবহৃত হয়।

## 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Answer:Primary Key হলো একটি টেবিলের প্রতিটি সারির জন্য একটি ইউনিক আইডেন্টিফায়ার (অনন্য সনাক্তকারী)। এটি নিশ্চিত করে যে টেবিলের প্রতিটি রেকর্ডকে আলাদাভাবে এবং নির্ভুলভাবে সনাক্ত করা যায়।

Foreign Key হলো একটি টেবিলের এমন একটি ফিল্ড, যা অন্য একটি টেবিলের Primary Key-এর দিকে ইঙ্গিত করে। যখন দুটি টেবিলের মধ্যে সংযোগ বা সম্পর্ক স্থাপন করা হয়, তখন প্রথম টেবিলের Primary Key দ্বিতীয় টেবিলে Foreign Key হয়ে যায়। টেবিলগুলোর মধ্যে সম্পর্ক বজায় রাখা এবং ডেটার রেফারেন্স সঠিকভাবে মেইনটেইন করার জন্য Foreign Key খুবই গুরুত্বপূর্ণ। সংক্ষেপে, যখন একটি টেবিলের Primary Key অন্য একটি টেবিলে ব্যবহৃত হয়, তখন সেটি সেই টেবিলের Foreign Key হয়ে যায়।

## 3. Explain the purpose of the WHERE clause in a SELECT statement.
Answer:SELECT স্টেটমেন্ট একটি টেবিল থেকে ডেটা বের করে আনার জন্য ব্যবহার করা হয়। WHERE ক্লজ ব্যবহার করা হয় নির্দিষ্ট শর্তের ভিত্তিতে ডেটা ফিল্টার করার জন্য। উদাহরণস্বরূপ, যদি WHERE না দেওয়া হয়, তাহলে টেবিলের সব রেকর্ড দেখানো হবে। আর যদি WHERE ব্যবহার করা হয়, তাহলে শুধুমাত্র যেসব রেকর্ড শর্ত পূরণ করে, সেগুলোই দেখানো হবে। এটি শর্তসাপেক্ষে ডেটা নির্বাচন বা ফিল্টার করার সুযোগ দেয়।

## 4. How can you modify data using UPDATE statements?
Answer:UPDATE স্টেটমেন্ট একটি টেবিলের বিদ্যমান ডেটা পরিবর্তন করার জন্য ব্যবহার করা হয়। এটি নির্দিষ্ট শর্তের ভিত্তিতে একটি বা একাধিক কলামের মান পরিবর্তন করার সুযোগ দেয়।

Syntax: UPDATE students SET cgpa = 3.80 WHERE id = 1;

students is the name of the table.

SET cgpa = 3.80 indicates that the cgpa column should be updated to 3.80.

WHERE id = 1 specifies which row should be updated.

## 5. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL
Answer:

COUNT() : SELECT COUNT(*) FROM cricketer; ---> নির্দিষ্ট শর্ত পূরণকারী সারির সংখ্যা গণনা করে।

SUM(): SELECT SUM(runs) FROM cricketer; ---> একটি সংখ্যামূলক কলামের মোট (যোগফল) হিসাব করে।

AVG() : SELECT AVG() FROM cricketer; ---> একটি সংখ্যামূলক কলামের গড় মান হিসাব করে।
