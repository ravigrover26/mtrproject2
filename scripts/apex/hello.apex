Integer month = System.today().month();
if (month == 12 || month == 1 || month == 2) {
    System.debug('It isWinter');
} else if (month == 3 || month == 4 || month == 5) {
    System.debug('It is Spring');
} else if (month == 6 || month == 7 || month == 8) {
    System.debug('It is Summer');
} else if (month == 9 || month == 10 || month == 11) {
    System.debug('It is Fall');
} else {
    System.debug('Invalid month');
}