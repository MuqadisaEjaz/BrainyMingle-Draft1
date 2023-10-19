import express from 'express'
const router=express.Router()
import { acceptSessionRequest, mentorshipRequests, rejectSessionRequest, studentsessionRequests} from '../Controller/Mentor.js'


// routes of a mentor
router.post('/mentorship-request',mentorshipRequests)


router.get('/get-session-request',studentsessionRequests)
router.post('/accept-sessionrequest',acceptSessionRequest)
router.post('/reject-sessionrequest',rejectSessionRequest)

export default router;