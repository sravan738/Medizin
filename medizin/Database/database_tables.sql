

-------------------------------------------------------
CREATE TABLE  USER_CRD ( -- USER CREDENTIALS
    ID numeric(18, 0) IDENTITY(1,1) NOT NULL, -- ID TAKEN FROM ID_GNTR TABLE
    USERNAME VARCHAR(30), -- FULL NAME OF USER
    LOGIN_ID VARCHAR(30), -- USERID FOR LOGIN
    E_PASSWORD VARCHAR(30), -- ENCRYPTED PASSWORD FOR SECURITY
    ACTIVE_STAT tinyint NOT NULL,
	PRIMARY KEY (ID)
);

--------------------------------------------------------

CREATE TABLE  USR_CNT_DTLS ( -- USER CONTACT DETAILS
    ID VARCHAR(30) not null, -- ID TAKEN FROM ID_GNTR TABLE
    C_NAME VARCHAR(30), -- CONTACT NAME
    CONTACT_NO VARCHAR(15), -- CONTACT NUMBER
    EMAIL_ID VARCHAR(30), -- EMAIL-ID
    ADDRESS VARCHAR(100), -- ADDRESS FIELD
    PRIMARY KEY (ID)
);

----------------------------------------------------------

CREATE TABLE USER_DTLS (

ID VARCHAR(10) NOT NULL,
CONTACTNAME VARCHAR(30),
ORGANISATION VARCHAR(100),
CONT_NO VARCHAR(20),
CONT_NO2 VARCHAR(20),
EMAIL VARCHAR(20),
ADDRS VARCHAR(100),
CITY VARCHAR(20),
STATE VARCHAR(20),
GSTIN VARCHAR(20),
FSSAI VARCHAR(30),
USERTYP VARCHAR(10)
)

------------------------------------------------------------

CREATE TABLE PRODUCT_MST (

ID [numeric](18, 0) IDENTITY(1,1) NOT NULL,
PRODNAME VARCHAR(50),
SUPPLEMENTS VARCHAR(100),
REMARKS VARCHAR(200),
IMGNAME VARCHAR(40),
IMGPATH VARCHAR(200),
COMPNAME VARCHAR(50)

)

-------------------------------------------------------------

CREATE TABLE SUPPPROD(

ID [numeric](18, 0) IDENTITY(1,1) NOT NULL,
SUPPID VARCHAR(10),
PRODID VARCHAR(10)

)

--------------------------------------------------------------


CREATE TABLE STOCKIN_HDR(

ID VARCHAR(20) NOT NULL UNIQUE,
SUPPID VARCHAR(10),
RECVDATE DATETIME,
BILLNO VARCHAR(15),
MODE VARCHAR(10),
BILLAMOUNT VARCHAR(10),
ITEMSTOTAL VARCHAR(5)


)

--------------------------------------------------------------

CREATE TABLE STOCKIN_ITEMS(

ID NUMERIC(18,0) IDENTITY(1,2) NOT NULL,
HEDID VARCHAR(10),
HSNCODE VARCHAR(20),
PRODID VARCHAR(10),
BATCHNO VARCHAR(20),
EXPDT DATETIME,
MFDT DATETIME,
PACKSIZE INT,
SPRICE VARCHAR(10),
QUANTITY NUMERIC(18,0),
NETPRICE VARCHAR(10),
CGST VARCHAR(10),
SGST VARCHAR(10),
)

--------------------------------------------------------------

CREATE TABLE STOCKOUT_HDR(

ID VARCHAR(15),
CUSTOMERNAME VARCHAR(30),
BILLNO NUMERIC(18,0) IDENTITY(1,1) NOT NULL,
BILLDATE DATETIME,
TOTALPRICE VARCHAR(15),
PAMENTTYP VARCHAR(10)

)

--------------------------------------------------------------

CREATE TABLE STOCKOUTITEMS(

ID VARCHAR(15),
PRODID VARCHAR(10),
BATCHNO VARCHAR(10),
MFDT DATETIME,
EXPDTD DATETIME,
QUANTITY VARCHAR(10),
PRICE VARCHAR(10)
)

---------------------------------------------------------------

CREATE TABLE PAYABLEAMT(

ID NUMERIC(18,0) IDENTITY(1,1) NOT NULL,
SUPPLIERID VARCHAR(10),
RECEIPTNO VARCHAR(20),
AMOUNT VARCHAR(15),
PAYDATE DATETIME,
RECEIPTNAME VARCHAR(20),
PAYMENTTYP VARCHAR(10)

)
