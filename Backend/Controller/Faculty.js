import MentorshipRequest from '../Models/MentorshipRequests.js'
import Mentor from '../Models/Mentor.js';
import Faculty from '../Models/Faculty.js'
import bcrypt from 'bcrypt';
import nodemailer from 'nodemailer';
  
  const getmentorshipRequests = async (req, res) => {

    try {
        const mentorshipRequests = await MentorshipRequest.find();
        res.status(200).json(mentorshipRequests);
      } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred while fetching mentorship requests' });
      }

  }

 
const addFaculty = async (req, res) => {
    try {
      const { name, email, password } = req.body;

      const saltRounds = 10; 
      // Hash the password using bcrypt
      const hashedPassword = await bcrypt.hash(password, saltRounds);

      // Create a new user instance
      const newUser = new Faculty({
        name,
        email,
        password:hashedPassword,
      });
  
      // Save the user to the database
      const savedUser = await newUser.save();
  
      // Return the saved user as a JSON response
      res.status(201).json(savedUser);
    } catch (error) {
      console.error(error);
      res.status(500).send('Server error');
    }
  };


  

//   const emailTransporter = nodemailer.createTransport({
//     service: 'Gmail',
//     auth: {
//       user: 'muqadisa19@gmail.com',
//       pass: 'miqi0000',
//     },
//   });
  
//   // Function to send an email notification to a mentor
//   async function sendNotificationToMentor(mentorEmail, status) {
//     const mailOptions = {
//       from: 'muqadisa19@gmail.com',
//       to: mentorEmail,
//       subject: `Mentorship Request ${status} Notification`,
//       text: `Your mentorship request has been ${status}.`,
//     };
  
//     try {
//       await emailTransporter.sendMail(mailOptions);
//       console.log(`Notification sent to ${mentorEmail}`);
//     } catch (error) {
//       console.error(`Error sending notification to ${mentorEmail}: ${error}`);
//     }
//   }
  

  const approveMentors = async (req, res) => {

       // const _id = req.params.requestId;
        const { status ,_id} = req.body;
      
        try {
          const mentorshipRequest = await MentorshipRequest.findById(_id);
      
          if (!mentorshipRequest) {
            return res.status(404).json({ error: 'Mentorship request not found' });
          }
      
          if (status === 'accepted') {
            // Create a new mentor document from the mentorship request data
            const mentorData = {
              name: mentorshipRequest.name,
              username: mentorshipRequest.username,
              email: mentorshipRequest.email,
              phoneNumber: mentorshipRequest.phoneNumber,
              password: mentorshipRequest.password,
              expertise: mentorshipRequest.expertise,
              skills: mentorshipRequest.skills,
              preferences: {
                gender: mentorshipRequest.preferences.gender, // Array of gender preferences
                mode: mentorshipRequest.preferences.mode, // Array of mode preferences
                session: mentorshipRequest.preferences.session, // Array of session preferences
              },
            };
      
            // Save the mentor to the database
            const mentor = new Mentor(mentorData);
            await mentor.save();
           // sendNotificationToMentor(mentorshipRequest.email, 'accepted');
          }
      
          // Remove the mentorship request from the database
          await MentorshipRequest.deleteOne({ _id: _id });
         // sendNotificationToMentor(mentorshipRequest.email, 'rejected');
          
          res.status(200).json({ message: `Mentorship request ${status} successfully` });
      
      } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred while fetching mentorship requests' });
      }

  }


  export {getmentorshipRequests,approveMentors,addFaculty}