import mongoose from 'mongoose'

const mentorSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  username: {
    type: String,
    unique: true,
    required: true,
  },
  email: {
    type: String,
    unique: true,
    required: true,
  },
  phoneNumber: {
    type: String,
    required: true,
  },
  password: {
    type: String,
    required: true,
  },
  expertise: {
    type: [String],
  },
  skills: {
    type: [String],
  },
  preferences: {
    gender: {
      type: [String],
    },
    mode: {
      type: [String],
    },
    session: {
      type: [String],
    },
  },
});

const Mentors = mongoose.model('Mentors', mentorSchema);

export default  Mentors;
