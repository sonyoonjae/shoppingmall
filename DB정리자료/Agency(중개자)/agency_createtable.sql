CREATE TABLE users(
    user_id     varchar2(25),
    email       varchar2(40),
    password    varchar2(255),
    first_name  varchar2(20),
    last_name   varchar2(20),
    CONSTRAINT users_pk PRIMARY key(user_id)
);

COMMENT ON TABLE users IS '사용자 목록';
COMMENT ON COLUMN users.user_id IS '사용자 아이디';
COMMENT ON COLUMN users.email IS '사용자 이메일';
COMMENT ON COLUMN users.password IS '사용자 비밀번호';
COMMENT ON COLUMN users.first_name IS '이름';
COMMENT ON COLUMN users.last_name IS '성';

CREATE table transaction_records(
	record_no	NUMBER,
	price			NUMBER 		DEFAULT 0,
	record_date	timestamp 		NOT null,
	user_id		varchar2(25)		NOT NULL,
	account_number	varchar2(25)		NOT NULL,
	CONSTRAINT transaction_records_pk PRIMARY key(record_no),
	CONSTRAINT transaction_records_fk FOREIGN key(user_id) REFERENCES users(user_id)
);

CREATE SEQUENCE seq_record_no START WITH 1 INCREMENT BY 1 ORDER;

COMMENT ON TABLE transaction_records IS '거래내역(중개 서비스 측)';
COMMENT ON COLUMN transaction_records.record_no IS '기록 번호';
COMMENT ON COLUMN transaction_records.price IS '결제 금액';
COMMENT ON COLUMN transaction_records.record_date IS '날짜';
COMMENT ON COLUMN transaction_records.user_id IS '사용자 아이디';
COMMENT ON COLUMN transaction_records.account_number IS '계좌번호';

CREATE TABLE banks(
	bank_id	NUMBER,
	bank_name	varchar2(25),
	CONSTRAINT banks_pk PRIMARY KEY(bank_id)
);

CREATE SEQUENCE seq_bank_id START WITH 1 INCREMENT BY 1 ORDER;
COMMENT ON TABLE banks IS '은행 목록';
COMMENT ON COLUMN banks.bank_id IS '은행 식별용 아이디';
COMMENT ON COLUMN banks.bank_name IS '은행명';

CREATE TABLE accounts(
	account_number	varchar2(25),
	bank_id				NUMBER		NOT NULL,
	user_id				varchar2(25)	NOT NULL,
	CONSTRAINT accounts_pk PRIMARY key(account_number),
	CONSTRAINT accounts_fk_bankid FOREIGN key(bank_id) REFERENCES banks(bank_id),
	CONSTRAINT accounts_fk_userid FOREIGN key(user_id) REFERENCES users(user_id)
);

COMMENT ON TABLE accounts IS '계좌 목록';
COMMENT ON COLUMN accounts.account_number IS '계좌번호';
COMMENT ON COLUMN accounts.bank_id IS '은행 식별용 아이디';
COMMENT ON COLUMN accounts.user_id IS '사용자 아이디';
