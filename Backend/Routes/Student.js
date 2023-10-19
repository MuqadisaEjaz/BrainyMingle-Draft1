import express from 'express'
const router=express.Router()
import { createSessionRequest, createStudent, findMentors, getMyDetails} from '../Controller/Student.js'
import authMiddleware  from '../Middlerware/Auth.js';

// routes of a student
router.post('/add-student',createStudent)
router.post('/session-request',authMiddleware,createSessionRequest)
router.get('/find-mentors',findMentors)
router.get('/mydetails',authMiddleware,getMyDetails)


export default router;