--DROP TABLE transaction_records;
--DROP TABLE accounts;
--DROP SEQUENCE seq_record_no;


CREATE TABLE accounts(
    account_number  varchar2(25)    ,
    password        varchar2(255)    NOT NULL,
    balance         number          DEFAULT 0,
    CONSTRAINT accounts_pk PRIMARY KEY(account_number)
);

COMMENT ON TABLE accounts IS '은행 내부의 계좌목록';
COMMENT ON COLUMN accounts.account_number IS '계좌번호';
COMMENT ON COLUMN accounts.password IS '계좌 비밀번호';
COMMENT ON COLUMN accounts.balance IS '잔고';

CREATE TABLE transaction_records(
    record_no       number  DEFAULT -1,
    deposit         NUMBER  DEFAULT 0,
    record_date     timestamp    NOT NULL,
    account_number  varchar2(25) NOT null,
    CONSTRAINT transaction_records_pk PRIMARY KEY(record_no),
    CONSTRAINT transaction_records_fk FOREIGN KEY(account_number) REFERENCES accounts(account_number)
);

CREATE SEQUENCE seq_record_no START with 1 INCREMENT BY 1 ORDER;

COMMENT ON TABLE transaction_records IS '거래내역(은행)';
COMMENT ON COLUMN transaction_records.record_no IS '기록 번호';
COMMENT ON COLUMN transaction_records.deposit IS '입출금액';
COMMENT ON COLUMN transaction_records.record_date IS '날짜';
COMMENT ON COLUMN transaction_records.account_number IS 'account_number';

--ALTER TABLE TRANSACTION_RECORDS modify(record_date timestamp);

ALTER TABLE transaction_records ADD company varchar2(100);
COMMENT ON COLUMN transaction_records.company IS '거래한 업체명';