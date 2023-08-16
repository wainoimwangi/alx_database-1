/*9. Full creation*/

-- Get the database name from the command line argument
database_name=$1

-- Connect to the MySQL server
mysql -u Precious Banigo -p

-- Check if the table second_table already exists
if [ -e "$database_name"."second_table" ]; then
  echo "Table second_table already exists";
  exit;
fi

-- Create the table second_table
create table if not exists $database_name."second_table" 
(
  id int not null auto_increment,
  name varchar(256) not null,
  score int not null,
  primary key (id)
);

CREATE TABLE second_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  score INT NOT NULL
);

-- Insert multiple rows in the second_table table
insert into $database_name."second_table" 
(id, name, score) values 
(1, "John", 10), 
(2, "Alex", 3), 
(3, "Bob", 14), 
(4, "George", 8);


