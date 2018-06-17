DROP TABLE IF EXISTS rabdulov.top_categories;

CREATE TABLE rabdulov.top_categories (
  product_category VARCHAR(255) NOT NULL,
  cnt INT NULL
  -- PRIMARY KEY (category),
  -- UNIQUE INDEX Category_UNIQUE (category ASC)
);

DROP TABLE IF EXISTS rabdulov.top_products_per_category;

CREATE TABLE rabdulov.top_products_per_category (
  product_category VARCHAR(255) NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  cnt INT NULL
  -- PRIMARY KEY (product_name, product_category)
);

DROP TABLE IF EXISTS rabdulov.top_countries;

CREATE TABLE rabdulov.top_countries (
  country VARCHAR(255) NOT NULL,
  money_spent FLOAT NULL
  -- PRIMARY KEY (country)
);
