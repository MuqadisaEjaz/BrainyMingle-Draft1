import SessionRequest from '../Models/SessionRequests.js';
import Student from '../Models/Student.js'
import bcrypt from 'bcrypt';
import Mentors from '../Models/Mentor.js';

const createStudent = async (req, res) => {
    try {

    const { name, username, email, phoneNumber, password, programmingDomains, programmingLanguages, challenges, preferences } = req.body;
    console.log(programmingDomains)
    console.log(preferences)

    const saltRounds = 10; 
    // Hash the password using bcrypt
     const hashedPassword = await bcrypt.hash(password, saltRounds);
    const studentUsername = username + 'S01';

    // Create a new student document
    const student = new Student({
      name,
      username: studentUsername,
      email,
      phoneNumber,
      password:hashedPassword,
      programmingDomains, // Array of domains
      programmingLanguages, // Array of languages
      challenges, // Array of challenges
      preferences: {
        gender: preferences.gender, // Array of gender preferences
        mode: preferences.mode, // Array of mode preferences
        session: preferences.session, // Array of session preferences
      },
    });

    // Save the student to the database
    await student.save();

    res.status(201).json({ message: 'Student registered successfully' });



    } catch (error) {
      console.error(error);
      res.status(500).send('Server error');
    }
  };

  
  const createSessionRequest = async (req, res) => {
    try {
      const { mentorEmail, sessionRequests } = req.body;
      const studentEmail=req.body.email;
      console.log(studentEmail)

      console.log(sessionRequests)
      // Find the existing session request for the mentor
      let existingSessionRequest = await SessionRequest.findOne({ mentorEmail });
  
      // If there's no existing session request, create a new one
      if (!existingSessionRequest) {
        existingSessionRequest = new SessionRequest({
          mentorEmail,
          sessionRequests: [],
        });
      }
  
      // Iterate through the new session requests
      for (const newRequest of sessionRequests) {
        const { studentEmail, sessionType, time, topic } = newRequest;
  
        // Check if the student email already exists in the existing session requests
        const existingStudentRequest = existingSessionRequest.sessionRequests.find(
          (request) => request.studentEmail === studentEmail
        );
  
        if (existingStudentRequest) {
          // Increment the session limit for the existing student
          if (existingStudentRequest.sessionLimit) {
            existingStudentRequest.sessionLimit += 1;
          } else {
            existingStudentRequest.sessionLimit = 1;
          }
  
          // Check if the session limit is not exceeded
          if (existingStudentRequest.sessionLimit > 3) {
            // The session limit is exceeded for this student, return an error message
            return res.status(400).json({ error: 'Session request limit reached for this student' });
          }
  
          // Add the new session to the existing student's request
          existingStudentRequest.sessions.push({ sessionType, time, topic });
        } else {
          // If the student email doesn't exist, create a new student request
          existingSessionRequest.sessionRequests.push({
            studentEmail,
            sessionLimit: 1, // Initialize the session limit for the new student
            sessions: [{ sessionType, time, topic }],
          });
        }
      }
  
      // Save the updated session request to the database
      await existingSessionRequest.save();
  
      res.status(201).json({ message: 'Session request updated successfully' });
    } catch (error) {
      console.error(error);
      res.status(500).send('Server error');
    }
  };
  
  
  
  
  const findMentors = async (req, res) => {
    try {
      const mentors = await Mentors.find().select('name email expertise budget');
      res.status(200).json(mentors);
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'An error occurred while fetching mentorship requests' });
    }
  }

  const getMyDetails = async (req, res) => {

    try {
      const email=req.body.email;
      console.log(email)
      const mentors = await Student.findOne({email});
      res.status(200).json(mentors);
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'An error occurred while fetching mentorship requests' });
    }
  }
  export {createStudent,createSessionRequest,findMentors,getMyDetails}