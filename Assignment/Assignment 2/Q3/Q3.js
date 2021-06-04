var datePlaceHolder = document.getElementById('date');
var currDate = new Date();
var months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
];

var days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
]

datePlaceHolder.innerHTML = 
    "Today's Date : " + 
    days[currDate.getDay()-1] + ", " +
    months[currDate.getMonth()] + " " +
    currDate.getDate() + ", " +
    currDate.getFullYear(); 
;