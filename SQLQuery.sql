select DISTINCT c.*
from Pupils p
inner join TeachersPupils pc on p.PupilID = pc.PupilID
inner join Teachers c on pc.TeacherID = c.TeacherID
Where pc.PupilID = p.PupilID AND p.FirstName = 'Giorgi'