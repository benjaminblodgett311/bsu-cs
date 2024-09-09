# DATABASES FALL 2024 NOTES

## AUG 21
**Data Structure**
B-trees are some of the most common ways to store data in DBMS.

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

## SEP 4
**Chen's Notation**

**Disjointness** constraints can ensure an entity can only be a member of one subclass.
If an entity can be a member of more than one subclass then the specialization is **overlapping**.
In **total specialization**, a specific specialization is required. One cannot store a vague archetype in the system.
**Field** database row/column entry.

**UML Diagrams**

- whether a field is null: Chen's Notation can't show whether a field can be null or what it's possible values are, but the UML Diagram can.

## SEP 9

### Relational Data Model

- Relational databases store data in rows
- Operations are row-wise
- Tables have a strict structure defined by a table schema

A **Domain** is a set of all possible values

- commonly specified by data type

**Atomic Values** are indivisible building blocks of database models

**Normalization** is the process of preventing duplicate data

A **Relation Schema** is used to describe a relation

- Relation schema is made up of a relation name $R$ and a list of attributes $A_1, A_2, \dots, A_n$
- Generically written as $R(A_1, A_2, \dots, A_n)$
- Such as $Person(ID,name,email,phone, addresses)$

- In theory, the relational model defines every row as unique and uniquely identifiable

**Degree** is the number of rows in a table while **Cardinality** is the number of columns

**Tuples** are immutable

- Technical: Tuples > Rows > Records > Observations
- Nontechnical: Records > Observations > Rows > Tuples

**Keys** are columns whose values are used to identify a row

**Unique Keys** must uniquely identify a row

- A key may be a unique identifier in one instance but not for the relation

A **Superkey** is a set of attributes that uniquely identify an entity/row

A **Candidate Key** is a superkey that does not contain extra attributes

The **Primary Key** is the chosen candidate key

- usually we can add a primary key by specifying that it is not null and unique

The **Foreign Key** is a column or group of columns in a relational database table that must match a value in another table
