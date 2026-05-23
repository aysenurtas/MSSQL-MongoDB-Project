use EduSurveyHub_NoSQL

for (let i = 1; i <= 50000; i++) {
  db.surveyResponses.insertOne({
    studentId: Math.floor(Math.random() * 1000) + 1,
    surveyId: Math.floor(Math.random() * 5) + 1,
    courseName: ["Introduction to MongoDB", "Advanced SQL Server", "Python for Data Science"][Math.floor(Math.random() * 3)],
    answers: [
      {
        questionId: 1,
        answer: Math.floor(Math.random() * 5) + 1
      },
      {
        questionId: 2,
        answer: "Sample feedback text"
      }
    ],
    submittedAt: new Date()
  });
}

db.surveyResponses.find({ studentId: 500 }).explain("executionStats")

db.surveyResponses.createIndex({ studentId: 1 })

db.surveyResponses.find({ studentId: 500 }).explain("executionStats")