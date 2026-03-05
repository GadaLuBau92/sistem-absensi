// script.js

// Function to retrieve current date and time in UTC
function getCurrentDateTime() {
    const now = new Date();
    return now.toISOString().slice(0, 19).replace('T', ' ');
}

// Function to mark attendance
function markAttendance(studentId) {
    const timestamp = getCurrentDateTime();
    console.log(`Attendance marked for Student ID: ${studentId} at ${timestamp}`);
    // Additional logic to save attendance data to database or file
}

// Example usage
markAttendance('12345');
