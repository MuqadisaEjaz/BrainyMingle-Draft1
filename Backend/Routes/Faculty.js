import express from 'express'
const router=express.Router()
import { addFaculty, approveMentors, getmentorshipRequests} from '../Controller/Faculty.js'


// routes of a faculty
router.post('/add-faculty',addFaculty)
router.get('/getmentorship-requests',getmentorshipRequests)
router.post('/approve-mentors',approveMentors)

export default router;