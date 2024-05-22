# date helping module - usefull with usermodule

from datetime import datetime

# get todays date into tuple (dd, mm, yy)
def getToday():
    now = datetime.now()
    return (now.day, now.month, now.year)

# from a tuple date, then adds a month. Won't go ahead the day 27
def addMonths(date, months):
    day, month, year = date[0], date[1], date[2]
    nextday, nextmonth, nextyear = day, 1, year
    while months > 12:
        nextyear+=1
        months-=12
    if month + months > 12:
        nextmonth = months - (12-month)
        nextyear += 1
    else:
        nextmonth = month+months
    if day > 27 :
        nextday = 27
    return ( nextday, nextmonth, nextyear )

# dummy func to know if it's time or not. It won't return the exact time left, but if it returns (0,0,0),
# that means time is over.
def compareDates(date1, date2):
    day1, month1, year1 = date1[0], date1[1], date1[2]
    day2, month2, year2 = date2[0], date2[1], date2[2]
    yl, ml, dl = 0, 0, 0
    if year2 > year1:
        yl = year2 - year1
        return (yl, ml, dl)
    if month2 > month1:
        ml = month2 - month1
        return (yl, ml, dl)
    if day2 > day1:
        dl = day2 - day1
        return (yl, ml, dl)
    return False

getDateStr = lambda date : str(date[0])+'/'+str(date[1])+'/'+str(date[2])
isTimeLeft = lambda date1, date2 : compareDates(date1, date2) != False

def test():
    print('--------- TESTING ----------')
    today = (16,11,2023) #getToday()
    print('today is : ', today)
    nextday = (15,11,2023) #getToday() #addMonths(today, 14)
    print('after one month, the day is : ', nextday)
    print('Today in letters : ', getDateStr(today))
    print('Still time ? ', isTimeLeft(today, nextday))
    
test()