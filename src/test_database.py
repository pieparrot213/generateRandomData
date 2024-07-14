from faker import Faker
from sqlalchemy import create_engine, Column, Integer, String, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

# Initialize Faker
fake = Faker()

# Define the base class for declarative models
Base = declarative_base()

# Define the Companies model
class Companies(Base):
    __tablename__ = 'companies'
    id = Column(Integer, primary_key=True)
    CompanyName = Column(String)
    CompanyAddress = Column(String)
    isActive = Column(Integer)
    insertDate = Column(String)

# Define the ContactDetails model
class ContactDetails(Base):
    __tablename__ = 'contactdetails'
    id = Column(Integer, primary_key=True)
    CompanyId = Column(Integer, ForeignKey('companies.id'))
    ContactId = Column(Integer, ForeignKey('contacts.id'))
    MakeId = Column(Integer, ForeignKey('makes.id'))
    ContactName = Column(String)
    ContactEmail = Column(String)
    ContactPhone = Column(String)
    ContactRole = Column(String)
    type = Column(String)
    Company = relationship('Companies', back_populates='contactdetails')
    Contact = relationship('Contacts', back_populates='contactdetails')
    Make = relationship('Makes', back_populates='contactdetails')

# Establish a relationship between Companies and ContactDetails
Companies.contactdetails = relationship('ContactDetails', order_by=ContactDetails.CompanyId, back_populates='Company')

# Define the ContactDetailInfors model
class ContactDetailInfors(Base):
    __tablename__ = 'contactdetailinfors'
    id = Column(Integer, primary_key=True)
    contactID = Column(Integer, ForeignKey('contactdetails.id'))
    type = Column(String)
    label = Column(String)
    isPrimary = Column(Integer)
    insertDate = Column(String)
    insertUserID = Column(Integer)
    updateDate = Column(String)
    updateUserID = Column(Integer)
    ContactDetail = relationship('ContactDetails', back_populates='contactdetailinfors')

# Establish a relationship between ContactDetails and ContactDetailInfors
ContactDetails.contactdetailinfors = relationship('ContactDetailInfors', order_by=ContactDetailInfors.contactID, back_populates='ContactDetail')

# Define the Contacts model
class Contacts(Base):
    __tablename__ = 'contacts'
    id = Column(Integer, primary_key=True)
    gender = Column(String)
    isActive = Column(Integer)
    insertDate = Column(String)
    insertUserID = Column(Integer)
    updateDate = Column(String)
    updateUserID = Column(Integer)
    ICNo = Column(Integer)
    ICDocID = Column(Integer, ForeignKey('documents.id'))
    photoDocId = Column(Integer, ForeignKey('documents.id'))

# Establish a relationship between Contacts and ContactDetails
Contacts.contactdetails = relationship('ContactDetails', order_by=ContactDetails.ContactId, back_populates='Contact')

# Define the Documents model
class Documents(Base):
    __tablename__ = 'documents'
    id = Column(Integer, primary_key=True)
    UId = Column(Integer)
    fileName = Column(String)
    filePath = Column(String)
    insertDate = Column(String)
    insertUserID = Column(Integer)
    ic_contacts = relationship('Contacts', foreign_keys='Contacts.ICDocID', backref='IC_Document')
    photo_contacts = relationship('Contacts', foreign_keys='Contacts.photoDocId', backref='Photo_Document')

# # Establish relationships between Documents and Contacts
# Documents.Contacts = relationship('Contacts', order_by=Contacts.ICDocID, back_populates='Document')
# Documents.Contacts = relationship('Contacts', order_by=Contacts.photoDocId, back_populates='Document')

# Define the CMB model
class CMB(Base):
    __tablename__ = 'cmb'
    id = Column(Integer, primary_key=True)
    CompanyId = Column(Integer, ForeignKey('companies.id'))
    MakeId = Column(Integer, ForeignKey('makes.id'))
    BranchId = Column(Integer, ForeignKey('branchs.id'))  # Ensure this column is defined
    Company = relationship('Companies', back_populates='cmb')
    Make = relationship('Makes', back_populates='cmb')
    Branch = relationship('Branchs', back_populates='cmb')

# Establish a relationship between Companies and CMB
Companies.cmb = relationship('CMB', order_by=CMB.CompanyId, back_populates='Company')

# Define the Makes model
class Makes(Base):
    __tablename__ = 'makes'
    id = Column(Integer, primary_key=True)
    makeName = Column(String)
    makeCode = Column(String)
    displayName = Column(String)
    insertDate = Column(String)
    insertUserID = Column(Integer)
    updateDate = Column(String)
    updateUserID = Column(Integer)

# Establish a relationship between Makes and ContactDetails
Makes.contactdetails = relationship('ContactDetails', order_by=ContactDetails.MakeId, back_populates='Make')

# Establish a relationship between Makes and CMB
Makes.cmb = relationship('CMB', order_by=CMB.MakeId, back_populates='Make')

# Define the Branchs model
class Branchs(Base):
    __tablename__ = 'branchs'
    id = Column(Integer, primary_key=True)
    companyId = Column(Integer)
    branchName = Column(String)
    branchCode = Column(String)
    phoneNo = Column(String)
    faxNo = Column(String)
    isActive = Column(Integer)
    insertDate = Column(String)
    insertUserID = Column(Integer)
    updateDate = Column(String)
    updateUserID = Column(Integer)

# Establish a relationship between Branchs and CMB
Branchs.cmb = relationship('CMB', order_by=CMB.Branch, back_populates='Branch')

# Define the UserRoles model
class UserRoles(Base):
    __tablename__ = 'userroles'
    id = Column(Integer, primary_key=True)
    CMBId = Column(Integer, ForeignKey('cmb.id'))
    CMB = relationship('CMB', back_populates='userroles')

# Establish a relationship between CMB and UserRoles
CMB.userroles = relationship('UserRoles', order_by=UserRoles.CMBId, back_populates='CMB')

# Define the Users model
class Users(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    userName = Column(String)
    password = Column(String)
    email = Column(String)
    UserImageDocID = Column(Integer, ForeignKey('documents.id'))
    isActive = Column(Integer)
    insertDate = Column(String)
    insertUserID = Column(Integer)
    updateDate = Column(String)
    updateUserID = Column(Integer)
    userContact = relationship('UsersContacts', back_populates='user')
    Document = relationship('Documents', back_populates='Users')

# Establish a relationship between Documents and Users
Documents.Users = relationship('Users', order_by=Users.UserImageDocID, back_populates='Document')

# Define the UsersContacts model
class UsersContacts(Base):
    __tablename__ = 'userscontacts'
    id = Column(Integer, primary_key=True)
    contactDetailID = Column(Integer, ForeignKey('contactdetails.id'))
    CMDId = Column(Integer, ForeignKey('cmb.id'))
    UserId = Column(Integer, ForeignKey('users.id'))  # Ensure this points to the 'users' table primary key
    CompanyId = Column(Integer)
    MakeId = Column(Integer)
    BranchId = Column(Integer)
    isActive = Column(Integer)
    flag = Column(String)
    insertDate = Column(String)
    insertUserID = Column(Integer)
    updateDate = Column(String)
    updateUserID = Column(Integer)
    user = relationship('Users', back_populates='userContact')
    ContactDetail = relationship('ContactDetails', back_populates='userContact')
    CMB = relationship('CMB', back_populates='userContact')
    User = relationship('Users', back_populates='userContact')

# Establish a relationship between Users and UsersContacts
Users.userContact = relationship('UsersContacts', order_by=UsersContacts.UserId, back_populates='User')

# Establish a relationship between ContactDetails and UsersContacts
ContactDetails.userContact = relationship('UsersContacts', order_by=UsersContacts.contactDetailID, back_populates='ContactDetail')

# Establish a relationship between CMB and UsersContacts
CMB.userContact = relationship('UsersContacts', order_by=UsersContacts.CMDId, back_populates='CMB')

# Create an SQLite database
engine = create_engine('sqlite:///data.db')
Base.metadata.create_all(engine)
Session = sessionmaker(bind=engine)
session = Session()

# Generate fake data for companies
companies = []
for _ in range(5):
    company = Companies(CompanyName=fake.company(), CompanyAddress=fake.address(), isActive=1, insertDate=fake.date_time())
    session.add(company)
    companies.append(company)

session.commit()

# Generate fake data for contactDetails
contactDetails = []
for company in companies:
    for _ in range(5):
        contactDetail = ContactDetails(CompanyId=company.id, ContactId=1, MakeId=1, ContactName=fake.name(), ContactEmail=fake.email(), ContactPhone=fake.phone_number(), ContactRole=fake.job(), type='Primary')
        session.add(contactDetail)
        contactDetails.append(contactDetail)
session.commit()

# Generate fake data for contactDetailInfors
contactDetailInfors = []
for contactDetail in contactDetails:
    for _ in range(5):
        contactDetailInfor = ContactDetailInfors(contactID=contactDetail.id, type='Email', label=fake.email(), isPrimary=1, insertDate=fake.date_time(), insertUserID=1, updateDate=fake.date_time(), updateUserID=1)
        session.add(contactDetailInfor)
        contactDetailInfors.append(contactDetailInfor)
session.commit()

# Generate fake data for documents
documents = []
for _ in range(5):
    document = Documents(UId=1, fileName=fake.file_name(), filePath=fake.file_path(), insertDate=fake.date_time(), insertUserID=1)
    session.add(document)
    documents.append(document)
session.commit()

# Generate fake data for contacts
contacts = []
for _ in range(5):
    contact = Contacts(gender = fake.passport_gender(), isActive=1, insertDate=fake.date_time(), insertUserID=1, updateDate=fake.date_time(), updateUserID=1, ICNo=fake.random_int(), ICDocID=1, photoDocId=1)
    session.add(contact)
    contacts.append(contact)
session.commit()

# Generate fake data for makes
makes = []
for _ in range(5):
    make = Makes(makeName=fake.company(), makeCode=fake.random_int(), displayName=fake.company(), insertDate=fake.date_time(), insertUserID=1, updateDate=fake.date_time(), updateUserID=1)
    session.add(make)
    makes.append(make)
session.commit()

# Generate fake data for branchs
branchs = []
for _ in range(5):
    branch = Branchs(companyId=1, branchName=fake.company(), branchCode=fake.random_int(), phoneNo=fake.phone_number(), faxNo=fake.phone_number(), isActive=1, insertDate=fake.date_time(), insertUserID=1, updateDate=fake.date_time(), updateUserID=1)
    session.add(branch)
    branchs.append(branch)
session.commit()

# Generate fake data for cmb
cmbs = []
for _ in range(5):
    cmb = CMB(CompanyId=1, MakeId=1, BranchId=1)
    session.add(cmb)
    cmbs.append(cmb)
session.commit()

# Generate fake data for userRoles
userRoles = []
for _ in range(5):
    userRole = UserRoles(CMBId=1)
    session.add(userRole)
    userRoles.append(userRole)
session.commit()

# Generate fake data for users
users = []
for _ in range(5):
    user = Users(userName=fake.user_name(), password=fake.password(), email=fake.email(), UserImageDocID=1, isActive=1, insertDate=fake.date_time(), insertUserID=1, updateDate=fake.date_time(), updateUserID=1)
    session.add(user)
    users.append(user)
session.commit()

# Generate fake data for usersContacts
usersContacts = []
for user in users:
    for _ in range(5):
        userContact = UsersContacts(contactDetailID=1, CMDId=1, UserId=user.id, CompanyId=1, MakeId=1, BranchId=1, isActive=1, flag='Primary', insertDate=fake.date_time(), insertUserID=1, updateDate=fake.date_time(), updateUserID=1)
        session.add(userContact)
        usersContacts.append(userContact)
session.commit()

print("Companies and their ContactDetails:")
for company in session.query(Companies).all():
    print(f"Company: {company.CompanyName}, ContactDetails: {[contactDetail.ContactName for contactDetail in company.contactdetails]}")