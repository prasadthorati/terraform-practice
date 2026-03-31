# terraform-practice




When a new message is posted in a Microsoft Teams 
channel called "Leave Requests" in the team called 
"HR Team", automatically extract the message content 
and add a new row to an Excel table called "LeaveData" 
stored in SharePoint Documents library. 

The row should include:
- Employee name from the message
- Leave type from the message
- Leave start date from the message
- Leave end date from the message
- Number of days from the message
- Name of the person who posted the message
- Date and time the message was posted
- Full original message text

After adding the row, send a reply in the same 
Teams channel saying "Your leave has been recorded 
successfully in Excel."
