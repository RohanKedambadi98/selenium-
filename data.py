import pymysql as mysql
import datetime
conn= mysql.connect(host='localhost',
                             user='root',
                             password='root',
                             db='data',
                             charset='utf8mb4',
                             cursorclass=mysql.cursors.DictCursor)

cur=conn.cursor()
i=int(1)


id=[]
country=[]
event_name=[]
profile_image=[]
banner=[]
event_start_date=[]
event_end_date=[]
address_line1=[]
address_line2=[]
pincode=[]
state=[]
city=[]
full_address=[]
event_start_time=[]
event_end_time=[]
description=[]

while i<=2:
  cur.execute('select * from articles2 where id=%s',i)
  res=cur.fetchone()
  id.append(res.get('id'))
  country.append(res.get('country'))
  event_name.append(res.get('event_name'))
  profile_image.append(res.get('profile_image'))
  banner.append(res.get('banner'))
  event_start_date.append(res.get('event_start_date'))
  event_end_date.append(res.get('event_end_date'))
  address_line1.append(res.get('address_line1'))
  address_line2.append(res.get('address_line2'))
  pincode.append(res.get('pincode'))
  state.append(res.get('state'))
  city.append(res.get('city'))
  full_address.append(res.get('full_address'))
  event_start_time.append(res.get('event_start_time'))
  event_end_time.append(res.get('event_end_time'))
  description.append(res.get('description'))

  i=i+1
f = '%d/%m/%Y'


for i in range(0,len(event_end_date)):
  event_end_date[i]=event_end_date[i].strftime(f)
  event_start_date[i]=event_start_date[i].strftime(f)

print(event_start_date[0])
print(event_end_date[0])