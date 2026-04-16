-- Drop table if it already exists (prevents errors)
DROP TABLE IF EXISTS social_profiles;

-- Create table
CREATE TABLE social_profiles (
    id SERIAL PRIMARY KEY,
    platform VARCHAR(50) NOT NULL,
    display_name VARCHAR(100) NOT NULL,
    username VARCHAR(100) UNIQUE NOT NULL,
    profile_type VARCHAR(50),
    city VARCHAR(50),
    province VARCHAR(50),
    country VARCHAR(50),
    joined_date VARCHAR(30),
    followers VARCHAR(20),
    status VARCHAR(50),
    notice TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample profile
INSERT INTO social_profiles (
    platform,
    display_name,
    username,
    profile_type,
    city,
    province,
    country,
    joined_date,
    followers,
    status,
    notice
) VALUES (
    'Facebook',
    'YandahMadide',
    'ayandah_madide',
    'Digital Creator',
    'Centurion',
    'Gauteng',
    'South Africa',
    'December 2012',
    '1.2K',
    'Confirmed link',
    'Facebook is showing information to help you understand the purpose of this profile'
);

-- View inserted data
SELECT * FROM social_profiles;
