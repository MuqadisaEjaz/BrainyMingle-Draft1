import express from 'express'
const router=express.Router()
import { mentorshipRequests} from '../Controller/Mentor.js'


// routes of a mentor
router.post('/mentorship-request',mentorshipRequests)


export default router;