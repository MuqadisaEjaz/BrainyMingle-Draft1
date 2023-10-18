import express from 'express'
const router=express.Router()
import { createSessionRequest, createStudent} from '../Controller/Student.js'


// routes of a studenr
router.post('/add-student',createStudent)
router.post('/session-request',createSessionRequest)


export default router;