# project-2

# For the ETL mini project, we worked together to practice building an ETL pipeline using Python, Pandas, and Python dictionary methods/ regular expressions to extract and transform data. 
# For the category and subcategory dataframe, we first started out by reading the crowdfunding.xlsx. Next, we split category & subcategory into category and subcategory columns by using .split(/). The unique category and subcategory elements were put into lists. Then, the category_id and subcategory_id lists were created by using list comprehensions. The category_df and subcategory_df dataframes were created to display the assign the ids to the unique category and subcategory lists made previously. After creating the dataframes, we exported them to CSVs (category.csv, subcategory.csv)
# For the campaign dataframe, we first started out by creating a copy of the crowd_funding_df. We renamed the blurb, launched_at, and deadline columns. We converted the goal and pledged columns to floats and the launched_date and end_date columns to datetime format. We merged the campaign dataframe, category dataframe, and subcategory dataframe. Before exporting the campaign dataframe to a CSV (campaign.csv), we cleaned the dataframe by only keeping the appropriate columns ('cf_id','contact_id','company_name', 'description','goal','pledged','outcome', 'backers_count','country','currency', 'launched_date','end_date','category_id','subcategory_id'). 
# For the contacts dataframe, we used options 1 of using pandas to create the contacts dataframe. We iterated through the contact_info_df and converted each row to a dicitionary, then printed the list of values for each row. Then, we created a dataframe (contact_info) with columns contact_id, name, email. And, we split the name column into first and last name and reordered the columns. We validated the column data types before exporting to a CSV (contacts.csv). 

# We used the CSV file data to create an ERD and table schema. Finally, we uploaded the CSV file data into a Postgres database. The category.csv, subcategory.csv, and contacts.csv should all be imported to the tables prior to importing the campaign.csv. 
    What to upload where:
        category.csv to categories table
        subcategory.csv to subcategories table
        contacts.csv to contacts table
        campaign.csv to campaigns table

# ERD
    campaign
    -
    cf_id PK int
    contact_id int FK - contacts.contact_id
    company_name string
    description string
    goal int
    pledged int
    outcome string
    backers_count int
    country string
    currency string
    launch_date datetime
    end_date datetime 
    category_id string FK >- category.category_id
    subcategory_id string FK >- subcategory.subcategory_id

    category 
    -
    category_id PK string
    category string 

    subcategory
    -
    subcategory_id PK string
    subcategory string

    contacts
    -
    contact_id PK int
    first_name string
    last_name string 
    email string