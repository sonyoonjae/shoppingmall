CREATE TABLE products(
    product_no  NUMBER,
    product_name    varchar2(100),
    price       NUMBER,
    image_link  varchar2(255),
    CONSTRAINT products_pk PRIMARY KEY(product_no)
);

CREATE SEQUENCE seq_product_no START WITH 1 INCREMENT BY 1 ORDER;

COMMENT ON TABLE products IS '제품 목록';
COMMENT ON COLUMN products.product_no IS '제품 고유번호';
COMMENT ON COLUMN products.product_name IS '제품명';
COMMENT ON COLUMN products.price IS '가격';
COMMENT ON COLUMN products.image_link IS '이미지 링크';