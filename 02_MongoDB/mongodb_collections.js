use EduSurveyHub_NoSQL

db.createCollection("surveyResponses")
db.createCollection("videoLogs")
db.createCollection("systemLogs")

db.surveyResponses.insertOne({
  studentId: 1,
  studentName: "Ayse Demir",
  surveyId: 1,
  courseName: "Introduction to MongoDB",
  answers: [
    {
      questionId: 1,
      question: "How do you rate the course?",
      answer: 5
    },
    {
      questionId: 2,
      question: "What did you like most?",
      answer: "The practical MongoDB examples"
    }
  ],
  submittedAt: new Date()
})