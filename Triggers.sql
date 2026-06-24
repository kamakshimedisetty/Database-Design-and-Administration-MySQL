use banking;
select * from customers;

use hospital;
insert into patients (name,age,disease)
values('ram',30,'fever');
update patients set age = 40 where patient_id = 1;

delete from patients where patient_id=1;