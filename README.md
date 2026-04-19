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






Act as a Microsoft Power Automate expert and solution architect.

I want to build a fully automated flow in Microsoft Power Automate to send bulk messages to Microsoft Teams Group Chats only (NOT channels).

Requirements:

1. The flow must send a predefined message to hundreds of existing Teams Group Chats.
2. Each group chat is identified using a Chat ID (format: 19:xxx@thread.v2).
3. The Chat IDs are stored in a SharePoint List or Excel table (OneDrive) with a column named "ChatID".
4. The flow must:
   - Read all Chat IDs from the data source
   - Loop through each Chat ID
   - Send a message to each corresponding Teams Group Chat
5. Use the Microsoft Teams action:
   - "Post a message in a chat or channel"
   - Post in: Group Chat (strictly, not channel)
   - Group Chat: dynamically use ChatID
6. Include a Delay (3–5 seconds) between messages to avoid throttling.
7. Support both:
   - "Post as User"
   - "Post as Flow Bot" (fallback if license issues)

Message to Send:

"Please complete the Pre-PIV checklist at your earliest convenience. Kindly confirm once completed. Thank you."

Additional Requirements:

- Provide step-by-step flow creation instructions
- Include exact configuration values for each action
- Explain how to:
  - Enable pagination for large datasets (100+ records)
  - Handle errors like 403 (Forbidden) and 429 (Throttling)
- Ensure the solution works for hundreds of chats efficiently
- Suggest best practices for testing before full execution

Output Format:

1. Flow architecture (Trigger → Actions)
2. Step-by-step implementation
3. Key configurations (tables, loops, Teams action)
4. Common errors and fixes
5. Optimization tips for large-scale usage

Important:

- Do NOT suggest Teams Channels anywhere
- Focus ONLY on Teams Group Chats
- Assume beginner-to-intermediate user level
- Keep the solution practical and production-ready
