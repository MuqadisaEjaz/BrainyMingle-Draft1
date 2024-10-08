import MentorshipRequest from '../Models/MentorshipRequests.js'
import bcrypt from 'bcrypt';
import Student from '../Models/Student.js';
import SessionRequest from '../Models/SessionRequests.js';

const mentorshipRequests = async (req, res) => {
    try {

        const { name, username, email, phoneNumber, budget, password, expertise, skills, preferences } = req.body;
        const mentorUsername = username + 'M02'

        const saltRounds = 10; 
       // Hash the password using bcrypt
        const hashedPassword = await bcrypt.hash(password, saltRounds);

        // Create a new mentorship request document
        const mentorshipRequest = new MentorshipRequest({
          name,
          username:mentorUsername,
          email,
          phoneNumber,
          password:hashedPassword,
          expertise,
          skills,
          budget,
          preferences: {
            gender: preferences.gender, // Array of gender preferences
            mode: preferences.mode, // Array of mode preferences
            session: preferences.session, // Array of session preferences
          },
          status: 'pending',
        });
    
        // Save the mentorship request to the database
        await mentorshipRequest.save();
    
        res.status(201).json({ message: 'Mentorship request submitted successfully' });


    } catch (error) {
      console.error(error);
      res.status(500).send('Server error');
    }
  };


const studentsessionRequests = async (req, res) => {
try{
    const mentorEmail = req.query.email; // Assuming the mentor's email is in the request's user object
    console.log(mentorEmail)
    // Find the session requests for the mentor
    const sessionRequests = await SessionRequest.findOne({ mentorEmail });
    console.log(sessionRequests)
    if (!sessionRequests) {
      return res.status(404).json({ error: 'No session requests found for this mentor' });
    }

    const requestsData = [];

    for (const request of sessionRequests.sessionRequests) {
      // Fetch student name from the Student schema based on student email
      const student = await Student.findOne({ email: request.studentEmail });

      if (!student) {
        return res.status(404).json({ error: 'Student not found' });
      }

      // Create an array to store all sessions for this student
      const sessionsData = [];

      for (const session of request.sessions) {
        sessionsData.push({
          sessionType: session.sessionType,
          time: session.time,
          topic: session.topic,
        });
      }

      // Add student's data and their sessions to the response
      requestsData.push({
        studentName: student.name,
        studentEmail: request.studentEmail,
        sessions: sessionsData,
      });
    }

    res.status(200).json(requestsData);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Server error' });
  }
}


const acceptSessionRequest = async (req, res) => {
  try {
    const { mentorEmail, studentEmail, sessionType, topic, time } = req.body;

    // Find the session request for the mentor
    let existingSessionRequest = await SessionRequest.findOne({ mentorEmail });

    if (existingSessionRequest) {
      // Find the student request in the session request based on studentEmail
      const sessionRequest = existingSessionRequest.sessionRequests.find(
        (request) => request.studentEmail === studentEmail
      );

      if (sessionRequest) {
        // Remove the session detail requested based on sessionType, topic, and time
        sessionRequest.sessions = sessionRequest.sessions.filter(
          (session) =>
            session.sessionType !== sessionType ||
            session.topic !== topic ||
            session.time !== time
        );

        // Save the changes to the database
        await existingSessionRequest.save();

        res.status(200).json({ message: 'Session request accepted successfully' });
      } else {
        res.status(404).json({ message: 'No session request found for the student' });
      }
    } else {
      res.status(404).json({ message: 'No session request found for the mentor' });
    }
  } catch (error) {
    console.error(error);
    res.status(500).send('Server error');
  }
};





// Create a new route for handling session request rejection
const rejectSessionRequest  = async (req, res) => {
  try {
    const { mentorEmail, studentEmail, sessionType, topic, time } = req.body;

    // Find the session request for the mentor
    let existingSessionRequest = await SessionRequest.findOne({ mentorEmail });

    if (existingSessionRequest) {
      // Find the student request in the session request based on studentEmail
      const sessionRequest = existingSessionRequest.sessionRequests.find(
        (request) => request.studentEmail === studentEmail
      );

      if (sessionRequest) {
        // Remove the session detail requested based on sessionType, topic, and time
        sessionRequest.sessions = sessionRequest.sessions.filter(
          (session) =>
            session.sessionType !== sessionType ||
            session.topic !== topic ||
            session.time !== time
        );

        // Save the changes to the database
        await existingSessionRequest.save();

        res.status(200).json({ message: 'Session request rejected successfully' });
      } else {
        res.status(404).json({ message: 'No session request found for the student' });
      }
    } else {
      res.status(404).json({ message: 'No session request found for the mentor' });
    }
  } catch (error) {
    console.error(error);
    res.status(500).send('Server error');
  }
};

  export {mentorshipRequests,studentsessionRequests,acceptSessionRequest,rejectSessionRequest}