# DATABASES FALL 2024 NOTES

## AUG 21
**Data Structure**
Btrees are some of the most common ways to store data in DBMS.

**Data Model**
Is a conceptual model that organizes elements of data and standardizes how they relate to one another.

### Relational DBMS (RDBMS)
Data is stored in "tables". Relationships between tables can be mapped. Data in those "tables" must conform to a specific schema. For example, data can have some members specified as *requiring* a value while for others the value is optional.
- simple
- flexible data model 
- mature

- easy to make modeling mistakes
- joins are expensive (joins are connections between tables)
- it can be slower and harder to scale

### Key Value
- usually fits in memory
- very fast writes and reads
- flexible data

- limited query support
- limitations of hash table

### Document Data Model
- easy to scale

## AUG 26
**Architecture**
N-Tier Architectures break an application into different components or layers called tiers. Separation can be physical or logical.

**Monolith** slang for an application that does everything.

Each distinct separation is called a **tier**. What is or isn't considered a "tier" is a bit vague.

**Schema**
A blueprint or definition of a structure.

**Instance**
An instance is an example of a Schema.

**Data Modeling**
Aims to describe data contained in the database, relationships between data items, and constraints on data.

### Data Model
A conceptual representation of data and the relationships between different types of data.

**Conceptual Model**
Defines what will need to be stored and what the relationships and actions between them are.

**Logical Model**
Model of the data according to the view of the DBMS.

## AUG 28

