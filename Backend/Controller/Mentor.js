import MentorshipRequest from '../Models/MentorshipRequests.js'
import bcrypt from 'bcrypt';

const mentorshipRequests = async (req, res) => {
    try {

        const { name, username, email, phoneNumber, password, expertise, skills, preferences } = req.body;
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
          preferences: {
            gender: preferences.gender, // Array of gender preferences
            mode: preferences.mode, // Array of mode preferences
            session: preferences.session, // Array of session preferences
          },
          status: 'pending', // Initialize status as 'pending'
        });
    
        // Save the mentorship request to the database
        await mentorshipRequest.save();
    
        res.status(201).json({ message: 'Mentorship request submitted successfully' });


    } catch (error) {
      console.error(error);
      res.status(500).send('Server error');
    }
  };


  export {mentorshipRequests}