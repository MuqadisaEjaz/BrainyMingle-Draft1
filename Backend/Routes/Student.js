import express from 'express'
const router=express.Router()
import { createSessionRequest, createStudent, findMentors} from '../Controller/Student.js'


// routes of a student
router.post('/add-student',createStudent)
router.post('/session-request',createSessionRequest)
router.get('/find-mentors',findMentors)


export default router;