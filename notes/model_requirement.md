# Models needed

--------------------------------------------------------------------------------

- Agent
  - Contact_ID
  - Organization


- House
  - Tenant_ID
  - House_Number
  - Billings_ID
  - Notes
  - Property_ID


- Statements
  - Category_ID
  - Amount
  - Date
  - Description

- Category
  - type
  - Name

- Tenant
  - Contact_ID
  - Billings_ID
  - House_ID
  - Agent_ID


- Contact
  - first_name
  - surname
  - mobile_phone_number
  - email_address


- Property
  - Building_Name
  - Address_ID
  - Property_type


- Address
  - City
  - Erf
  - Street_address_number
  - Street_name
  - Postal_code
  - Country
  - Province
